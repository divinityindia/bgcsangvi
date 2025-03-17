package controller.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.AccessBean;
import model.IQMATRDao;

/**
 * Servlet implementation class DeleteIQMATR
 */
@WebServlet("/dir1/DeleteIQMATR")
public class DeleteIQMATR extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isAQAR_Reports())
		{
			try
			{
				IQMATRDao dao=new IQMATRDao();
				
				int id=Integer.parseInt(request.getParameter("id"));
				
				dao.DeleteIqmatr(id);
				request.setAttribute("det",dao.getAllIqmatr());
				
				RequestDispatcher rd=request.getRequestDispatcher("IQMATR.jsp");
				
				
				rd.forward(request, response);
				
			}
			catch(Exception e)
	        {
				System.out.println("error= "+e);
	            e.printStackTrace();
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
