package contriller.Home;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DbtStarNoticesDao;

/**
 * Servlet implementation class DBTStarCollege
 */
@WebServlet("/DBTStarCollege")
public class DBTStarCollege extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try 
		{
			String type=request.getParameter("type");
			System.out.println("Type==>"+type);
			if(type.equals("DBTStarCollege"))
			{
				System.out.println("Type===>"+type);
				RequestDispatcher rd=request.getRequestDispatcher("DBTStarCollege.jsp");
				rd.forward(request, response);
			}
			/*
			 * else if (type.equals("Annualreports")) { System.out.println("Type===>"+type);
			 * RequestDispatcher rd=request.getRequestDispatcher("DBTStarCollege.jsp");
			 * rd.forward(request, response); }
			 */
			else if (type.equals("Advisorycommitteemeetingminutes"))
			{
				System.out.println("Type===>"+type);
				RequestDispatcher rd=request.getRequestDispatcher("Advisorycommitteemeetingminutes.jsp");
				rd.forward(request, response);
			}
			else if (type.equals("Notices"))
			{
				System.out.println("Type===>"+type);
				
				DbtStarNoticesDao dao=new DbtStarNoticesDao();
				request.setAttribute("dbtdtl",dao.getAllDBTStarNotices());
				RequestDispatcher rd=request.getRequestDispatcher("DBTStarCollegeNotices.jsp");
				rd.forward(request, response);
			}
			else if (type.equals("Activities"))
			{
				System.out.println("Type===>"+type);
				RequestDispatcher rd=request.getRequestDispatcher("DBTStarCollegeActivities.jsp");
				rd.forward(request, response);
			}
			else if (type.equals("Photogallery"))
			{
				System.out.println("Type===>"+type);
				RequestDispatcher rd=request.getRequestDispatcher("DBTStarCollege.jsp");
				rd.forward(request, response);
				
			}
			else
			{
				System.out.println("Last Else Block");
			}
			
		}
		catch (Exception e) 
		{
           e.printStackTrace();
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
	}

}
