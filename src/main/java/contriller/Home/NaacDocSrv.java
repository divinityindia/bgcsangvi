package contriller.Home;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedHashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;

import model.IQACDao;

/**
 * Servlet implementation class NaacDocSrv
 */
@WebServlet("/NaacDocSrv")
public class NaacDocSrv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		try{

			int gid=Integer.parseInt(request.getParameter("gid"));
			String nm=request.getParameter("nm");
			
			System.out.println("Inside NaacDocSrv:="+gid+nm);


			IQACDao dao=new IQACDao();
			
			LinkedHashMap<String,String[]> hm=dao.getAllNaacDocs( gid);
			
			request.setAttribute("hm", hm);
			request.setAttribute("sub",nm );
			RequestDispatcher rd=request.getRequestDispatcher("NaacDoc.jsp");
			rd.forward(request, response);

			/*JSONObject json = new JSONObject();
			json.put("hm", hm);

			response.setContentType("application/json");
			response.getWriter().write(json.toString());*/

		}
		catch(Exception e)
        {
			System.out.println("error= "+e);
            out.print(e);
        }
	}

	

}
