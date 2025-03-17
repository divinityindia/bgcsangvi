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
import model.IQACCommitteeDao;

/**
 * Servlet implementation class DeleteIQACCommittee
 */
@WebServlet("/dir1/DeleteIQACCommittee")
public class DeleteIQACCommittee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
	HttpSession session = request.getSession(true);

	AccessBean bean=(AccessBean)session.getAttribute("right");
	if(bean.isAQAR_Reports()){
		try
		{
			int rid=Integer.parseInt(request.getParameter("id"));
		 RequestDispatcher rd=request.getRequestDispatcher("AddIQACCommittee.jsp");
		IQACCommitteeDao dao=new IQACCommitteeDao();
		dao.deleteCommittee(rid);
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
