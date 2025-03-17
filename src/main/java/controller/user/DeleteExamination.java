package controller.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.AccessBean;
import model.ExamDao;
import model.ShortTermCourseDao;

/**
 * Servlet implementation class DeleteExamination
 */
@WebServlet("/dir1/DeleteExamination")
public class DeleteExamination extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isExam()){
			try{
				String[] IDs=request.getParameterValues("chkBox");

				ExamDao dao=new ExamDao();
				int result=dao.deleteExamination(IDs);

				session.setAttribute("resultDelete", result);
				response.sendRedirect("Examination");
			}
			catch(Exception e)
	        {
				System.out.println("error= "+e);
	            out.print(e);
	        }
		}
		else{
			response.sendRedirect("home.jsp");
		}
	}

}
