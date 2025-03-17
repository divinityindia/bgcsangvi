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

import bean.DeptAbout;
import model.DeptAboutDao;
import model.PolicyProcedureDao;
import model.SddocDao;

/**
 * Servlet implementation class StudentDevelopment
 */
@WebServlet("/StudentDevelopment")
public class StudentDevelopment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		try{

			String type=request.getParameter("type");
			String pagename=request.getParameter("pgnm");
			System.out.println("Doc Type="+type +" "+pagename);
           
			SddocDao dao=new SddocDao();
			request.setAttribute("cat",dao.getAllDoc(type));
			
			 PolicyProcedureDao dao1=new PolicyProcedureDao();
			 request.setAttribute("dtl",dao1.getPolicyProcedure("Mentor"));
			

			RequestDispatcher rd=request.getRequestDispatcher(pagename+".jsp");
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
