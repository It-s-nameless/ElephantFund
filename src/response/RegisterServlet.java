package response;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.UserEntity;
import jdbc.UserService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String uname = request.getParameter("uname");
		String upass = request.getParameter("upass");
		String usex = request.getParameter("usex");
		String birth = request.getParameter("birth");
		String phone = request.getParameter("phone");
		
		HttpSession session = request.getSession();
		
		int row = UserService.signUp(uname, upass, usex, birth, phone);
		
		if(row>0)
		{
			UserEntity user = UserService.findUserByUname(uname);
			
			session.setAttribute("user", user);
			
			request.getRequestDispatcher("Index").forward(request, response);	
		}
		else
		{
			request.setAttribute("info", "注册失败,请重试.");
			
			request.getRequestDispatcher("Register").forward(request, response);
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
