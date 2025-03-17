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
 * Servlet implementation class Add_CommitteeEventController
 */
@WebServlet("/dir1/Add_CommitteeEventController")
public class Add_CommitteeEventController extends HttpServlet {
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
				ActivityDao dao=new ActivityDao();
				
				request.setAttribute("cmtdtl", dao.getAllCommittee());
				request.setAttribute("evdtls", dao.getAllCmtEvnt());
				request.getRequestDispatcher("Add_CommitteeEvent.jsp").forward(request, response);
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
				ActivityDao dao=new ActivityDao();
				dao.addCmtEvent(cmid, evnm);
				
				session.setAttribute("erMsg", "Event Added Successfully....");
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
