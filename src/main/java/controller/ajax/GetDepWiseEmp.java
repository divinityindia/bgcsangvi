package controller.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.LinkedHashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;

import bean.EmpBean;
import model.EmpDao;
import model.EventDao;

/**
 * Servlet implementation class GetDepWiseEmp
 */
@WebServlet("/GetDepWiseEmp")
public class GetDepWiseEmp extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		try{

			String deptID=request.getParameter("did");
			String pagename=request.getParameter("pgnm");
			System.out.println("Dept Id="+deptID +" "+pagename);
			
			EmpDao dao=new EmpDao();
			ArrayList<EmpBean> al=dao.getDeptWiseEmp(deptID);
			
		
			RequestDispatcher rd=request.getRequestDispatcher(pagename+".jsp");
			request.setAttribute("cat",al);
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

			String deptID=request.getParameter("id");
			EmpDao dao=new EmpDao();
			ArrayList<EmpBean> al=dao.getDeptWiseEmp(deptID);
			
			for(EmpBean bn : al){
				System.out.println(bn.getQuali()+" >> "+bn.getSqual());
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

}
