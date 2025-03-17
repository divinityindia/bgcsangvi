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

import bean.SubGalleryBean;
import model.GalleryDao;

/**
 * Servlet implementation class PublicImgGallery
 */
@WebServlet("/PublicImgGallery")
public class PublicImgGallery extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		try
		{
			String sbgid=request.getParameter("sbgid");

			GalleryDao dao=new GalleryDao();
			LinkedHashMap<String, String[]> hm =dao.getImgGalleries_public(sbgid);
			SubGalleryBean bean=dao.getSubGalerryInfo(sbgid);

			request.setAttribute("hm", hm);
			request.setAttribute("bean", bean);
			request.getRequestDispatcher("PublicImgGallery.jsp").forward(request, response);
		}
		catch(Exception e)
        {
			System.out.println("error= "+e);
            out.print(e);
        }

	}

}
