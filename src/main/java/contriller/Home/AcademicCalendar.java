package contriller.Home;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.AcedemicCalenderesDao;

/**
 * Servlet implementation class AcademicCalendar
 */
@WebServlet("/AcademicCalendar")
public class AcademicCalendar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try
		{
			 RequestDispatcher rd=request.getRequestDispatcher("AcedemicCalendar.jsp");
			 AcedemicCalenderesDao dao=new AcedemicCalenderesDao();
			 request.setAttribute("dtl",dao.getAllAcedemicCalender());
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
