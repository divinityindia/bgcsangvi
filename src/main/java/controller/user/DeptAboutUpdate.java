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
import model.DeptAboutDao;
import model.DeptDao;

/**
 * Servlet implementation class DeptAboutUpdate
 */
@WebServlet("/dir1/DeptAboutUpdate")
public class DeptAboutUpdate extends HttpServlet {
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
				
				RequestDispatcher rd=request.getRequestDispatcher("DeptAbout.jsp");
				request.setAttribute("dep",dao.getDeptList());
				DeptAboutDao dao2=new DeptAboutDao();
				if(did != 0)
				{
				request.setAttribute("img", dao2.getAllDepImg1(did));
				}
				else
				{
					request.setAttribute("img", dao2.getAllDepImg());
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
			        		if(documentType.startsWith("image/"))
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
				DeptAbout about=new DeptAbout();
		       // image=images.get(key);
		    	metadata=new ObjectMetadata();
		    	if(image != null)
		    	{
		    	metadata.setContentLength(Long.valueOf(image.available()));
		    	s3client.uploadfile(Credentials, bucketName, "AddDepAboutImg/"+fields.get("did")+"_"+filename, image, metadata);
		    	}
		    	
		    	about.setDaid(Integer.parseInt(fields.get("daid")));
		    	about.setDeptid(Integer.parseInt(fields.get("did")));
		    	about.setImgname(fields.get("imgname"));
		    	about.setImage(filename);
		    	
		    	int daid=Integer.parseInt(fields.get("daid"));
		    	int did=Integer.parseInt(fields.get("did"));
		    	
		    	DeptAboutDao dao=new DeptAboutDao();
		    	
		    
		        dao.updateDeptImg(about,daid, did);
		    	
		    // response.sendRedirect("DeptAboutDtlController?id="+getid+"&did="+fields.get("did"));
		      
		    	System.out.println("In side DeptAboutUpdate post method");
		    	
		    	response.sendRedirect("DeptAboutUpdate");
		    	
		    	
		    	/*out.println("<script type=\"text/javascript\">");
				   out.println("alert('Staff Achiv Added Sucessfully:)');");
				   out.println("location='DeptAboutUpdate';");
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
