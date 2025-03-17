package contriller.Home;

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
import controller.user.AcademicCommitteeDao;

/**
 * Servlet implementation class AcademicCommittee
 */
@WebServlet("/AcademicCommittee")
public class AcademicCommittee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

			try
			{
			 RequestDispatcher rd=request.getRequestDispatcher("AcademicCommittee.jsp");
			AcademicCommitteeDao dao=new AcademicCommitteeDao();
			 request.setAttribute("dtl",dao.getAllCommittee());
			 rd.forward(request, response);

			}
			catch(Exception e)
	        {
				System.out.println("error= "+e);
	            out.print(e);
	        }
	}


}
