package controller.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DBConnection;

import bean.AccessBean;

/**
 * Servlet implementation class DeptAboutDelete
 */
@WebServlet("/dir1/DeptAboutDelete")
public class DeptAboutDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isUGC_BSR())
		{
			Connection con = null;
			PreparedStatement pst=null;
			try
			{
				con = DBConnection.createConnection();
				
				  
				  int id=Integer.parseInt(request.getParameter("id"));
				         pst=con.prepareStatement("delete from depthome where daid=?");
					
						     pst.setInt(1,id);
						     pst.executeUpdate();
						     
						    /* pst=con.prepareStatement("delete from depthomeDel where daid=?");
								
						     pst.setInt(1,id);
						     pst.executeUpdate();*/
						     
						     System.out.println("inside Dao");
			    	 
					
					con.close();
					
				
					response.sendRedirect("DeptAboutController");
				
			}
			catch(Exception e)
	        {
				
					e.printStackTrace();
			
				
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
		
	}

}
