package controller.user;

import java.io.IOException;
import java.io.PrintWriter;
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
import model.UserDao;

/**
 * Servlet implementation class OtherQualification
 */
@WebServlet("/dir1/OtherQualification")
public class OtherQualification extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isCourse()){
			try{
//				DeptDao dao=new DeptDao();
//				LinkedHashMap<String, String> dept=dao.getDeptList();
//
//				request.setAttribute("depts", dept);
				request.getRequestDispatcher("OtherQualification.jsp").forward(request, response);
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

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isCourse()){
			try{
				String ID=request.getParameter("id");
				String quali=request.getParameter("quali");

				String type=request.getParameter("type");

				EmpDao dao=new EmpDao();
				int result=dao.addOtherQuali(ID, quali);

				session.setAttribute(type, result);
				response.sendRedirect("OtherQualification");
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
