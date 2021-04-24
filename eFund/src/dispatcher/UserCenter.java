package dispatcher;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
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
import jdbc.WareService;

/**
 * Servlet implementation class Fund
 */
@WebServlet("/UserCenter")
public class UserCenter extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setAttribute("nav_item", "About");
		
		HttpSession session = request.getSession();
		UserEntity user = (UserEntity) session.getAttribute("user");

		RequestDispatcher rd = null;
		
		if(user == null)
		{
			request.setAttribute("info", "登陆之后才能进行相应操作.");
			
			rd = request.getRequestDispatcher("Login");
		}
		else
		{
			String uname = user.getUname();
			
			List<WareEntity> uware = WareService.getUserWare(uname);
			
			request.setAttribute("uware", uware);
			
			rd = request.getRequestDispatcher("WEB-INF/jsp/userCenter.jsp");
		}
		
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
