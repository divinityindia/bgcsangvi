package controller.emirates;

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
import bean.EProfessor_basicBean;
import model.DeptDao;
import model.EProfessorDao;
import model.EmpDao;

/**
 * Servlet implementation class ProfessorList
 */
@WebServlet("/Emirate-Professor/ProfessorList")
public class ProfessorList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

			try{

				EProfessorDao dao=new EProfessorDao();
				LinkedHashMap<String, EProfessor_basicBean> hm =dao.getAllEprofessor_Basic();

				String url = request.getRequestURL().toString();
				String baseURL = url.substring(0, url.length() - request.getRequestURI().length()) + request.getContextPath() + "/";

				request.setAttribute("hm", hm);
				request.setAttribute("baseURL", baseURL);
				request.getRequestDispatcher("ProfessorList.jsp").forward(request, response);
			}
			catch(Exception e)
	        {
				System.out.println("error= "+e);
	            out.print(e);
	        }

	}

}
