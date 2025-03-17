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
 * Servlet implementation class ResearchPubDetails
 */
@WebServlet("/dir1/ResearchPubDetails")
public class ResearchPubDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isUGC_BSR()){
			try
			{
			 RequestDispatcher rd=request.getRequestDispatcher("ResearchPubDetails.jsp");
			 
			 int did=Integer.parseInt((String) session.getAttribute("DID"));
			 ResearchDetailsDao dao=new ResearchDetailsDao();
			 DeptDao dao1=new DeptDao();
			 if(did!=0)
			 {
			 request.setAttribute("dtl",dao.getAllResearchPubDtl1(did));
			 }
			 else
			 {
				 request.setAttribute("dtl",dao.getAllResearchPubDtl());
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

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isUGC_BSR())
		{
			try
			{
				int deptid=Integer.parseInt(request.getParameter("deptid"));
				String dtl=request.getParameter("area");
				 DeptDao dao1=new DeptDao();
				 String deptname=dao1.DeptName(deptid);
				 System.out.println("Dtl=="+deptid+" "+deptname+" "+dtl);
					   
                 ResearchDetailsDao dao=new ResearchDetailsDao();
                 dao.addResearchPubDetl(deptid, deptname, dtl);
		    	
		    	response.sendRedirect("ResearchPubDetails");
		    	
		    	
		    	
			
			}
			catch(Exception e)
	        {
				System.out.println("error= "+e);
	            out.print(e);
	            e.printStackTrace();
	        }
		}
		else{
			response.sendRedirect("home.jsp");
		}
	}
}
