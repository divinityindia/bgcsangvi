package controller.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;

import model.DeptDao;
import model.EmpDao;

/**
 * Servlet implementation class DetleteEmp
 */
@WebServlet("/DetleteEmp")
public class DetleteEmp extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		try{

			String EID=request.getParameter("id");
              System.out.println("eid=="+EID);
			EmpDao dao=new EmpDao();
			int result=dao.deleteEmp(EID);

			JSONObject json = new JSONObject();
			json.put("result", result);

			response.setContentType("application/json");
			response.getWriter().write(json.toString());

		}
		catch(Exception e)
        {
			System.out.println("error= "+e);
            out.print(e);
        }
	}

}
