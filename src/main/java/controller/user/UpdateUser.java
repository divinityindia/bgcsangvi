package controller.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.AccessBean;
import model.UserDao;

/**
 * Servlet implementation class UpdateUser
 */
@WebServlet("/dir1/UpdateUser")
public class UpdateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isUser()){
			try{
				String UID=request.getParameter("UID");
				String dept=request.getParameter("dept");
				String username=request.getParameter("username");
				String password=request.getParameter("password");

				UserDao dao=new UserDao();
				int result=dao.updateUser(UID,dept, username, password);

				session.setAttribute("resultUpdate", result);
				response.sendRedirect("CreateUser");
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
