package controller.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.AccessBean;
import model.ExaminationSubDao;

/**
 * Servlet implementation class DeleteExmnSubTab
 */
@WebServlet("/dir1/DeleteExmnSubTab")
public class DeleteExmnSubTab extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isExam()){
			try
			{
				int esid=Integer.parseInt(request.getParameter("esid"));
				String tab=request.getParameter("tabnm");
				System.out.println("Delete Examinataion Sub Tab Name ==>"+tab+" "+esid);
				
				
				ExaminationSubDao dao=new ExaminationSubDao();
				if(tab.equals("TimeTable"))
				{
					System.out.println("Inside Timetable Get...");
					
					dao.deleteExamTimeTable(esid);
					
				}
				else if (tab.equals("AcademicCalender")) 
				{
					System.out.println("Inside AcademicCalender Get...");
					dao.deleteExamAcademicCalender(esid);
				}
				else if (tab.equals("Notices")) 
				{
					System.out.println("Inside Notices Get...");
					dao.deleteExamNotices(esid);
				}
				else if (tab.equals("ResultSummary")) 
				{
					System.out.println("Inside ResultSummary Get...");
					dao.deleteExamResultSummary(esid);
				}
				else if (tab.equals("AnnualResultReport")) 
				{
					System.out.println("Inside AnnualResultReport Get...");
					dao.deleteExamAnnualResultReport(esid);
				}
				else
				{
					System.out.println("Inside  Get Method Only...");
				}
				session.setAttribute("erMsg", "Examination Document Deleted Successfully");
				response.sendRedirect("ExaminationSubTabController?tabnm="+tab);
			}
			catch(Exception e)
	        {
				System.out.println("error= "+e);
	            
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
