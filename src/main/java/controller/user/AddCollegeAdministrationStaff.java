package controller.user;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
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
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.services.s3.model.ObjectMetadata;

import bean.AccessBean;
import bean.AddCollegeAdministrationStaffBean;
import bean.DeptAbout;
import bean.EmpBean;
import model.AWSDao;
import model.AddCollegeAdministrationStaffDao;
import model.DeptAboutDao;
import model.DeptDao;
import model.EmpDao;

/**
 * Servlet implementation class AddCollegeAdministrationStaff
 */
@WebServlet("/dir1/AddCollegeAdministrationStaff")
public class AddCollegeAdministrationStaff extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isAddemployee()){
			try{

				DeptDao dao=new DeptDao();
				LinkedHashMap<String, String> dept=dao.getDeptList();

				EmpDao dao2=new EmpDao();
				HashMap<String, String> desig=dao2.getAllDesignations();
				
				AddCollegeAdministrationStaffDao dao3=new AddCollegeAdministrationStaffDao();
				request.setAttribute("cat",dao3.getAllDepStaff());

				request.setAttribute("depts", dept);
				request.setAttribute("desig", desig);
				request.getRequestDispatcher("AddCollegeAdministrationStaff.jsp").forward(request, response);
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

	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
	{
       PrintWriter out = response.getWriter();
       HttpSession session = request.getSession(true);
        EmpBean bean=new EmpBean();
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
		     AddCollegeAdministrationStaffBean bean2=new AddCollegeAdministrationStaffBean();
			
	       // image=images.get(key);
	    	
	    	bean2.setPdeaid(Integer.parseInt(fields.get("pdid")));
	    	bean2.setSal(fields.get("sal"));
	    	bean2.setLname(fields.get("lnm"));
	    	bean2.setFname(fields.get("fnm"));
	    	bean2.setMname(fields.get("mnm"));
	    	bean2.setDesignation(fields.get("deg"));
	    	bean2.setQulification(fields.get("qul"));
	    	bean2.setEmailid(fields.get("eid"));
	    	bean2.setMobileno(fields.get("mob"));
	    	bean2.setImgname(filename);
	    	
	    	AddCollegeAdministrationStaffDao dao=new AddCollegeAdministrationStaffDao();
	    	int eid=dao.addStaff(bean2);
	    	System.out.println("Eid==="+eid);
	     
	     metadata=new ObjectMetadata();
	    	if(image != null)
	    	{
	    	metadata.setContentLength(Long.valueOf(image.available()));
	    	
	    	s3client.uploadfile(Credentials, bucketName, "AddCollegeAdministrationStaffImage/"+eid+"_"+filename, image, metadata);
	    	}
	     response.sendRedirect("AddCollegeAdministrationStaff");
	     
	    /* DeptDao dao2=new DeptDao();
	    	String dpname=dao2.DeptName(Integer.parseInt(fields.get("did")));
	     response.sendRedirect("DeptAboutDtlController?id="+getid+"&did="+fields.get("did")+"&dnm="+dpname);*/
	      
	    	System.out.println("In side AddCollegeAdministrationStaff post method");
	    	
	    	
	    	
	    	
	    	/* out.println("<script type=\"text/javascript\">");
			   out.println("alert('Staff Achiv Added Sucessfully:)');");
			   out.println("location='DeptAboutController';");
			   out.println("</script>");*/
            	
           


        }catch(Exception e)
        {
        	System.out.println("Servlet Catch");
            e.printStackTrace();
        }


	}

}
