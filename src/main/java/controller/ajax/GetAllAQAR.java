package controller.ajax;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;

import bean.AQARBean;
import model.AqarDao;
import model.IQACDao;

/**
 * Servlet implementation class GetAllAQAR
 */
@WebServlet("/GetAllAQAR")
public class GetAllAQAR extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		try{

		
			String tblName=request.getParameter("tbl");

		     AqarDao aqarDao=new AqarDao();
		     LinkedHashMap<String,String[]> hm=aqarDao.getAllAqar(tblName);
		     
		    System.out.println("Size=="+hm.size());
		    
		    for (HashMap.Entry<String, String[]> entry : hm.entrySet()) {
			    System.out.println(entry.getKey() + " = " + entry.getValue());
			}
			
			JSONObject json = new JSONObject();
			json.put("hm",hm);
			

			response.setContentType("application/json");
			response.getWriter().write(json.toString());

		}
		catch(Exception e)
        {
		   e.printStackTrace();
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
