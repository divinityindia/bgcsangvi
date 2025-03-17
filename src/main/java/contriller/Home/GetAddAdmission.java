package contriller.Home;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.PolicyProcedureDao;

/**
 * Servlet implementation class GetAddAdmission
 */
@WebServlet("/GetAddAdmission")
public class GetAddAdmission extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		try
		{
		 RequestDispatcher rd=request.getRequestDispatcher("EligibilityCriteria.jsp");
		 PolicyProcedureDao dao=new PolicyProcedureDao();
		 request.setAttribute("dtl",dao.getAllAddAdmission("Student HandBook"));
		 request.setAttribute("dtl1",dao.getAllAddAdmission("Reservation Policy"));
		 
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
