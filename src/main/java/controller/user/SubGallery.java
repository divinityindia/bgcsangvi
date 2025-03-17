package controller.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedHashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.AccessBean;
import bean.SubGalleryBean;
import model.GalleryDao;

/**
 * Servlet implementation class SubGallery
 */
@WebServlet("/dir1/SubGallery")
public class SubGallery extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isGallery()){
			try{

				GalleryDao dao=new GalleryDao();
				LinkedHashMap<String,String> galleryMasters=dao.getAllGalleryMasters();

				request.setAttribute("gal", galleryMasters);
				request.getRequestDispatcher("SubGallery.jsp").forward(request, response);
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

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isGallery()){
			try{

				SubGalleryBean sbean=new SubGalleryBean();
				sbean.setSubgId(Integer.parseInt(request.getParameter("ID")));
				sbean.setGalleryId(Integer.parseInt(request.getParameter("gal")));
				sbean.setCaption(request.getParameter("caption"));
				sbean.setDetails(request.getParameter("details"));
				sbean.setVenue(request.getParameter("venue"));
				sbean.setDate(request.getParameter("dt"));

				GalleryDao dao=new GalleryDao();
				int id= dao.addSubGallery(sbean);

				session.setAttribute("result", id);
				response.sendRedirect("SubGallery");
//				request.getRequestDispatcher("GalleryMaster.jsp").forward(request, response);
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
