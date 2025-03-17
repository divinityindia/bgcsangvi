package controller.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;

import com.google.gson.Gson;

import bean.DeptAbout;
import bean.DeptEventBean;
import model.DeptAboutDao;
import model.DeptEventPicDao;

/**
 * Servlet implementation class GetAllMaster
 */
@WebServlet("/GetAllMaster")
public class GetAllMaster extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		try{

			int deptID=Integer.parseInt(request.getParameter("did"));
			System.out.println("Dept Id="+deptID);
			
			DeptEventPicDao dao=new DeptEventPicDao();
			List<DeptEventBean> classbeans=dao.getAllMaster(deptID);
			String json = new Gson().toJson(classbeans);
			System.out.println(json);
	        
			response.setContentType("application/json");
		 response.getWriter().write(json);
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
