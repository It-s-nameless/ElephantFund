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
import jdbc.FundService;

/**
 * Servlet implementation class Fund
 */
@WebServlet("/AdmFund")
public class AdmFund extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();

		request.setAttribute("nav_item", "AdmFund");
		
		List<FundEntity> funds1 = FundService.getAdmFunds("1");
		List<FundEntity> funds2 = FundService.getAdmFunds("2");
		List<FundEntity> funds3 = FundService.getAdmFunds("3");
		
		SimpleDateFormat sdf = new SimpleDateFormat("MM-dd");
		String date = sdf.format(new Date());

		request.setAttribute("date", date);
		request.setAttribute("funds1", funds1);
		request.setAttribute("funds2", funds2);
		request.setAttribute("funds3", funds3);
		
		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/jsp/admFund.jsp");

		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
