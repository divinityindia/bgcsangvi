package controller.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DBConnection;

import bean.AccessBean;
import model.DeptAboutDao;
import model.DeptDao;

/**
 * Servlet implementation class DepartmentDetl
 */
@WebServlet("/dir1/DepartmentDetl")
public class DepartmentDetl extends HttpServlet {
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
				
				int did=Integer.parseInt((String) session.getAttribute("DID"));
				DeptAboutDao dao2=new DeptAboutDao();
				RequestDispatcher rd=request.getRequestDispatcher("DeptAboutDtl.jsp");
				request.setAttribute("dep",dao.getDeptList());
                if(did!= 0)
                {
				request.setAttribute("dtl", dao2.getAllDepDtl1(did));
                }
                else
                {
                	request.setAttribute("dtl", dao2.getAllDepDtl());
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
		{	try
			{
				
             System.out.println("Inside DepartmentDetl");

				int did=Integer.parseInt(request.getParameter("did"));
			//	int id=Integer.parseInt(request.getParameter("id"));
				
				System.out.println("Did DepartmentDetl="+did);
				
				String hed[]=request.getParameterValues("heading");
				  String detl[]=request.getParameterValues("details");
				  Connection con = DBConnection.createConnection();
					
				  DeptDao dao2=new DeptDao();
			    	String dpname=dao2.DeptName(did);
				  
				  
					String sql="INSERT INTO depthomeDel(deptid,deptname,heading,details) VALUES(?,?,?,?);";
					 PreparedStatement pst=con.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
					 for(int i=0;i<hed.length;i++)
					 {
				     pst.setInt(1,did);
				     pst.setString(2,dpname);
					 pst.setString(3,hed[i]);
					 pst.setString(4,detl[i]);
					 
					
					pst.executeUpdate();
				  
					 }
				  
					
				response.sendRedirect("DepartmentDetl");
				
				
				
			}
			catch(Exception e)
	        {
				e.printStackTrace();
	        }
		
	}
	else{
		response.sendRedirect("home.jsp");
	}
	}
}
