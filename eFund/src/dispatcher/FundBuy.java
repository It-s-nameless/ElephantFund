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
import jdbc.FundService;

/**
 * Servlet implementation class Fund
 */
@WebServlet("/FundBuy")
public class FundBuy extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// ªÒ»°session
		HttpSession session = request.getSession();
		List<FundEntity> funds = FundService.geAlltFunds();
		
		request.setAttribute("nav_item", "FundBuy");
		request.setAttribute("funds", funds);
		
		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/jsp/fundBuy.jsp");

		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
