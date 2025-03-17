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
import model.FeedBkDao;

/**
 * Servlet implementation class DeleteFeedBackReport
 */
@WebServlet("/dir1/DeleteFeedBackReport")
public class DeleteFeedBackReport extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isDaily_Report()){
			try
			{
			 RequestDispatcher rd=request.getRequestDispatcher("FeedBackReport.jsp");
			 FeedBkDao dao=new FeedBkDao();
			 int id=Integer.parseInt(request.getParameter("id"));
			 dao.deleteFBWithFile(id);
			 
			 request.setAttribute("dtl",dao.getAllFeedBackReport());
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
		
	}

}
