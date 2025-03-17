package contriller.Home;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ResearchCenterDao;

/**
 * Servlet implementation class ResearchCenterPublications
 */
@WebServlet("/ResearchCenterPublications")
public class ResearchCenterPublications extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try 
		{
			String dpnm=request.getParameter("dpnm");
			
			System.out.println("Research Center DeptName:---"+dpnm);
			ResearchCenterDao dao=new ResearchCenterDao();
			request.setAttribute("dtls", dao.getResCenPublicationByDpnm(dpnm));
			request.setAttribute("head",dpnm);
			RequestDispatcher rd=request.getRequestDispatcher("ResearchCenterPublications.jsp");
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
