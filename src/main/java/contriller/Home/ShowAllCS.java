package contriller.Home;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CyberSecurityDao;

/**
 * Servlet implementation class ShowAllCS
 */
@WebServlet("/ShowAllCS")
public class ShowAllCS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		try
		{
			String title=request.getParameter("ty");
		 RequestDispatcher rd=request.getRequestDispatcher("ShowAllCyberSecurity.jsp");
		 CyberSecurityDao dao=new CyberSecurityDao();
		 request.setAttribute("dtl",dao.getAllCyberSec(title));
		 request.setAttribute("type",title);
		 rd.forward(request, response);

		}
		catch(Exception e)
        {
			System.out.println("error= "+e);
            out.print(e);
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
