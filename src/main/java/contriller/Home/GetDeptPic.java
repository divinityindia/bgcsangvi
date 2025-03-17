package contriller.Home;

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

import bean.DeptEventBean;
import model.DeptEventDao;

/**
 * Servlet implementation class GetDeptPic
 */
@WebServlet("/GetDeptPic")
public class GetDeptPic extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		try{

			int deptID=Integer.parseInt(request.getParameter("did"));
			System.out.println("Dept Id="+deptID);
			
			DeptEventDao dao=new DeptEventDao();
			List<DeptEventBean> al=dao.getAllDeptEvent(deptID);
			for (DeptEventBean staffAchiv : al) {
				System.out.println("sssEVEnt="+staffAchiv.getCaption());
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
