package contriller.Home;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.ExaminationSubBean;
import model.ExaminationSubDao;

/**
 * Servlet implementation class ExaminationTabDetails
 */
@WebServlet("/ExaminationTabDetails")
public class ExaminationTabDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try 
		{
			String tab=request.getParameter("subtab");
			System.out.println("Examinataion Sub Tab Name ==>"+tab);
			
			
			ExaminationSubDao dao=new ExaminationSubDao();
			List<ExaminationSubBean> subtablist=null;
			if(tab.equals("Examination Time Table"))
			{
				System.out.println("Inside Examination Time Table Get...");
				
			     subtablist=dao.getAllExamTimeTable();
			     request.setAttribute("head", "Examination Time Table");
			     request.setAttribute("tab", "TimeTable");
			     
			     RequestDispatcher rd=request.getRequestDispatcher("ExaminationTabDetails.jsp");
		            request.setAttribute("subtabdtls", subtablist);
		            rd.forward(request, response);
			}
			else if (tab.equals("Examination Academic Calendar")) 
			{
				System.out.println("Inside Examination Academic Calendar Get...");
				 subtablist=dao.getAllExamAcademicCalender();
			     request.setAttribute("head", "Examination Academic Calender");
			     request.setAttribute("tab", "AcademicCalender");
			     
			     RequestDispatcher rd=request.getRequestDispatcher("ExaminationTabDetails.jsp");
		            request.setAttribute("subtabdtls", subtablist);
		            rd.forward(request, response);
			}
			else if (tab.equals("Examination Notices")) 
			{
				System.out.println("Inside Examination Notices Get...");
				 subtablist=dao.getAllExamNotices();
			     request.setAttribute("head", "Examination Notices");
			     request.setAttribute("tab", "Notices");
			     
			     RequestDispatcher rd=request.getRequestDispatcher("ExaminationTabDetails.jsp");
		            request.setAttribute("subtabdtls", subtablist);
		            rd.forward(request, response);
			}
			else if (tab.equals("Examination Result Summary")) 
			{
				System.out.println("Inside Examination Result Summary Get...");
				 subtablist=dao.getAllExamResultSummary();
			     request.setAttribute("head", "Examination Result Summary");
			     request.setAttribute("tab", "ResultSummary");
			     
			     RequestDispatcher rd=request.getRequestDispatcher("ExaminationTabDetails.jsp");
		            request.setAttribute("subtabdtls", subtablist);
		            rd.forward(request, response);
			}
			else if (tab.equals("Examination Annual Result Report")) 
			{
				System.out.println("Inside Examination Annual Result Report Get...");
				 subtablist=dao.getAllExamAnnualResultReport();
			     request.setAttribute("head", "Examination Annual Result Report");
			     request.setAttribute("tab", "AnnualResultReport");
			     
			     RequestDispatcher rd=request.getRequestDispatcher("ExaminationTabDetails.jsp");
		            request.setAttribute("subtabdtls", subtablist);
		            rd.forward(request, response);
			}
			else
			{
				System.out.println("Inside  Get Method Only...");
			}
			
			
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
