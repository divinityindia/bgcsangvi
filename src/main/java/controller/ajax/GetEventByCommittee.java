package controller.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedHashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;

import bean.ActivityBean;
import model.ActivityDao;
import model.GalleryDao;

/**
 * Servlet implementation class GetEventByCommittee
 */
@WebServlet("/GetEventByCommittee")
public class GetEventByCommittee extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	PrintWriter out = response.getWriter();
	HttpSession session = request.getSession(true);
	try{

		int cmid=Integer.parseInt(request.getParameter("cmid"));

		 ActivityDao dao=new ActivityDao();
         List<ActivityBean> hm=dao.getAllCmtEvntByCommittee(cmid);
		JSONObject json = new JSONObject();
		json.put("hm", hm);
         System.out.println("GetEventByCommittee ......");
		response.setContentType("application/json");
		System.out.println(json.toString());
		response.getWriter().write(json.toString());

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
