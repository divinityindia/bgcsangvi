package controller.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.LinkedHashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.AccessBean;
import model.DeptDao;
import model.EmpDao;

/**
 * Servlet implementation class SearchEmp
 */
@WebServlet("/dir1/SearchEmp")
public class SearchEmp extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isSearchemployee()){
			try{

				DeptDao dao=new DeptDao();
				LinkedHashMap<String, String> dept=dao.getDeptList();

//				EmpDao dao2=new EmpDao();
//				HashMap<String, String> desig=dao2.getAllDesignations();

				request.setAttribute("depts", dept);
//				request.setAttribute("desig", desig);
				request.getRequestDispatcher("SearchEmp.jsp").forward(request, response);
			}
			catch(Exception e)
	        {
				System.out.println("error= "+e);
	            out.print(e);
	        }
		}
		else{
			response.sendRedirect("home.jsp");
		}
	}

}
