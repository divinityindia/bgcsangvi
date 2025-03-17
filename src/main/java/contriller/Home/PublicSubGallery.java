package contriller.Home;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedHashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.GalleryDao;

/**
 * Servlet implementation class PublicSubGallery
 */
@WebServlet("/PublicSubGallery")
public class PublicSubGallery extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		try
		{
			String gid=request.getParameter("gid");

			GalleryDao dao=new GalleryDao();
			LinkedHashMap<String, String[]> hm =dao.getSubGalleries_public(gid);
			LinkedHashMap<String, String> allGals=dao.getAllGalleryMasters();

			request.setAttribute("hm", hm);
			request.setAttribute("allGals", allGals);
			request.getRequestDispatcher("PublicSubGallery.jsp").forward(request, response);
		}
		catch(Exception e)
        {
			System.out.println("error= "+e);
            out.print(e);
        }

	}

}
