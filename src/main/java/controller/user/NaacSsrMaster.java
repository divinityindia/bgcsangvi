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
import model.GalleryDao;
import model.NaacSsrDao;

/**
 * Servlet implementation class NaacSsrMaster
 */
@WebServlet("/dir1/NaacSsrMaster")
public class NaacSsrMaster extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isHd()){
			try{


				request.getRequestDispatcher("NaacSsrMaster.jsp").forward(request, response);
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
		if(bean.isHd()){
			try{

				String caption=request.getParameter("caption");
				String ID=request.getParameter("ID");
                
				NaacSsrDao dao=new NaacSsrDao();
				//GalleryDao dao=new GalleryDao();
				int id= dao.addCaption(ID, caption);

				session.setAttribute("result", id);
				response.sendRedirect("NaacSsrMaster");
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
