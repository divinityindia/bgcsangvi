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
import model.AcedemicCalenderesDao;

/**
 * Servlet implementation class DeleteAcedemicCalenderes
 */
@WebServlet("/dir1/DeleteAcedemicCalenderes")
public class DeleteAcedemicCalenderes extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isAcademiccalender()){
			try
			{
				int acid=Integer.parseInt(request.getParameter("id"));
			 RequestDispatcher rd=request.getRequestDispatcher("AddAcedemicCalenderes.jsp");
			 AcedemicCalenderesDao dao=new AcedemicCalenderesDao();
			dao.deleteAcedemicCalender(acid); 
			 
			 request.setAttribute("dtl",dao.getAllAcedemicCalender());
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


}
