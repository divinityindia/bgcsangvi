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
 * Servlet implementation class DeleteAluminiFDReport
 */
@WebServlet("/dir1/DeleteAluminiFDReport")
public class DeleteAluminiFDReport extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isDaily_Report()){
			try
			{
				int afid=Integer.parseInt(request.getParameter("afid"));
				AluminiFeedbackDao dao=new AluminiFeedbackDao();
				 dao.deleteAluFDReportById(afid);
				request.setAttribute("afdtls", dao.getAllAluFeedback());
				 out.print("FeedBack Deleted Suceessfully....");
			
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
