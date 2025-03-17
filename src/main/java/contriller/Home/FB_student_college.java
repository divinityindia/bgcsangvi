package contriller.Home;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.FB_student_college_bean;
import model.EventDao;
import model.FeedBackDao;

/**
 * Servlet implementation class FB_student_college
 */
@WebServlet("/FB_student_college")
public class FB_student_college extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		try{
			FB_student_college_bean bean=new FB_student_college_bean();

			bean.setR1(request.getParameter("r1"));
			bean.setR2(request.getParameter("r2"));
			bean.setR3(request.getParameter("r3"));
			bean.setR4(request.getParameter("r4"));
			bean.setR5(request.getParameter("r5"));
			bean.setR6(request.getParameter("r6"));
			bean.setR7(request.getParameter("r7"));
			bean.setR8(request.getParameter("r8"));
			bean.setR9(request.getParameter("r9"));
			bean.setR10(request.getParameter("r10"));
			bean.setR11(request.getParameter("r11"));
			bean.setR12(request.getParameter("r12"));
			bean.setR13(request.getParameter("r13"));
			bean.setR14(request.getParameter("r14"));
			bean.setR15(request.getParameter("r15"));
			bean.setR16(request.getParameter("r16"));

			bean.setCourse(request.getParameter("course"));
			bean.setAcademic_year(request.getParameter("academic_year"));
			bean.setSuggestions(request.getParameter("suggestions"));

			FeedBackDao dao=new FeedBackDao();
			String result=dao.addFB_student_college(bean);

			session.setAttribute("result", result);
			response.sendRedirect("Feedback.jsp");
		}
		catch(Exception e)
        {
			System.out.println("error= "+e);
            out.print(e);
        }

	}

}
