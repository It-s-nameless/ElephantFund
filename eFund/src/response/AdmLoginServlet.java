package response;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.AdminEntity;
import entity.UserEntity;
import jdbc.AdminService;
import jdbc.UserService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/AdmLoginServlet")
public class AdmLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String aname = request.getParameter("aname");
		String apass = request.getParameter("apass");
//		String ucode = request.getParameter("ucode");
		
		//获取用户的会话对象
		HttpSession session = request.getSession();

		AdminEntity admin = AdminService.login(aname, apass);
		
		if(admin != null)
		{
			session.setAttribute("admin", admin);
			
			//转发
			request.getRequestDispatcher("AdmFund").forward(request, response);
			
		}
		else
		{
			request.setAttribute("info", "用户名或密码错误，请重新输入！");
			
			//转发
			request.getRequestDispatcher("AdmLogin").forward(request, response);
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
