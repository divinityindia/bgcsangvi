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
 * Servlet implementation class CollegeActivityEventPhotoes
 */
@WebServlet("/CollegeActivityEventPhotoes")
public class CollegeActivityEventPhotoes extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try 
		{
			int evid=Integer.parseInt(request.getParameter("evid"));
			String evnm=request.getParameter("evnm");
			
			ActivityDao dao=new ActivityDao();
			request.setAttribute("evdtl",dao.getAllCmtEvntPhotoByEvid(evid));
			request.setAttribute("evnm", evnm);
			RequestDispatcher rd=request.getRequestDispatcher("CollegeActivityEventPhotoes.jsp");
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
