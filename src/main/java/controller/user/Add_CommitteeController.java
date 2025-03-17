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
 * Servlet implementation class Add_CommitteeController
 */
@WebServlet("/dir1/Add_CommitteeController")
public class Add_CommitteeController extends HttpServlet {
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
				request.getRequestDispatcher("Add_Committee.jsp").forward(request, response);
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
				String caption=request.getParameter("caption");
				ActivityDao dao=new ActivityDao();
				dao.addCommittee(caption);
				
				session.setAttribute("erMsg", "Committee Added Successfully....");
				response.sendRedirect("Add_CommitteeController");
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
