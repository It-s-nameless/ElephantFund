package dispatcher;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.FundEntity;
import entity.UserEntity;
import jdbc.FundService;
import jdbc.UserService;

/**
 * Servlet implementation class Fund
 */
@WebServlet("/AdmUser")
public class AdmUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();

		request.setAttribute("nav_item", "AdmUser");
		
		List<UserEntity> users = UserService.getUserList();
		
		request.setAttribute("users", users);
		
		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/jsp/admUser.jsp");

		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
