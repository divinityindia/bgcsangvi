package controller.emirates;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedHashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.EProfessor_basicBean;
import model.EProfessorDao;

/**
 * Servlet implementation class ProfessorInfo
 */
@WebServlet("/Emirate-Professor/ProfessorInfo")
public class ProfessorInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		try{

			String UID = request.getParameter("id");

			EProfessorDao dao=new EProfessorDao();
			EProfessor_basicBean info =dao.getEprofessorInfo(UID);

			request.setAttribute("info", info);
			request.getRequestDispatcher("ProfessorInfo.jsp").forward(request, response);

		}
		catch(Exception e)
        {
			System.out.println("error= "+e);
            out.print(e);
        }

	}

}
