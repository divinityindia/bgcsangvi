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
import model.ActivityDao;

/**
 * Servlet implementation class Delete_CommitteeEventReportController
 */
@WebServlet("/dir1/Delete_CommitteeEventReportController")
public class Delete_CommitteeEventReportController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isGallery()){
			try
			{
				String tab=request.getParameter("tab");
				if(tab.equals("photo"))
				{
					int id=Integer.parseInt(request.getParameter("id"));
					ActivityDao dao=new ActivityDao(); 
					dao.deleteCmtEvntPhotos(id);
					
					System.out.println("Inside Photo....");
					
					session.setAttribute("erMsg", "Committee Event Photo Deleted Successfully....");
					response.sendRedirect("Add_CommitteeEventPhotosController");
				}
				else
				{
					int id=Integer.parseInt(request.getParameter("id"));
					ActivityDao dao=new ActivityDao(); 
					dao.deleteCmtEvntReport(id);
					
					System.out.println("Inside Report....");
					
					session.setAttribute("erMsg", "Committee Event Report Deleted Successfully....");
					response.sendRedirect("Add_CommitteeEventReportController");
				}

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
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
