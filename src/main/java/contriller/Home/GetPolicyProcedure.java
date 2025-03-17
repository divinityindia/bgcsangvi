package contriller.Home;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amazonaws.services.appstream.model.Session;

import bean.PolicyProcedureBean;
import model.PolicyProcedureDao;

/**
 * Servlet implementation class GetPolicyProcedure
 */
@WebServlet("/GetPolicyProcedure")
public class GetPolicyProcedure extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		HttpSession session=request.getSession(false);
		try
		{
		  String title=request.getParameter("title");	
          int id=0;
          String filename=null;
          String s3path=(String) session.getAttribute("s3pat");
		 
		 PolicyProcedureDao dao=new PolicyProcedureDao();
		 List<PolicyProcedureBean> bean=dao.getAllPolicyProcedure(title);
		 for (PolicyProcedureBean pol : bean) 
		 {
		  	id=pol.getPpid();
		  	filename=pol.getDocument();
		}
		 response.sendRedirect(""+s3path+"PolicyProcedure/"+id+"_"+filename);

		}
		catch(Exception e)
        {
			System.out.println("error= "+e);
            out.print(e);
        }
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
