package controller.basic;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.AccessBean;
import model.AccessDao;
import model.Sign_In_Up_Dao;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		try{

			String username=request.getParameter("username");
			String pass=request.getParameter("password");


			Sign_In_Up_Dao dao=new Sign_In_Up_Dao();
			String result[]=dao.ChkUser(username, pass);
			out.println(result);

			if(!result[0].equals("0")){
				AccessDao accessDao=new AccessDao();
                AccessBean bean=accessDao.getAccessRights(Integer.parseInt(result[0]));

				session.setAttribute("sToken", "true");
				session.setAttribute("UID", result[0]);
				session.setAttribute("user", username);
				session.setAttribute("right", bean);
				session.setAttribute("DID", result[1]);
				session.setAttribute("s3path","https://pdeabgcollege.s3.us-east-2.amazonaws.com/");
				
				response.sendRedirect("dir1/home.jsp");
			}
			else{
				session.setAttribute("errMsg", "Invalid User Credentials");
				response.sendRedirect("Login");
			}



		}
		catch(Exception e)
        {
			System.out.println("error= "+e);
            out.print(e);
        }
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		try{

			request.getRequestDispatcher("Login.jsp").forward(request, response);



		}
		catch(Exception e)
        {
			System.out.println("error= "+e);
            out.print(e);
        }
	}

}
