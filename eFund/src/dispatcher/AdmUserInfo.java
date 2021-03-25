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

import entity.UserEntity;
import entity.WareEntity;
import jdbc.UserService;
import jdbc.WareService;

/**
 * Servlet implementation class Fund
 */
@WebServlet("/AdmUserInfo")
public class AdmUserInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();

		request.setAttribute("nav_item", "AdmUser");
		
		String uname = request.getParameter("uname");
		UserEntity user = UserService.findUserByUname(uname);
		
		List<WareEntity> wares = WareService.getUserWare(uname);
		
		request.setAttribute("user", user);
		request.setAttribute("wares", wares);
		
		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/jsp/admUserInfo.jsp");

		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
