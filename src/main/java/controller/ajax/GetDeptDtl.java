package controller.ajax;

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

import org.json.JSONObject;

import bean.DeptAbout;
import model.DeptAboutDao;

/**
 * Servlet implementation class GetDeptDtl
 */
@WebServlet("/GetDeptDtl")
public class GetDeptDtl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		try{

			int deptID=Integer.parseInt(request.getParameter("did"));
			String pagename=request.getParameter("pgnm");
			System.out.println("Dept Id="+deptID +" "+pagename);
			
			DeptAboutDao dao=new DeptAboutDao();
			List<DeptAbout> al=dao.getAllDepDtl(deptID);
			List<DeptAbout> al1=dao.getAllDepImg(deptID);
			

			RequestDispatcher rd=request.getRequestDispatcher(pagename+".jsp");
			request.setAttribute("cat",al);
			request.setAttribute("img",al1);
			rd.forward(request, response);

		}
		catch(Exception e)
        {
			System.out.println("error= "+e);
            out.print(e);
        }

		/*PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		try{

			int deptID=Integer.parseInt(request.getParameter("did"));
			System.out.println("Dept Id="+deptID);
			
			DeptAboutDao dao=new DeptAboutDao();
			List<DeptAbout> al=dao.getAllDepDtl(deptID);
			for (DeptAbout about : al) {
				System.out.println("sssHeading="+about.getHeading());
				System.out.println("sssHeading="+about.getDetails());
			}

			JSONObject json = new JSONObject();
			json.put("al", al);

			response.setContentType("application/json");
			response.getWriter().write(json.toString());

		}
		catch(Exception e)
        {
			System.out.println("error= "+e);
            out.print(e);
        }*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		try{

			int deptID=Integer.parseInt(request.getParameter("did"));
			String pagename=request.getParameter("pgnm");
			System.out.println("Dept Id="+deptID +" "+pagename);
			
			DeptAboutDao dao=new DeptAboutDao();
			List<DeptAbout> al=dao.getAllDepDtl(deptID);
			for (DeptAbout about : al) {
				System.out.println("sssHeading="+about.getHeading());
				System.out.println("sssHeading="+about.getDetails());
			}

			RequestDispatcher rd=request.getRequestDispatcher(pagename+".jsp");
			request.setAttribute("cat",al);
			rd.forward(request, response);

		}
		catch(Exception e)
        {
			System.out.println("error= "+e);
            out.print(e);
        }
	}

}
