package controller.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DBConnection;

import bean.AccessBean;
import bean.DeptAbout;
import model.DeptAboutDao;
import model.DeptDao;

/**
 * Servlet implementation class DeptAboutDtlController
 */
@WebServlet("/dir1/DeptAboutDtlController")
public class DeptAboutDtlController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isUser())
		{
			try
			{
               int id=Integer.parseInt(request.getParameter("id"));
               int did=Integer.parseInt(request.getParameter("did"));
               String dnm=request.getParameter("dnm");
				
				System.out.println("GGGGG"+id+" "+did);
				RequestDispatcher rd=request.getRequestDispatcher("DeptAboutDtl.jsp");
				request.setAttribute("did", id);
				request.setAttribute("id",did);
				request.setAttribute("dnm",dnm);
				rd.forward(request, response);
				
				 
			}
			catch(Exception e)
	        {
				e.printStackTrace();
			/*	System.out.println("error= "+e);
	            out.print(e);*/
	        }
		}
		else{
			response.sendRedirect("home.jsp");
		}
		
		
		
	}

	
	

}
