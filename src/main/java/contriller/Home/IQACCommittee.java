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
import model.IQACCommitteeDao;

/**
 * Servlet implementation class IQACCommittee
 */
@WebServlet("/IQACCommittee")
public class IQACCommittee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try
		{
		 RequestDispatcher rd=request.getRequestDispatcher("IQACCommittee.jsp");
		IQACCommitteeDao dao=new IQACCommitteeDao();
		 request.setAttribute("dtl",dao.getAllCommittee());
		 rd.forward(request, response);

		}
		catch(Exception e)
        {
			System.out.println("error= "+e);
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
