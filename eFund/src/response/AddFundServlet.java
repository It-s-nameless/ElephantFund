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
@WebServlet("/AddFundServlet")
public class AddFundServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		HttpSession session = request.getSession();
		
		String fname = request.getParameter("fname");
		String fnum = request.getParameter("fnum");
		String frate = request.getParameter("frate");
		String fmanager = request.getParameter("fmanager");
		String ftype = request.getParameter("ftype");
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String fstart = sdf.format(new Date());
		
		String ftext = request.getParameter("ftext");
		int fbuy =  Integer.parseInt(request.getParameter("fbuy"));
		
		BigDecimal fbuyrate =  new BigDecimal(request.getParameter("fbuyrate"));
		
		FundService.addFund(fname, fnum, frate, fmanager, fbuy, fbuyrate, ftype, fstart, ftext);
		
		request.getRequestDispatcher("AdmFund").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
