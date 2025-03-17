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
import model.NewsDao;

/**
 * Servlet implementation class PublicGallery
 */
@WebServlet("/PublicGallery")
public class PublicGallery extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		try
		{

			GalleryDao dao=new GalleryDao();
			LinkedHashMap<String, String[]> hm =dao.getGalleries_public();

			request.setAttribute("hm", hm);
			request.getRequestDispatcher("PublicGallery.jsp").forward(request, response);
		}
		catch(Exception e)
        {
			System.out.println("error= "+e);
            out.print(e);
        }

	}

}
