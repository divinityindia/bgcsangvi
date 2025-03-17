package controller.user;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.FStudentCollegeBean;
import bean.FeedbackBean;
import bean.FeedbackReportBean;
import model.FeedbackDao2;

/**
 * Servlet implementation class fstudentcollegereport
 */
@WebServlet("/dir1/fstudentcollegereport")
public class fstudentcollegereport extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try
		{
			int fid=Integer.parseInt(request.getParameter("fid"));
			FeedbackDao2 dao=new FeedbackDao2();
			FeedbackBean feedback=dao.getFeedback(fid);
			request.setAttribute("feedback", feedback);
			HashMap<Integer, FeedbackReportBean> m=dao.getStudentCollegeReport(fid);

			if(m.get(1).getTotal()==0){
				request.getRequestDispatcher("femptyreport.jsp").forward(request, response);
			}else{

				ArrayList<FStudentCollegeBean> list=dao.getStudentCollegeDetailReport(fid);
				request.setAttribute("list", list);

				request.setAttribute("total", m.get(1).getTotal());

				double total=(double)m.get(1).getTotal();
				//Q1
				double q1a1=(double)m.get(1).getA1()/total;
				double q1a2=(double)m.get(1).getA2()/total;
				double q1a3=(double)m.get(1).getA3()/total;
				double q1a4=(double)m.get(1).getA4()/total;
				double q1a5=(double)m.get(1).getA5()/total;

				request.setAttribute("q1a1", q1a1);
				request.setAttribute("q1a2", q1a2);
				request.setAttribute("q1a3", q1a3);
				request.setAttribute("q1a4", q1a4);
				request.setAttribute("q1a5", q1a5);

				//Q2
				double q2a1=(double)m.get(2).getA1()/total;
				double q2a2=(double)m.get(2).getA2()/total;
				double q2a3=(double)m.get(2).getA3()/total;
				double q2a4=(double)m.get(2).getA4()/total;
				double q2a5=(double)m.get(2).getA5()/total;

				request.setAttribute("q2a1", q2a1);
				request.setAttribute("q2a2", q2a2);
				request.setAttribute("q2a3", q2a3);
				request.setAttribute("q2a4", q2a4);
				request.setAttribute("q2a5", q2a5);

				//Q3
				double q3a1=(double)m.get(3).getA1()/total;
				double q3a2=(double)m.get(3).getA2()/total;
				double q3a3=(double)m.get(3).getA3()/total;
				double q3a4=(double)m.get(3).getA4()/total;
				double q3a5=(double)m.get(3).getA5()/total;

				request.setAttribute("q3a1", q3a1);
				request.setAttribute("q3a2", q3a2);
				request.setAttribute("q3a3", q3a3);
				request.setAttribute("q3a4", q3a4);
				request.setAttribute("q3a5", q3a5);

				//Q4
				double q4a1=(double)m.get(4).getA1()/total;
				double q4a2=(double)m.get(4).getA2()/total;
				double q4a3=(double)m.get(4).getA3()/total;
				double q4a4=(double)m.get(4).getA4()/total;
				double q4a5=(double)m.get(4).getA5()/total;

				request.setAttribute("q4a1", q4a1);
				request.setAttribute("q4a2", q4a2);
				request.setAttribute("q4a3", q4a3);
				request.setAttribute("q4a4", q4a4);
				request.setAttribute("q4a5", q4a5);

				//Q5
				double q5a1=(double)m.get(5).getA1()/total;
				double q5a2=(double)m.get(5).getA2()/total;
				double q5a3=(double)m.get(5).getA3()/total;
				double q5a4=(double)m.get(5).getA4()/total;
				double q5a5=(double)m.get(5).getA5()/total;

				request.setAttribute("q5a1", q5a1);
				request.setAttribute("q5a2", q5a2);
				request.setAttribute("q5a3", q5a3);
				request.setAttribute("q5a4", q5a4);
				request.setAttribute("q5a5", q5a5);

				//Q6
				double q6a1=(double)m.get(6).getA1()/total;
				double q6a2=(double)m.get(6).getA2()/total;
				double q6a3=(double)m.get(6).getA3()/total;
				double q6a4=(double)m.get(6).getA4()/total;
				double q6a5=(double)m.get(6).getA5()/total;

				request.setAttribute("q6a1", q6a1);
				request.setAttribute("q6a2", q6a2);
				request.setAttribute("q6a3", q6a3);
				request.setAttribute("q6a4", q6a4);
				request.setAttribute("q6a5", q6a5);

				//Q7
				double q7a1=(double)m.get(7).getA1()/total;
				double q7a2=(double)m.get(7).getA2()/total;
				double q7a3=(double)m.get(7).getA3()/total;
				double q7a4=(double)m.get(7).getA4()/total;
				double q7a5=(double)m.get(7).getA5()/total;

				request.setAttribute("q7a1", q7a1);
				request.setAttribute("q7a2", q7a2);
				request.setAttribute("q7a3", q7a3);
				request.setAttribute("q7a4", q7a4);
				request.setAttribute("q7a5", q7a5);

				//Q8
				double q8a1=(double)m.get(8).getA1()/total;
				double q8a2=(double)m.get(8).getA2()/total;
				double q8a3=(double)m.get(8).getA3()/total;
				double q8a4=(double)m.get(8).getA4()/total;
				double q8a5=(double)m.get(8).getA5()/total;

				request.setAttribute("q8a1", q8a1);
				request.setAttribute("q8a2", q8a2);
				request.setAttribute("q8a3", q8a3);
				request.setAttribute("q8a4", q8a4);
				request.setAttribute("q8a5", q8a5);

				//Q9
				double q9a1=(double)m.get(9).getA1()/total;
				double q9a2=(double)m.get(9).getA2()/total;
				double q9a3=(double)m.get(9).getA3()/total;
				double q9a4=(double)m.get(9).getA4()/total;
				double q9a5=(double)m.get(9).getA5()/total;

				request.setAttribute("q9a1", q9a1);
				request.setAttribute("q9a2", q9a2);
				request.setAttribute("q9a3", q9a3);
				request.setAttribute("q9a4", q9a4);
				request.setAttribute("q9a5", q9a5);

				//Q10
				double q10a1=(double)m.get(10).getA1()/total;
				double q10a2=(double)m.get(10).getA2()/total;
				double q10a3=(double)m.get(10).getA3()/total;
				double q10a4=(double)m.get(10).getA4()/total;
				double q10a5=(double)m.get(10).getA5()/total;

				request.setAttribute("q10a1", q10a1);
				request.setAttribute("q10a2", q10a2);
				request.setAttribute("q10a3", q10a3);
				request.setAttribute("q10a4", q10a4);
				request.setAttribute("q10a5", q10a5);

				//Q11
				double q11a1=(double)m.get(11).getA1()/total;
				double q11a2=(double)m.get(11).getA2()/total;
				double q11a3=(double)m.get(11).getA3()/total;
				double q11a4=(double)m.get(11).getA4()/total;
				double q11a5=(double)m.get(11).getA5()/total;

				request.setAttribute("q11a1", q11a1);
				request.setAttribute("q11a2", q11a2);
				request.setAttribute("q11a3", q11a3);
				request.setAttribute("q11a4", q11a4);
				request.setAttribute("q11a5", q11a5);

				//Q12
				double q12a1=(double)m.get(12).getA1()/total;
				double q12a2=(double)m.get(12).getA2()/total;
				double q12a3=(double)m.get(12).getA3()/total;
				double q12a4=(double)m.get(12).getA4()/total;
				double q12a5=(double)m.get(12).getA5()/total;

				request.setAttribute("q12a1", q12a1);
				request.setAttribute("q12a2", q12a2);
				request.setAttribute("q12a3", q12a3);
				request.setAttribute("q12a4", q12a4);
				request.setAttribute("q12a5", q12a5);

				//Q13
				double q13a1=(double)m.get(13).getA1()/total;
				double q13a2=(double)m.get(13).getA2()/total;
				double q13a3=(double)m.get(13).getA3()/total;
				double q13a4=(double)m.get(13).getA4()/total;
				double q13a5=(double)m.get(13).getA5()/total;

				request.setAttribute("q13a1", q13a1);
				request.setAttribute("q13a2", q13a2);
				request.setAttribute("q13a3", q13a3);
				request.setAttribute("q13a4", q13a4);
				request.setAttribute("q13a5", q13a5);

				//Q14
				double q14a1=(double)m.get(14).getA1()/total;
				double q14a2=(double)m.get(14).getA2()/total;
				double q14a3=(double)m.get(14).getA3()/total;
				double q14a4=(double)m.get(14).getA4()/total;
				double q14a5=(double)m.get(14).getA5()/total;

				request.setAttribute("q14a1", q14a1);
				request.setAttribute("q14a2", q14a2);
				request.setAttribute("q14a3", q14a3);
				request.setAttribute("q14a4", q14a4);
				request.setAttribute("q14a5", q14a5);

				//Q15
				double q15a1=(double)m.get(15).getA1()/total;
				double q15a2=(double)m.get(15).getA2()/total;
				double q15a3=(double)m.get(15).getA3()/total;
				double q15a4=(double)m.get(15).getA4()/total;
				double q15a5=(double)m.get(15).getA5()/total;

				request.setAttribute("q15a1", q15a1);
				request.setAttribute("q15a2", q15a2);
				request.setAttribute("q15a3", q15a3);
				request.setAttribute("q15a4", q15a4);
				request.setAttribute("q15a5", q15a5);

				//Q16
				double q16a1=(double)m.get(16).getA1()/total;
				double q16a2=(double)m.get(16).getA2()/total;
				double q16a3=(double)m.get(16).getA3()/total;
				double q16a4=(double)m.get(16).getA4()/total;
				double q16a5=(double)m.get(16).getA5()/total;

				request.setAttribute("q16a1", q16a1);
				request.setAttribute("q16a2", q16a2);
				request.setAttribute("q16a3", q16a3);
				request.setAttribute("q16a4", q16a4);
				request.setAttribute("q16a5", q16a5);
				//Q17
				double q17a1=(double)m.get(17).getA1()/total;
				double q17a2=(double)m.get(17).getA2()/total;
				double q17a3=(double)m.get(17).getA3()/total;
				double q17a4=(double)m.get(17).getA4()/total;
				double q17a5=(double)m.get(17).getA5()/total;

				request.setAttribute("q17a1", q17a1);
				request.setAttribute("q17a2", q17a2);
				request.setAttribute("q17a3", q17a3);
				request.setAttribute("q17a4", q17a4);
				request.setAttribute("q17a5", q17a5);
				
				//Q18
				double q18a1=(double)m.get(18).getA1()/total;
				double q18a2=(double)m.get(18).getA2()/total;
				double q18a3=(double)m.get(18).getA3()/total;
				double q18a4=(double)m.get(18).getA4()/total;
				double q18a5=(double)m.get(18).getA5()/total;

				request.setAttribute("q18a1", q18a1);
				request.setAttribute("q18a2", q18a2);
				request.setAttribute("q18a3", q18a3);
				request.setAttribute("q18a4", q18a4);
				request.setAttribute("q18a5", q18a5);
				
				//Q19
				double q19a1=(double)m.get(19).getA1()/total;
				double q19a2=(double)m.get(19).getA2()/total;
				double q19a3=(double)m.get(19).getA3()/total;
				double q19a4=(double)m.get(19).getA4()/total;
				double q19a5=(double)m.get(19).getA5()/total;

				request.setAttribute("q19a1", q19a1);
				request.setAttribute("q19a2", q19a2);
				request.setAttribute("q19a3", q19a3);
				request.setAttribute("q19a4", q19a4);
				request.setAttribute("q19a5", q19a5);
				
				//Q20
				double q20a1=(double)m.get(20).getA1()/total;
				double q20a2=(double)m.get(20).getA2()/total;
				double q20a3=(double)m.get(20).getA3()/total;
				double q20a4=(double)m.get(20).getA4()/total;
				double q20a5=(double)m.get(20).getA5()/total;

				request.setAttribute("q20a1", q20a1);
				request.setAttribute("q20a2", q20a2);
				request.setAttribute("q20a3", q20a3);
				request.setAttribute("q20a4", q20a4);
				request.setAttribute("q20a5", q20a5);


		    	request.getRequestDispatcher("fstudentcollegereport.jsp").forward(request, response);
			}


		}
		catch(Exception e)
		{
			e.printStackTrace();
			response.sendRedirect("fstudentcollegereport.jsp?success=3");
		}

	}

}
