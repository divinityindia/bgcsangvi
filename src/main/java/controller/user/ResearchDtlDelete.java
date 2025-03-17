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
import model.DeptDao;
import model.ResearchDetailsDao;

/**
 * Servlet implementation class ResearchDtlDelete
 */
@WebServlet("/dir1/ResearchDtlDelete")
public class ResearchDtlDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isUGC_BSR()){
			try
			{
				 ResearchDetailsDao dao=new ResearchDetailsDao();
				int id=Integer.parseInt(request.getParameter("id"));
				 int did=Integer.parseInt((String) session.getAttribute("DID"));
				
				dao.deleteResearchDtl(id);
			 RequestDispatcher rd=request.getRequestDispatcher("ResearchDetails.jsp");
			
			 DeptDao dao1=new DeptDao();
			 if(did!=0)
			 {
			 request.setAttribute("dtl",dao.getAllResearchDtl1(did));
			 }
			 else
			 {
				 request.setAttribute("dtl",dao.getAllResearchDtl());
			}
			 request.setAttribute("dep",dao1.getDeptList());
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
