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

import model.NewsDao;

/**
 * Servlet implementation class GetAllShortNotice
 */
@WebServlet("/GetAllShortNotice")
public class GetAllShortNotice extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		try{

			NewsDao dao=new NewsDao();
			LinkedHashMap<String,String[]> hm=dao.getAllShortNotic();

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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
