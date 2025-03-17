package controller.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.LinkedHashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itextpdf.text.Document;

import bean.AccessBean;
import bean.AluminiBean;
import bean.EmployeeExp;
import model.AlumniDao;
import model.EmpDao;

/**
 * Servlet implementation class AlumniStudentList
 */
@WebServlet("/dir1/AlumniStudentList")
public class AlumniStudentList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isAluminiregistration()){
			try{


				AlumniDao dao=new AlumniDao();
				LinkedHashMap<String, AluminiBean> hm=dao.getAlumniStudent();
				request.setAttribute("hm", hm);
				request.getRequestDispatcher("AlumniStudentList.jsp").forward(request, response);
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
		if(bean.isAluminiregistration()){
			try{

				String[] Ids = request.getParameterValues("chkBox");

				for (String string : Ids) {
					out.println(string);

				}

				AlumniDao dao=new AlumniDao();
				int result=dao.deleteAlumniStudents(Ids);

				session.setAttribute("resultDelete", result);
				response.sendRedirect("AlumniStudentList");
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
