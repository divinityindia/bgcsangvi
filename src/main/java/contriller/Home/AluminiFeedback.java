package contriller.Home;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
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

import bean.AluminiFeedbackBean;
import model.AluminiFeedbackDao;


/**
 * Servlet implementation class AluminiFeedback
 */
@WebServlet("/AluminiFeedback")
public class AluminiFeedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try 
		{
			RequestDispatcher rd=request.getRequestDispatcher("AluminiFeedback.jsp");
			rd.forward(request, response);
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
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

			AluminiFeedbackBean bean=new AluminiFeedbackBean();
			bean.setAfname(fields.get("alname"));
			bean.setEmid(fields.get("emid"));
			bean.setMob(fields.get("mob"));
			bean.setGender(fields.get("g1"));
			bean.setAge(fields.get("age"));
			bean.setCourse(fields.get("course"));
			bean.setCyear(fields.get("cyear"));
			bean.setAddr(fields.get("addr"));
			bean.setOccp(fields.get("occp"));
			bean.setDeg(fields.get("deg"));
			bean.setPwork(fields.get("pwork"));
			bean.setMeb(fields.get("m1"));
			bean.setQ1(fields.get("q1"));
			bean.setQ2(fields.get("q2"));
			bean.setQ3(fields.get("q3"));
			bean.setQ4(fields.get("q4"));
			bean.setQ5(fields.get("q5"));
			bean.setQ6(fields.get("q6"));
			bean.setQ7(fields.get("q7"));
			bean.setQ8(fields.get("q8"));
			bean.setQ9(fields.get("q9"));
			bean.setQ10(fields.get("q10"));
			bean.setQ11(fields.get("q11"));
			bean.setQ12(fields.get("q12"));
			bean.setSug(fields.get("suggestions"));
			bean.setDocument(imagename);
			
			AluminiFeedbackDao dao=new AluminiFeedbackDao();
			
			int rid=dao.addAluminiFeedBack(bean);
			
			
	       // image=images.get(key);
	    	metadata=new ObjectMetadata();
	    	if(image != null)
	    	{
	    	metadata.setContentLength(Long.valueOf(image.available()));
	    	s3client.uploadfile(Credentials, bucketName, "AluminiFeedbackPic/"+rid+"_"+imagename, image, metadata);
	    	}
	    	HttpSession session = request.getSession(true);
	 
	    	session.setAttribute("erMsg", "Alumini Feedback Submited Successfully");
	    	
	         response.sendRedirect("AluminiFeedback");
	    	System.out.println("In side AluminiFeedback post method");
	    	
	    	
	    	
	    	
	    	/* out.println("<script type=\"text/javascript\">");
			   out.println("alert('Staff Achiv Added Sucessfully:)');");
			   out.println("location='DeptAboutController';");
			   out.println("</script>");*/
			
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}

}
