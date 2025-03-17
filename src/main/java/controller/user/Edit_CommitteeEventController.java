package controller.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.AccessBean;
import model.ActivityDao;

/**
 * Servlet implementation class Edit_CommitteeEventController
 */
@WebServlet("/dir1/Edit_CommitteeEventController")
public class Edit_CommitteeEventController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isGallery())
		{
			try
			{
				int evid=Integer.parseInt(request.getParameter("evid"));
				ActivityDao dao=new ActivityDao();
				dao.deleteCmtEvent(evid);
				session.setAttribute("erMsg", "Event Deleted Successfully....");
				response.sendRedirect("Add_CommitteeEventController");
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

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isGallery())
		{
			try
			{
				String evnm=request.getParameter("evnm");
				int cmid=Integer.parseInt(request.getParameter("cmid"));
				int evid=Integer.parseInt(request.getParameter("evid"));
				ActivityDao dao=new ActivityDao();
				dao.updateCmtEvent(evid, cmid, evnm);
				
				session.setAttribute("erMsg", "Event Updated Successfully....");
				response.sendRedirect("Add_CommitteeEventController");
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
