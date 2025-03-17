package contriller.Home;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ExaminationDetalisDao;

/**
 * Servlet implementation class CoursesOffered
 */
@WebServlet("/CoursesOffered")
public class CoursesOffered extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try 
		{
			 ExaminationDetalisDao dao=new ExaminationDetalisDao();
			 request.setAttribute("codtls", dao.getAllCourseOffersDtl());
			 
			 RequestDispatcher rd=request.getRequestDispatcher("CoursesOffered.jsp");
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
