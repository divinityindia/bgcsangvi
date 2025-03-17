package controller.user;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Properties;

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
import com.dateParse;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.services.s3.model.ObjectMetadata;

import bean.AccessBean;
import bean.DbtStarNoticesBean;
import model.DbtStarNoticesDao;

/**
 * Servlet implementation class DBTStarCollegeActivities
 */
@WebServlet("/DBTStarCollegeActivities")
public class DBTStarCollegeActivities extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isDBT_STAR())
		{
			try
			{
				DbtStarNoticesDao dao=new DbtStarNoticesDao();
				request.setAttribute("dbdtl",dao.getAllDBTStarNotices());

				request.getRequestDispatcher("DBTStarCollegeActivities.jsp").forward(request, response);
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
		if(bean.isDBT_STAR())
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
			        		filename=item.getName();
		      				image=item.getInputStream();
//		      			if(documentType.equals("application/pdf"))
//		      			{
//		      				
//		      				filename=item.getName();
//		      				image=item.getInputStream();
//		      			}
//		      			
		             	}
			        	else
		      			{
		      				fields.put(item.getFieldName(), item.getString());
		      				System.out.println(item.getString());
		        		}
		      	  }
				  
				    DbtStarNoticesBean bean2=new DbtStarNoticesBean();
				    bean2.setNtitle(fields.get("ntlt"));
				    bean2.setSdate(dateParse.getMysqlDate(fields.get("sdate")));
				    bean2.setEdate(dateParse.getMysqlDate(fields.get("edate")));
				    bean2.setBoption(fields.get("boption"));
				   
				   bean2.setDocument(filename);
                    
				  
				
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
		    	
		    	DbtStarNoticesDao dao=new DbtStarNoticesDao();
				 int id=dao.addDBTStarNotices(bean2);
			    	metadata.setContentLength(Long.valueOf(image.available()));
			    	metadata.setContentType(documentType);
			    	s3client.uploadfile(Credentials, bucketName,"DBT_Star_Activities/"+id+"_"+filename, image, metadata);
		    	
		    	response.sendRedirect("DBTStarCollegeActivities");
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
