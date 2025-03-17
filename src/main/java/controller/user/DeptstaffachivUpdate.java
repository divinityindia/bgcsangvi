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
import bean.StaffAchiv;
import model.DeptDao;
import model.StaffAchivDao;

/**
 * Servlet implementation class DeptstaffachivUpdate
 */
@WebServlet("/dir1/DeptstaffachivUpdate")
public class DeptstaffachivUpdate extends HttpServlet {
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
				RequestDispatcher rd=request.getRequestDispatcher("deptstaffachiv.jsp");
				request.setAttribute("dep",dao.getDeptList());
				StaffAchivDao dao2=new StaffAchivDao();
				request.setAttribute("det",dao2.getAllStaffAchiv() );
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
				FileItemFactory factory = new DiskFileItemFactory();
		        ServletFileUpload upload = new ServletFileUpload(factory);
		        Iterator<FileItem> iterator = null;
		        
				try 
				{
					iterator = upload.parseRequest(request).iterator();
				} 
				catch (FileUploadException e)
				{
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				InputStream image =null;
				//HashMap<String, Object> m = new HashMap<>();
				HashMap<String, String> fields = new HashMap<>();
				String documentType = "";
				String filename="";
		        
				
				  while (iterator.hasNext()) 
				  {
			        	FileItem item = iterator.next();
			        	if (!item.isFormField())
			        	{
			        		documentType=item.getContentType();
		      			if(documentType.equals("application/pdf"))
		      			{
		      				
		      				filename=item.getName();
		      				image=item.getInputStream();
		      			}
		      			
		             	}
			        	else
		      			{
		      				fields.put(item.getFieldName(), item.getString());
		      				System.out.println(item.getString());
		        		}
		      	  }
				
				Properties prop = new Properties();
		    	
		    	InputStream propstream = new FileInputStream(getServletContext().getRealPath("WEB-INF/s3.properties"));
		    	prop.load(propstream);
		    	AWSCredentials Credentials = new BasicAWSCredentials(
							prop.getProperty("AWSAccessKeyId"), 
							prop.getProperty("AWSSecretKey"));
		    	String bucketName=prop.getProperty("bucketName");
				UploadObjectSingleOperation s3client = new UploadObjectSingleOperation();
				
				
				ObjectMetadata metadata=null;
		        
		       // image=images.get(key);
		    	metadata=new ObjectMetadata();
		    	if(image != null)
		    	{
		    	metadata.setContentLength(Long.valueOf(image.available()));
		    	s3client.uploadfile(Credentials, bucketName, "AddStaffAchiv/"+fields.get("didname")+"_"+filename, image, metadata);
		    	}
		         StaffAchiv achiv=new StaffAchiv();
		         achiv.setDeptid(Integer.parseInt(fields.get("didname")));
		        // achiv.setDeptname(fields.get("deptname"));
		         achiv.setStaffname(fields.get("staffname"));
		         achiv.setAwardname(fields.get("awardname"));
		         achiv.setDetails(fields.get("dtl"));
		         achiv.setDocument(filename);
		    	System.out.println("File Name:-"+filename);
		         
		         int said=Integer.parseInt(fields.get("said"));
		         StaffAchivDao dao=new StaffAchivDao();
		         dao.updateDeptStaffAchiv(achiv, said);
		    	System.out.println("In side deptstaffachiv post method");
		    	
		    	response.sendRedirect("DeptstaffachivUpdate");
		    	
		    	
		    	/* out.println("<script type=\"text/javascript\">");
				   out.println("alert('Staff Achiv Updated Sucessfully:)');");
				   out.println("location='DeptstaffachivUpdate';");
				   out.println("</script>");*/
				
			}
			catch(Exception e)
	        {
				e.printStackTrace();
				/*System.out.println("error= "+e);
	            out.print(e);*/
	        }
		}
		else{
			response.sendRedirect("home.jsp");
		}
		
		
	}

}
