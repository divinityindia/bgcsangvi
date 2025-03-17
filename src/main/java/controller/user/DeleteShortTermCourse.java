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
import model.NewsDao;
import model.ShortTermCourseDao;

/**
 * Servlet implementation class DeleteShortTermCourse
 */
@WebServlet("/dir1/DeleteShortTermCourse")
public class DeleteShortTermCourse extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isNews()){
			try{
				String[] IDs=request.getParameterValues("chkBox");

				ShortTermCourseDao dao=new ShortTermCourseDao();
				int result=dao.deleteShortTermCourse(IDs);

				session.setAttribute("resultDelete", result);
				response.sendRedirect("ShortTermCourse");
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
