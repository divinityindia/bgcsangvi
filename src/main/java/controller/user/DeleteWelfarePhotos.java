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
import model.WelfareDao;

/**
 * Servlet implementation class DeleteWelfarePhotos
 */
@WebServlet("/dir1/DeleteWelfarePhotos")
public class DeleteWelfarePhotos extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isWelfare()){
			try{

				String[] WIDs=request.getParameterValues("chkBox");

				WelfareDao dao=new WelfareDao();
				int result=dao.deleteWelfarePhotos(WIDs);

				session.setAttribute("resultDelete", result);
				response.sendRedirect("WelfarePhoto");
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
