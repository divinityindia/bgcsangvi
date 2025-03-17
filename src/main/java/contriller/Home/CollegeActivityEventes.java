package contriller.Home;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ActivityDao;

/**
 * Servlet implementation class CollegeActivityEventes
 */
@WebServlet("/CollegeActivityEventes")
public class CollegeActivityEventes extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try 
		{
			int cmid=Integer.parseInt(request.getParameter("cmid"));
			String cmnm=request.getParameter("cmnm");
			
			ActivityDao dao=new ActivityDao();
			request.setAttribute("evdtls", dao.getAllCmtEvntReportsPhotoByCmid(cmid));
			request.setAttribute("cnmn", cmnm);
			RequestDispatcher rd=request.getRequestDispatcher("CollegeActivityEventes.jsp");
			rd.forward(request, response);
			
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
