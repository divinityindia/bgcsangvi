package controller.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.AccessBean;
import model.GalleryDao;

/**
 * Servlet implementation class DeleteSubGallery
 */
@WebServlet("/dir1/DeleteSubGallery")
public class DeleteSubGallery extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isGallery()){
			try{;
				String[] IDs=request.getParameterValues("chkBox");

				GalleryDao dao=new GalleryDao();
				int result =dao.deleteSubGallery(IDs);

				session.setAttribute("resultDelete", result);
				response.sendRedirect("SubGallery");
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
