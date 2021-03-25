package dispatcher;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

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
 * Servlet implementation class Index
 */
@WebServlet("/AdmUpdateFund")
public class AdmUpdateFund extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();

		request.setAttribute("nav_item", "AdmFund");
		
		String fnum = request.getParameter("fnum");
		FundEntity fund = FundService.findFundByFnum(fnum);
		
		request.setAttribute("fund", fund);
		
		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/jsp/admUpdateFund.jsp");

		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
