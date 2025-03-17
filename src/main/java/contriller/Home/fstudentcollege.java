package contriller.Home;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.FStudentCollegeBean;
import bean.FeedbackBean;
import bean.FeedbackSystem;
import model.FeedbackDao2;

/**
 * Servlet implementation class fstudentcollege
 */
@WebServlet("/fstudentcollege")
public class fstudentcollege extends HttpServlet {
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
    				request.getRequestDispatcher("fstudentcollege.jsp").forward(request, response);
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

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {

    		FeedbackDao2 dao=new FeedbackDao2();
    		FeedbackBean feedback=dao.getCurrentFeedback();


    		String f1=request.getParameter("f1");
    		String g1=request.getParameter("g1");
    		String deg=request.getParameter("d1");
    		String course=request.getParameter("course");
    		String age=request.getParameter("age");
    		
    		String q1=request.getParameter("q1");
    		String q2=request.getParameter("q2");
    		String q3=request.getParameter("q3");
    		String q4=request.getParameter("q4");
    		String q5=request.getParameter("q5");
    		String q6=request.getParameter("q6");
    		String q7=request.getParameter("q7");
    		String q8=request.getParameter("q8");
    		String q9=request.getParameter("q9");
    		String q10=request.getParameter("q10");
    		String q11=request.getParameter("q11");
    		String q12=request.getParameter("q12");
    		String q13=request.getParameter("q13");
    		String q14=request.getParameter("q14");
    		String q15=request.getParameter("q15");
    		String q16=request.getParameter("q16");
    		String q17=request.getParameter("q17");
    		String q18=request.getParameter("q18");
    		String q19=request.getParameter("q19");
    		String q20=request.getParameter("q20");
    		String suggestions=request.getParameter("suggestions");


    		int result = dao.submitStudentCollegeFeedbackNew(new FStudentCollegeBean(feedback.getFid(), q1, q2, q3, q4, q5, q6, q7, q8, q9, q10, q11, q12, q13, q14, q15, q16, course,  suggestions, q17, q18, q19, q20, f1, age, g1, deg));
    		if(result!=0){
    			response.sendRedirect("fstudentcollege?success=1");
    		}
    		else{
    			response.sendRedirect("fstudentcollege?success=0");
    		}

		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("fstudentcollege?success=2");
		}

	}

}
