package controller.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.AccessBean;

/**
 * Servlet implementation class DeleteAcademicCommittee
 */
@WebServlet("/dir1/DeleteAcademicCommittee")
public class DeleteAcademicCommittee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isAcademiccalender()){
			try
			{
				int id=Integer.parseInt(request.getParameter("id"));
			 RequestDispatcher rd=request.getRequestDispatcher("AddAcademicCommittee.jsp");
			AcademicCommitteeDao dao=new AcademicCommitteeDao();
			
			  dao.deleteCommittee(id);
			 request.setAttribute("dtl",dao.getAllCommittee());
			 rd.forward(request, response);

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
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
