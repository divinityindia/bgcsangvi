package controller.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.AccessBean;
import model.CyberSecurityDao;
import model.ResearchUploadDao;

/**
 * Servlet implementation class DeleteCyberSecurity
 */
@WebServlet("/dir1/DeleteCyberSecurity")
public class DeleteCyberSecurity extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isQpaper()){
			try
			{
				 int id=Integer.parseInt(request.getParameter("id"));
                CyberSecurityDao dao=new CyberSecurityDao();
				 dao.deleteCyberSec(id);
			 RequestDispatcher rd=request.getRequestDispatcher("CyberSecurity.jsp");
			  
			 request.setAttribute("dtl",dao.getAllCyberSec());
			 rd.forward(request, response);

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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
