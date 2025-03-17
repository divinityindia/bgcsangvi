package contriller.Home;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ResearchUploadDao;

/**
 * Servlet implementation class Fundingscheme
 */
@WebServlet("/Fundingscheme")
public class Fundingscheme extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		try
		{
			String type=request.getParameter("type");
			System.out.println("Type==="+type);
			String pgname=request.getParameter("pgnm");
		 RequestDispatcher rd=request.getRequestDispatcher(pgname);
		  ResearchUploadDao dao=new ResearchUploadDao();
		  
		 request.setAttribute("dtl",dao.getAllResearchUpload(type));
		 request.setAttribute("type",type);
		 rd.forward(request, response);

		}
		catch(Exception e)
        {
			System.out.println("error= "+e);
            out.print(e);
        }
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
