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

import bean.AccessBean;
import bean.EProfessor_basicBean;
import model.AccessDao;
import model.EProfessorDao;
import model.Sign_In_Up_Dao;

/**
 * Servlet implementation class Elogin
 */
@WebServlet("/Emirate-Professor/Elogin")
public class Elogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

			try{

				request.getRequestDispatcher("Elogin.jsp").forward(request, response);
			}
			catch(Exception e)
	        {
				System.out.println("error= "+e);
	            out.print(e);
	        }
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		try{

			String username=request.getParameter("username");
			String pass=request.getParameter("password");


			EProfessorDao dao=new EProfessorDao();
			String result=dao.ChkUser(username, pass);
			out.println(result);

			if(!result.equals("0")){

				session.setAttribute("UID", result);
				session.setAttribute("EPuser", username);
				response.sendRedirect("UpdateEProfessorInfo?ID="+result);
			}
			else{
				session.setAttribute("errMsg", "Invalid User Credentials");
				response.sendRedirect("Elogin");
			}



		}
		catch(Exception e)
        {
			System.out.println("error= "+e);
            out.print(e);
        }
	}


}
