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
import model.NirfDao;

/**
 * Servlet implementation class DeleteNirfReport
 */
@WebServlet("/dir1/DeleteNirfReport")
public class DeleteNirfReport extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isAQAR_Reports())
		{
			try
			{
				NirfDao dao=new NirfDao();
				
				int id=Integer.parseInt(request.getParameter("id"));
				dao.deleteNirfReport(id);
				RequestDispatcher rd=request.getRequestDispatcher("AddNIRFReport.jsp");
				request.setAttribute("det",dao.getAllNirfReport());
				request.setAttribute("dtl1",dao.getAllNirfMaster());
				
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
		if(bean.isAQAR_Reports())
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
		    	  String title=fields.get("title");
		    	   int master=Integer.parseInt(fields.get("master"));
		    	   int nrid=Integer.parseInt(fields.get("nrid"));
		    	   
		    	   NirfDao dao=new NirfDao();
		    	   dao.updateNirfReportDoc(nrid, master, title, filename);
		    	metadata.setContentLength(Long.valueOf(image.available()));
		    	metadata.setContentType(documentType);
		    	s3client.uploadfile(Credentials, bucketName, "NirfReport/"+nrid+"_"+filename, image, metadata);
		    	}
		    	else
		    	{
		    		String title=fields.get("title");
			    	   int master=Integer.parseInt(fields.get("master"));
			    	   int nrid=Integer.parseInt(fields.get("nrid"));
			    	   
			    	   NirfDao dao=new NirfDao();
			    	   dao.updateNirfReport(nrid, master, title);
					
				}
		         
		    	System.out.println("In side  post method");
		    	
		    	response.sendRedirect("AddNIRFReport");
		    	
		    	 /*out.println("<script type=\"text/javascript\">");
				   out.println("alert('Aqar Report Added Sucessfully:)');");
				   out.println("location='Aqar';");
				   out.println("</script>");*/
				
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
