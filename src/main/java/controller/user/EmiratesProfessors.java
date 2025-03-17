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
import bean.EProfessor_basicBean;
import model.DeptDao;
import model.EProfessorDao;
import model.UserDao;

/**
 * Servlet implementation class EmiratesProfessors
 */
@WebServlet("/dir1/EmiratesProfessors")
public class EmiratesProfessors extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isUser()){
			try{
				EProfessorDao dao=new EProfessorDao();
				LinkedHashMap<String, EProfessor_basicBean> hm =dao.getAllEprofessor_Basic();

				request.setAttribute("hm", hm);
				request.getRequestDispatcher("EmiratesProfessors.jsp").forward(request, response);
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
		if(bean.isUser()){
			try{
				EProfessor_basicBean ebean =new EProfessor_basicBean();

				ebean.setID(Integer.parseInt(request.getParameter("ID")));
				ebean.setName(request.getParameter("name"));
				ebean.setUserName(request.getParameter("username"));
				ebean.setPassword(request.getParameter("password"));
				ebean.setPhno(request.getParameter("phno"));
				ebean.setEmail(request.getParameter("email"));

				EProfessorDao dao=new EProfessorDao();
				int result= dao.AddEmiratesProfessor(ebean);

				session.setAttribute(request.getParameter("type"), result);
				response.sendRedirect("EmiratesProfessors");
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
