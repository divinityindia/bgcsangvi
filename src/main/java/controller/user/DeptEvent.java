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
import bean.DeptEventBean;
import model.DeptDao;
import model.DeptEventDao;
import model.StaffResearchDao;

/**
 * Servlet implementation class DeptEvent
 */
@WebServlet("/dir1/DeptEvent")
public class DeptEvent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isUGC_BSR())
		{
			try
			{
				DeptDao dao=new DeptDao();
				RequestDispatcher rd=request.getRequestDispatcher("DeptEvent.jsp");
				request.setAttribute("dep",dao.getDeptList());
				 int did=Integer.parseInt((String) session.getAttribute("DID"));
				DeptEventDao dao2=new DeptEventDao();
				
				 if(did !=0)
				 {
				request.setAttribute("cap",dao2.getAllDepEvent1(did));
				 }
				 else
				 {
					 request.setAttribute("cap",dao2.getAllDepEvent());
				}
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
			   String did=request.getParameter("did");
			   int did1=Integer.parseInt(did);
			   String caption=request.getParameter("caption");
			    
			   DeptEventBean eventBean=new DeptEventBean();
			   eventBean.setDeptid(did1);
			   eventBean.setCaption(caption);
			   
			   DeptEventDao dao=new DeptEventDao();
			   int id=dao.addDeptCaption(eventBean);
				System.out.println("DeptId="+id);
				
				response.sendRedirect("DeptEvent");
				
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
