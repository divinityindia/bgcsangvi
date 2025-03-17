package controller.user;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.UploadObjectSingleOperation;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.services.s3.model.ObjectMetadata;

import bean.AccessBean;
import bean.ResearchDetailsBean;
import bean.ResearchUploadBean;
import model.DeptDao;
import model.ResearchDetailsDao;
import model.ResearchUploadDao;

/**
 * Servlet implementation class ResearchDetails
 */
@WebServlet("/dir1/ResearchDetails")
public class ResearchDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isUGC_BSR()){
			try
			{
				
				 int did=Integer.parseInt((String) session.getAttribute("DID"));
			 RequestDispatcher rd=request.getRequestDispatcher("ResearchDetails.jsp");
			 ResearchDetailsDao dao=new ResearchDetailsDao();
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
                 dao.addResearchDetl(deptid, deptname, dtl);
		    	
		    	response.sendRedirect("ResearchDetails");
		    	
		    	
		    	
			
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
