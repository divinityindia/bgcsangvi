package controller.user;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.FEmployerEmployeeBean;
import bean.FeedbackBean;
import bean.FeedbackReportBean;
import model.FeedbackDao2;

/**
 * Servlet implementation class femployeremployeereport
 */
@WebServlet("/dir1/femployeremployeereport")
public class femployeremployeereport extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try
		{
			int fid=Integer.parseInt(request.getParameter("fid"));
			FeedbackDao2 dao=new FeedbackDao2();
			FeedbackBean feedback=dao.getFeedback(fid);
			request.setAttribute("feedback", feedback);
			HashMap<Integer, FeedbackReportBean> m=dao.getEmployerEmployeeReport(fid);

			if(m.get(1).getTotal()==0){
				request.getRequestDispatcher("femptyreport.jsp").forward(request, response);
			}else{

				ArrayList<FEmployerEmployeeBean> list=dao.getEmployerEmployeeDetailReport(fid);
				request.setAttribute("list", list);
                request.setAttribute("edtls", dao.getEmployerEmployeeDetails(fid));
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

				//Q11
//				DOUBLE Q11A1=(DOUBLE)M.GET(11).GETA1()/TOTAL;
//				DOUBLE Q11A2=(DOUBLE)M.GET(11).GETA2()/TOTAL;
//				DOUBLE Q11A3=(DOUBLE)M.GET(11).GETA3()/TOTAL;
//				DOUBLE Q11A4=(DOUBLE)M.GET(11).GETA4()/TOTAL;
//				DOUBLE Q11A5=(DOUBLE)M.GET(11).GETA5()/TOTAL;
//
//				REQUEST.SETATTRIBUTE("Q11A1", Q11A1);
//				REQUEST.SETATTRIBUTE("Q11A2", Q11A2);
//				REQUEST.SETATTRIBUTE("Q11A3", Q11A3);
//				REQUEST.SETATTRIBUTE("Q11A4", Q11A4);
//				REQUEST.SETATTRIBUTE("Q11A5", Q11A5);

				//Q12
//				double q12a1=(double)m.get(12).getA1()/total;
//				double q12a2=(double)m.get(12).getA2()/total;
//				double q12a3=(double)m.get(12).getA3()/total;
//				double q12a4=(double)m.get(12).getA4()/total;
//				double q12a5=(double)m.get(12).getA5()/total;
//
//				request.setAttribute("q12a1", q12a1);
//				request.setAttribute("q12a2", q12a2);
//				request.setAttribute("q12a3", q12a3);
//				request.setAttribute("q12a4", q12a4);
//				request.setAttribute("q12a5", q12a5);

				//Q13
//				double q13a1=(double)m.get(13).getA1()/total;
//				double q13a2=(double)m.get(13).getA2()/total;
//				double q13a3=(double)m.get(13).getA3()/total;
//				double q13a4=(double)m.get(13).getA4()/total;
//				double q13a5=(double)m.get(13).getA5()/total;
//
//				request.setAttribute("q13a1", q13a1);
//				request.setAttribute("q13a2", q13a2);
//				request.setAttribute("q13a3", q13a3);
//				request.setAttribute("q13a4", q13a4);
//				request.setAttribute("q13a5", q13a5);

		    	request.getRequestDispatcher("femployeremployeereport.jsp").forward(request, response);
			}


		}
		catch(Exception e)
		{
			e.printStackTrace();
			response.sendRedirect("femployeremployeereport.jsp?success=3");
		}

	}

}
