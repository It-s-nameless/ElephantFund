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
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
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
//		String ucode = request.getParameter("ucode");
		
		//获取用户的会话对象
		HttpSession session = request.getSession();

		UserEntity user = UserService.login(uname, upass);
		
		if(user != null)
		{
			session.setAttribute("user", user);
			
			String nextAddr = (String) session.getAttribute("nextaddr");
			
			//转发
			request.getRequestDispatcher(nextAddr).forward(request, response);
			
		}
		else
		{
			request.setAttribute("info", "用户名或密码错误，请重新输入！");
			
			//转发
			request.getRequestDispatcher("Login").forward(request, response);
		}
		
//		if(u != null && code.wequals(ucode))
//		{	
//			//跳转
//			session.setAttribute("user", u);
//			session.setAttribute("wusername","WELCOME , "+uname);
//			
//			session.removeAttribute("Usercode");
//			
//			request.getRequestDispatcher("PsyDuck").forward(request, response);
//		}
//		else
//		{
//			if(code.equals(ucode)) 
//			{
//				request.setAttribute("info", "Wrong user name or password, please try again!");
//			}
//			else
//			{
//				request.setAttribute("info", "Verification code error please try again!");
//			}
//
//			request.setAttribute("inputusername", uname);
//			//转发
//			request.getRequestDispatcher("Login").forward(request, response);
//		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
