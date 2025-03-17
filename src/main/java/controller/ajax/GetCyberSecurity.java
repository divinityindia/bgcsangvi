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

import bean.CyberSecurityBean;
import bean.StaffAchiv;
import model.CyberSecurityDao;
import model.StaffAchivDao;

/**
 * Servlet implementation class GetCyberSecurity
 */
@WebServlet("/GetCyberSecurity")
public class GetCyberSecurity extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		try{

			
			CyberSecurityDao dao=new CyberSecurityDao();
			List<CyberSecurityBean> al=dao.getAllCyber();
			for (CyberSecurityBean staffAchiv : al) {
				System.out.println("rrrr="+staffAchiv.getSemester());
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
