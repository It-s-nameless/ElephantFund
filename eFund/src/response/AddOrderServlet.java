package response;

import java.io.IOException;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.FundEntity;
import entity.OrderEntity;
import entity.UserEntity;
import entity.WareEntity;
import jdbc.FundService;
import jdbc.OrderService;
import jdbc.UserService;
import jdbc.WareService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/AddOrderServlet")
public class AddOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		HttpSession session = request.getSession();
		
		String fnum = request.getParameter("fnum");
		FundEntity fund = FundService.findFundByFnum(fnum);
		
		String fname = fund.getFname();
		String ofnum = fund.getFnum();
		int fid = fund.getFid();
		
		BigDecimal oprice = new BigDecimal(request.getParameter("fprice"));
		BigDecimal orate = fund.getFbuyrate();

		String ofname = fname;
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String otime = sdf.format(new Date());
		
		String otype = request.getParameter("otype");	
		
		int flag = 1;
		if(otype.equals("0")) 
		{
			flag = 0;
			otype = "卖出";
		}
		
		String uname = request.getParameter("uname");
		
		if(uname.equals("null"))
		{
			String nextAddr = "/FundPay?fnum="+fnum;

			request.setAttribute("info", "请先登录再进行操作.");
			
			session.setAttribute("nextaddr", nextAddr);
			
			request.getRequestDispatcher("Login").forward(request, response);
		}
		else
		{
			int row = OrderService.insertOrder(ofnum,oprice,orate,ofname,otime,otype,uname);
			
			if(row>0)
			{	
				OrderEntity order = OrderService.findOrderByOtime(otime);
				UserEntity user = UserService.findUserByUname(uname);
				
				BigDecimal money = user.getMoney();
				if(flag == 0)
				{
					money = money.add(oprice);
					
					WareService.deleteWare(uname, ofnum);
				}
				else
				{
					money = money.subtract(oprice);
					
					WareEntity ware = WareService.findWareByUnameFnum(uname, ofnum);
					
					if(ware == null)
					{
						WareService.insertWare(uname, ofnum, oprice);
					}
					else
					{
						BigDecimal wprice = ware.getWprice().add(oprice);
						
						WareService.updatePrice(uname, ofnum, wprice);	
					}
				}
				
				UserService.updateMoney(uname, money);
				
				user = UserService.findUserByUname(uname);
				
				session.removeAttribute("user");
				session.setAttribute("user", user);

				request.getRequestDispatcher("UserCenter").forward(request, response);	
			}
			else
			{
				request.setAttribute("info", "订单交易异常,请重试.");
				
				//ת��
				String reDis = "FundPay?fname=" + fname;
				request.getRequestDispatcher(reDis).forward(request, response);
			}	
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
