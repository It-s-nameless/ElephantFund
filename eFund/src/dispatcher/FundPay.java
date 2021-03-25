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
import entity.UserEntity;
import jdbc.FundService;

/**
 * Servlet implementation class Fund
 */
@WebServlet("/FundPay")
public class FundPay extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		session.removeAttribute("nextaddr");
		
		String fnum = request.getParameter("fnum");
		FundEntity fund = FundService.findFundByFnum(fnum);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String date = sdf.format(new Date());

		request.setAttribute("date", date);
		
		request.setAttribute("fund", fund);

		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/jsp/fundPay.jsp");

		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
