package contriller.Home;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.PolicyProcedureDao;

/**
 * Servlet implementation class AdmissionReservationPolicy
 */
@WebServlet("/AdmissionReservationPolicy")
public class AdmissionReservationPolicy extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try
		{
			try 
			{
				 RequestDispatcher rd=request.getRequestDispatcher("AdmissionReservationPolicy.jsp");
				 PolicyProcedureDao dao=new PolicyProcedureDao();
				 request.setAttribute("dtl",dao.getAllAddAdmission("Reservation Policy"));
				 rd.forward(request, response);
				
			}
			catch (Exception e) 
			{
	          e.printStackTrace();
			}
		}
		catch (Exception e)
		{
         e.printStackTrace();
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
