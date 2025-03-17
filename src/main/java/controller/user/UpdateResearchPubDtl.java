package controller.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DBConnection;

import bean.AccessBean;
import model.DeptDao;
import model.ResearchDetailsDao;

/**
 * Servlet implementation class UpdateResearchPubDtl
 */
@WebServlet("/dir1/UpdateResearchPubDtl")
public class UpdateResearchPubDtl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isUGC_BSR())
		{
			Connection con = null;
			PreparedStatement pst=null;
			try
			{
				con = DBConnection.createConnection();
				
				
				  int id=Integer.parseInt(request.getParameter("id"));
				 
				
					DeptDao dao=new DeptDao();
					ResearchDetailsDao dao2=new ResearchDetailsDao();
					
					RequestDispatcher rd=request.getRequestDispatcher("UpdateResearchPubDtl.jsp");
					request.setAttribute("dtl",dao2.getAllResearchPubDtl(id));
					
					rd.forward(request, response);
				
			}
			catch(Exception e)
	        {
				
					e.printStackTrace();
				
				
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isUGC_BSR())
		{
			Connection con = null;
			PreparedStatement pst=null;
			try
			{
				con = DBConnection.createConnection();
				
				
				  int id=Integer.parseInt(request.getParameter("did"));
				  int dpid=Integer.parseInt(request.getParameter("dpid"));
				  String depnm=request.getParameter("dpnm");
				
				  String detl=request.getParameter("area");
				 
				   pst=con.prepareStatement("update researchpubdetails set deptid=?,deptname=?,details=? where rdid=?");
			    	
				   pst.setInt(1,dpid);
				   pst.setString(2,depnm);
				   pst.setString(3,detl);
				   pst.setInt(4,id);
			    	pst.executeUpdate();
						     
						    /* pst=con.prepareStatement("delete from depthomeDel where daid=?");
								
						     pst.setInt(1,id);
						     pst.executeUpdate();*/
						     
						     System.out.println("inside Dao");
			    	 
					
					
						     int did=Integer.parseInt((String) session.getAttribute("DID"));
				
						     RequestDispatcher rd=request.getRequestDispatcher("ResearchPubDetails.jsp");
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
				
					e.printStackTrace();
				
				
				System.out.println("error= "+e);
	            out.print(e);
	        }
		}
		else{
			response.sendRedirect("home.jsp");
		}
		
	}

}
