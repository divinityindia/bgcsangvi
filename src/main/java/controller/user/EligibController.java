package controller.user;

import java.io.IOException;
import java.util.LinkedHashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.EligibilityDao;

/**
 * Servlet implementation class EligibController
 */
@WebServlet("/EligibController")
public class EligibController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String yr=request.getParameter("year");
		String did=request.getParameter("did");
		System.out.println("Inside EligibController :-"+yr+did);
		EligibilityDao dao=new EligibilityDao();
		LinkedHashMap<String,String[]> hm=dao.getAllEligibilitys(did,yr);
		
		System.out.println("Size="+hm.size());
		RequestDispatcher rd=request.getRequestDispatcher("EligibDetails.jsp");
		request.setAttribute("hm",hm);
		
		rd.forward(request, response);
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
