package controller.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.FeedbackBean;
import model.FeedbackDao2;

/**
 * Servlet implementation class freportmaster
 */
@WebServlet("/dir1/freportmaster")
public class freportmaster extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try
		{
			int fid=Integer.parseInt(request.getParameter("fid"));
			FeedbackDao2 dao=new FeedbackDao2();
			FeedbackBean feedback=dao.getFeedback(fid);
			request.setAttribute("feedback", feedback);
	    	request.getRequestDispatcher("freportmaster.jsp").forward(request, response);
		}
		catch(Exception e)
		{
			e.printStackTrace();
			response.sendRedirect("freportmaster.jsp?success=3");
		}

	}

}
