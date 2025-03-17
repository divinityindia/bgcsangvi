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
import model.NirfDao;

/**
 * Servlet implementation class DeleteNirfMaster
 */
@WebServlet("/dir1/DeleteNirfMaster")
public class DeleteNirfMaster extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isAQAR_Reports())
		{
			try
			{
			    NirfDao dao=new NirfDao();
			    int id=Integer.parseInt(request.getParameter("id"));
			    dao.deleteNrifMaster(id);
			    RequestDispatcher rd=request.getRequestDispatcher("CreateNIRFMaster.jsp");
				request.setAttribute("det",dao.getAllNirfMaster());
				
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
		if(bean.isAQAR_Reports())
		{
			try
			{
			    NirfDao dao=new NirfDao();
			    int id=Integer.parseInt(request.getParameter("nmid"));
			    String nmtitle=request.getParameter("nmtitle");
			    
				dao.updateNirfMaster(id, nmtitle);
                response.sendRedirect("CreateNIRFMaster");				
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
