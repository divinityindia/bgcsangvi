package contriller.Home;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.ProspectusBean;
import model.ProspectusDao;

/**
 * Servlet implementation class AdmissionProspects
 */
@WebServlet("/AdmissionProspects")
public class AdmissionProspects extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try
		{
		 RequestDispatcher rd=request.getRequestDispatcher("AdmissionProspects.jsp");
		 ProspectusDao dao=new ProspectusDao();
		 ProspectusBean prospectusBean=dao.getProspectus();
		 request.setAttribute("dtl",prospectusBean);
		 rd.forward(request, response);

		}
		catch(Exception e)
        {
			System.out.println("error= "+e);
        }
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
