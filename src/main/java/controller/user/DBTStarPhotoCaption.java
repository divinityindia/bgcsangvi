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
import model.DBTStarPhotoCaptionDao;
import model.DbtStarNoticesDao;

/**
 * Servlet implementation class DBTStarPhotoCaption
 */
@WebServlet("/dir1/DBTStarPhotoCaption")
public class DBTStarPhotoCaption extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isDBT_STAR())
		{
			try
			{
				DBTStarPhotoCaptionDao dao=new DBTStarPhotoCaptionDao();
				request.setAttribute("dbtdtl", dao.getAllCaption());
				request.getRequestDispatcher("DBTStarPhotoCaption.jsp").forward(request, response);
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
		if(bean.isDBT_STAR())
		{
			try
			{
				String caption=request.getParameter("caption");
				DBTStarPhotoCaptionDao dao=new DBTStarPhotoCaptionDao();
				int id=dao.addCaption(caption);
				response.sendRedirect("DBTStarPhotoCaption");
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
