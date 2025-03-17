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
import model.QpapersDao;

/**
 * Servlet implementation class DeleteQpapers
 */
@WebServlet("/dir1/DeleteQpapers")
public class DeleteQpapers extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isQpaper()){
			try{
				String[] QPIDs=request.getParameterValues("chkBox");

				QpapersDao dao=new QpapersDao();
				int result=dao.deleteQpapers(QPIDs);

				session.setAttribute("resultDelete", result);
				response.sendRedirect("OldQPaper");
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
