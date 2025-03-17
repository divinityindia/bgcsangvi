package controller.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedHashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;

import model.EligibilityDao;

/**
 * Servlet implementation class GetAllEligibilityDoc1
 */
@WebServlet("/GetAllEligibilityDoc1")
public class GetAllEligibilityDoc1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		try{

			EligibilityDao dao=new EligibilityDao();
			LinkedHashMap<String,String[]> hm=dao.getAllEligibility();

			JSONObject json = new JSONObject();
			json.put("hm", hm);

			response.setContentType("application/json");
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
