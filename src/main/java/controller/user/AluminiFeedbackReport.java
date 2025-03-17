package controller.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.AccessBean;
import model.AluminiFeedbackDao;

/**
 * Servlet implementation class AluminiFeedbackReport
 */
@WebServlet("/dir1/AluminiFeedbackReport")
public class AluminiFeedbackReport extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isDaily_Report()){
			try
			{
				AluminiFeedbackDao dao=new AluminiFeedbackDao();
				request.setAttribute("afdtls", dao.getAllAluFeedback());
				RequestDispatcher rd=request.getRequestDispatcher("AluminiFeedbackReport.jsp");
				rd.forward(request, response);

			}
			catch(Exception e)
	        {
				System.out.println("error= "+e);
	            out.print(e);
	        }
		}
		else{
			response.sendRedirect("home.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isDaily_Report()){
			try
			{
				AluminiFeedbackDao dao=new AluminiFeedbackDao();
				request.setAttribute("afdtls", dao.getAllAluFeedback());
				RequestDispatcher rd=request.getRequestDispatcher("AluminiFeedbackReportExcel.jsp");
				rd.forward(request, response);

			}
			catch(Exception e)
	        {
				System.out.println("error= "+e);
	            out.print(e);
	        }
		}
		else{
			response.sendRedirect("home.jsp");
		}
	}

}
