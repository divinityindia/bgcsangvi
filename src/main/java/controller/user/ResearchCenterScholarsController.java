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
import model.ResearchCenterDao;

/**
 * Servlet implementation class ResearchCenterScholarsController
 */
@WebServlet("/dir1/ResearchCenterScholarsController")
public class ResearchCenterScholarsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isResearch()){
			try
			{
			   ResearchCenterDao dao=new ResearchCenterDao();
			   request.setAttribute("rsdtls", dao.getAllResCentScholars());
			   
			   RequestDispatcher rd=request.getRequestDispatcher("ResearchCenterScholars.jsp");
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

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isResearch())
		{
			try
			{
		    	String dpnm=request.getParameter("deptid");
		    	String dtls=request.getParameter("area");
		    	
		    	ResearchCenterDao dao=new ResearchCenterDao();
		    	dao.addResCenterScholars(dpnm, dtls);
		    	
		    	session.setAttribute("erMsg", "Research Center Scholars Added Successfully....");
		    	response.sendRedirect("ResearchCenterScholarsController");
		    	
			
			}
			catch(Exception e)
	        {
				System.out.println("error= "+e);
	            out.print(e);
	            e.printStackTrace();
	        }
		}
		else{
			response.sendRedirect("home.jsp");
		}
	}


}
