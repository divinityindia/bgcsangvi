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

import bean.DeptCourseStructure;
import bean.StaffResarch;
import model.DepCorseStructDao;
import model.StaffResPublicationDao;

/**
 * Servlet implementation class GetDepWiseCourseStruct
 */
@WebServlet("/GetDepWiseCourseStruct")
public class GetDepWiseCourseStruct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		try{

			int deptID=Integer.parseInt(request.getParameter("did"));
			String pagename=request.getParameter("pgnm");
			System.out.println("Dept Id="+deptID +" "+pagename);
			
			DepCorseStructDao dao=new DepCorseStructDao();
			List<DeptCourseStructure> al=dao.getAllcourseStr(deptID);
			
			RequestDispatcher rd=request.getRequestDispatcher(pagename+".jsp");
			request.setAttribute("cour",al);
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
			
			DepCorseStructDao dao=new DepCorseStructDao();
			List<DeptCourseStructure> al=dao.getAllcourseStr(deptID);
			for (DeptCourseStructure staffAchiv : al) {
				System.out.println("ssstrt="+staffAchiv.getCorsname());
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
