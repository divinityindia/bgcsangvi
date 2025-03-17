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
import bean.DeptAbout;
import bean.DeptEventPic;
import model.DeptAboutDao;
import model.DeptDao;
import model.DeptEventDao;
import model.DeptEventPicDao;

/**
 * Servlet implementation class DeptEventPics
 */
@WebServlet("/dir1/DeptEventPics")
public class DeptEventPics extends HttpServlet {
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
				RequestDispatcher rd=request.getRequestDispatcher("DeptEventPics.jsp");
				request.setAttribute("dep",dao.getDeptList());
				 int did=Integer.parseInt((String) session.getAttribute("DID"));
				DeptEventDao dao2=new DeptEventDao();
				DeptEventPicDao dao3=new DeptEventPicDao();
				if(did!=0)
				{
				request.setAttribute("cap",dao2.getAllDepEvent1(did));
				
				
				request.setAttribute("cat",dao3.getAllDepPic1(did));
				}
				else
				{
					request.setAttribute("cap",dao2.getAllDepEvent());
					
					
					request.setAttribute("cat",dao3.getAllDepPic());
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
			System.out.println("Insidddddddd");
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
				String imagename="";
		        
				
				  while (iterator.hasNext()) 
				  {
			        	FileItem item = iterator.next();
			        	if (!item.isFormField())
			        	{
			        		documentType=item.getContentType();
		      			if(documentType.startsWith("image/"))
		      			{
		      				imagename=item.getName();
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
		    	s3client.uploadfile(Credentials, bucketName, "DeptEventpics/"+fields.get("mid")+"_"+imagename, image, metadata);
		    	}
		    	DeptEventPic about=new DeptEventPic();
		    	about.setMid(Integer.parseInt(fields.get("mid")));
		    	about.setDeptid(Integer.parseInt(fields.get("did")));
		 
		    	about.setImage(imagename);
		    	
		    	DeptEventPicDao dao=new DeptEventPicDao();
		    	
		    
		          dao.addDeptPic(about);
		    	
		         response.sendRedirect("DeptEventPics");
		    	System.out.println("In side DeptEventPics post method");
		    	
		    	
		    	
		    	
		    	/* out.println("<script type=\"text/javascript\">");
				   out.println("alert('Staff Achiv Added Sucessfully:)');");
				   out.println("location='DeptAboutController';");
				   out.println("</script>");*/
				
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
