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
import model.IQACDao;
import model.NewsDao;

/**
 * Servlet implementation class DeleteIQAC
 */
@WebServlet("/dir1/DeleteIQAC")
public class DeleteIQAC extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");

		try{

			String tblName = request.getParameter("tblName");
			String[] ids = request.getParameterValues("chkBox");

			IQACDao dao=new IQACDao();
			int result=dao.deleteDoc(ids, tblName);

			session.setAttribute("resultDelete", result);
			response.sendRedirect(tblName);

		}
		catch(Exception e)
        {
			System.out.println("error= "+e);
            out.print(e);
        }

	}

}
