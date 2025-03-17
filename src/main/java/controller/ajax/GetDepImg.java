package controller.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;

import bean.DeptAbout;
import bean.StaffResult;
import model.DeptAboutDao;
import model.StaffDepResultDao;

/**
 * Servlet implementation class GetDepImg
 */
@WebServlet("/GetDepImg")
public class GetDepImg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		try{

			int deptID=Integer.parseInt(request.getParameter("did"));
			System.out.println("Dept Id="+deptID);
			
			DeptAboutDao dao=new DeptAboutDao();
			List<DeptAbout> al=dao.getAllDepImg(deptID);
			for (DeptAbout staffAchiv : al) {
				System.out.println("sssImage="+staffAchiv.getImgname());
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
        }
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
	}

}
