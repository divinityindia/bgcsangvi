package controller.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.AccessBean;
import bean.FeedbackSystem;
import model.FeedbackDao2;

/**
 * Servlet implementation class enabledisablefeedback
 */
@WebServlet("/dir1/enabledisablefeedback")
public class enabledisablefeedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session=request.getSession(false);
		AccessBean bean=(AccessBean)session.getAttribute("right");

			if(bean.isDaily_Report())
			{
				FeedbackDao2 dao=new FeedbackDao2();
				try{
					int result = dao.enableDisableFeedback();
					if(result!=0)
					{
						response.sendRedirect("feedbackmaster?fstatus=1");
					}
					else
					{
						response.sendRedirect("feedbackmaster?fstatus=0");
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



protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session=request.getSession(false);
		AccessBean bean=(AccessBean)session.getAttribute("right");


				FeedbackDao2 dao=new FeedbackDao2();
				try{
					boolean studentcollege=request.getParameter("studentcollege") != null;
					boolean studentteaching=request.getParameter("studentteaching") != null;
					boolean studentlibrary=request.getParameter("studentlibrary") != null;
					boolean studentalumini=request.getParameter("studentalumini") != null;
					boolean studentsports=request.getParameter("studentsports") != null;
					boolean parentcollege=request.getParameter("parentcollege") != null;
					boolean employeremployee=request.getParameter("employeremployee") != null;
					boolean teachercollege=request.getParameter("teachercollege") != null;

					int result = dao.updateFeedbackSystem(new FeedbackSystem(studentcollege, studentteaching, studentlibrary, studentalumini, studentsports, parentcollege, employeremployee, teachercollege));
					if(result!=0)
					{
						response.sendRedirect("feedbackmaster?fsystem=1");
					}
					else
					{
						response.sendRedirect("feedbackmaster?fsystem=0");
					}
				}
				catch(Exception ex){

					ex.printStackTrace();
					response.sendRedirect("feedbackmaster?success=3");

				}

	}

}
