package controller.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.AccessBean;
import model.FeedbackDao2;

/**
 * Servlet implementation class deletefeedback
 */
@WebServlet("/dir1/deletefeedback")
public class deletefeedback extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session=request.getSession(false);
		AccessBean bean=(AccessBean)session.getAttribute("right");


			if(bean.isDaily_Report())
			{
				FeedbackDao2 dao=new FeedbackDao2();
				try{

					int fid=Integer.parseInt(request.getParameter("fid"));

					int result = dao.deleteFeedback(fid);
					if(result==1)
					{
						response.sendRedirect("feedbackmaster?success=1");
					}
					else
					{
						response.sendRedirect("feedbackmaster?success=0");
					}
				}
				catch(Exception ex){

					ex.printStackTrace();
					response.sendRedirect("feedbackmaster?success=3");

				}
			}

			else
			{
				response.sendRedirect("home.jsp");
			}

	}

}
