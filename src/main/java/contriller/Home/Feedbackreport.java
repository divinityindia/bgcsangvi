package contriller.Home;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.FeedBkDao;

/**
 * Servlet implementation class Feedbackreport
 */
@WebServlet("/Feedbackreport")
public class Feedbackreport extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try 
		{
			FeedBkDao dao=new FeedBkDao();
			request.setAttribute("dtl",dao.getAllFeedBackReport());
			RequestDispatcher rd=request.getRequestDispatcher("Feedbackreport.jsp");
			rd.forward(request, response);
			
		}
		catch (Exception e) 
		{
           e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
