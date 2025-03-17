package contriller.Home;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.FeedbackBean;
import bean.FeedbackSystem;
import model.FeedbackDao2;

/**
 * Servlet implementation class studentfeedback
 */
@WebServlet("/studentfeedback")
public class studentfeedback extends HttpServlet {
	private static final long serialVersionUID = 1L;

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {

    		FeedbackDao2 dao=new FeedbackDao2();
    		FeedbackSystem fsystem=dao.getFeedbackSystemStatus();
    		FeedbackBean feedback=dao.getCurrentFeedback();
    		request.setAttribute("feedback", feedback);
    		if(fsystem.isStatus()){
    			if(fsystem.isStudentcollege()){
    				request.setAttribute("fsystem", fsystem);
    				request.getRequestDispatcher("fstudent.jsp").forward(request, response);
    			}
    			else{
    				request.setAttribute("type", "Student - About College Feedback");
    				request.getRequestDispatcher("disabledfeedback.jsp").forward(request, response);
    			}
    		}
    		else{
    			request.getRequestDispatcher("disabledfeedback.jsp").forward(request, response);
    		}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
