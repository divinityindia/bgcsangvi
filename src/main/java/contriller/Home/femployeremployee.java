package contriller.Home;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.FEmployerEmployeeBean;
import bean.FeedbackBean;
import bean.FeedbackSystem;
import model.FeedbackDao2;

/**
 * Servlet implementation class femployeremployee
 */
@WebServlet("/femployeremployee")
public class femployeremployee extends HttpServlet {
	private static final long serialVersionUID = 1L;

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {

    		FeedbackDao2 dao=new FeedbackDao2();
    		FeedbackSystem fsystem=dao.getFeedbackSystemStatus();
    		FeedbackBean feedback=dao.getCurrentFeedback();
    		request.setAttribute("feedback", feedback);
    		if(fsystem.isStatus()){
    			if(fsystem.isEmployeremployee()){
    				request.setAttribute("fsystem", fsystem);
    				request.getRequestDispatcher("femployeremployee.jsp").forward(request, response);
    			}
    			else{
    				request.setAttribute("type", "Employer - About Employee");
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

    		String companyname=request.getParameter("conm");
    		String address=request.getParameter("addr");
    		String contact=request.getParameter("cont");
    		String namedesig=request.getParameter("degs");
    		String eml=request.getParameter("eml");

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

//    		String suggestions=request.getParameter("suggestions");


    		int result = dao.submitEmployerEmployeeFeedback(new FEmployerEmployeeBean(feedback.getFid(),companyname,address,contact,namedesig, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10,q11,q12,q13,eml));
    		if(result!=0){
    			response.sendRedirect("femployeremployee?success=1");
    		}
    		else{
    			response.sendRedirect("femployeremployee?success=0");
    		}

		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("femployeremployee?success=2");
		}

	}

}
