package controller.user;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.AccessBean;
import bean.FeedbackBean;
import bean.FeedbackSystem;
import model.FeedbackDao2;

/**
 * Servlet implementation class feedbackmaster
 */
@WebServlet("/dir1/feedbackmaster")
public class feedbackmaster extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try
		{
			FeedbackDao2 dao=new FeedbackDao2();
			ArrayList<FeedbackBean> list=dao.getFeedbackList();
			FeedbackSystem system=dao.getFeedbackSystemStatus();
			request.setAttribute("system", system);
			request.setAttribute("list", list);
	    	request.getRequestDispatcher("feedbackmaster.jsp").forward(request, response);
		}
		catch(Exception e)
		{
			e.printStackTrace();
			response.sendRedirect("feedbackmaster.jsp?success=3");
		}

	}

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session=request.getSession(false);
		AccessBean bean=(AccessBean)session.getAttribute("right");

				String formAction=request.getParameter("formaction");
				FeedbackDao2 dao=new FeedbackDao2();
				try{

					if(formAction.equals("add"))
					{
						String name=request.getParameter("name");
						String duration=request.getParameter("duration");
						int result = dao.addFeedback(new FeedbackBean(name, duration, false));
						if(result==1)
						{
							response.sendRedirect("feedbackmaster?success=1");
						}
						else
						{
							response.sendRedirect("feedbackmaster?success=0");
						}
					}
					else if(formAction.equals("edit"))
					{
						String name=request.getParameter("name");
						String duration=request.getParameter("duration");
						int fid=Integer.parseInt(request.getParameter("id"));
						int result = dao.updateFeedback(new FeedbackBean(fid, name, duration));
						if(result==1)
						{
							response.sendRedirect("feedbackmaster?success=4");
						}
						else
						{
							response.sendRedirect("feedbackmaster?success=5");
						}
					}
				}
				catch(Exception ex){

					ex.printStackTrace();
					response.sendRedirect("feedbackmaster?success=3");

				}
	}

}
