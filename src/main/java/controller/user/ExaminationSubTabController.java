package controller.user;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
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
import bean.ExaminationSubBean;
import model.ExaminationSubDao;

/**
 * Servlet implementation class ExaminationSubTabController
 */
@WebServlet("/dir1/ExaminationSubTabController")
public class ExaminationSubTabController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isExam()){
			try
			{
				String tab=request.getParameter("tabnm");
				System.out.println("Examinataion Sub Tab Name ==>"+tab);
				
				
				ExaminationSubDao dao=new ExaminationSubDao();
				List<ExaminationSubBean> subtablist=null;
				if(tab.equals("TimeTable"))
				{
					System.out.println("Inside Timetable Get...");
					
				     subtablist=dao.getAllExamTimeTable();
				     request.setAttribute("head", "Examination Time Table");
				     request.setAttribute("tab", tab);
				}
				else if (tab.equals("AcademicCalender")) 
				{
					System.out.println("Inside AcademicCalender Get...");
					 subtablist=dao.getAllExamAcademicCalender();
				     request.setAttribute("head", "Examination Academic Calender");
				     request.setAttribute("tab", tab);
				}
				else if (tab.equals("Notices")) 
				{
					System.out.println("Inside Notices Get...");
					 subtablist=dao.getAllExamNotices();
				     request.setAttribute("head", "Examination Notices");
				     request.setAttribute("tab", tab);
				}
				else if (tab.equals("ResultSummary")) 
				{
					System.out.println("Inside ResultSummary Get...");
					 subtablist=dao.getAllExamResultSummary();
				     request.setAttribute("head", "Examination Result Summary");
				     request.setAttribute("tab", tab);
				}
				else if (tab.equals("AnnualResultReport")) 
				{
					System.out.println("Inside AnnualResultReport Get...");
					 subtablist=dao.getAllExamAnnualResultReport();
				     request.setAttribute("head", "Examination Annual Result Report");
				     request.setAttribute("tab", tab);
				}
				else
				{
					System.out.println("Inside  Get Method Only...");
				}
				RequestDispatcher rd=request.getRequestDispatcher("ExaminationSubTab.jsp");
                request.setAttribute("subtabdtls", subtablist);
                rd.forward(request, response);
			}
			catch(Exception e)
	        {
				System.out.println("error= "+e);
	            
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
		if(bean.isExam())
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
				  
				  ExaminationSubBean subBean=new ExaminationSubBean();
				    subBean.setTitle(fields.get("title"));
				   subBean.setDocument(filename);
                    String tabnm=fields.get("tabnm");
                    System.out.println("Inside Post Sub Tab Name==>"+tabnm);
				  
				
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
		    	  ExaminationSubDao dao=new ExaminationSubDao();
				 
			    	
			    	if(tabnm.equals("TimeTable"))
					{
						System.out.println("Inside Timetable Post...");
						
						int id=dao.addExamTimeTable(fields.get("title"),filename);
				    	metadata.setContentLength(Long.valueOf(image.available()));
				    	metadata.setContentType("application/pdf");
				    	s3client.uploadfile(Credentials, bucketName, "Exmn_"+tabnm+"/"+id+"_"+filename, image, metadata);
					}
					else if (tabnm.equals("AcademicCalender")) 
					{
						System.out.println("Inside AcademicCalender Post...");
						int id=dao.addExamAcademicCalender(fields.get("title"),filename);
				    	metadata.setContentLength(Long.valueOf(image.available()));
				    	metadata.setContentType("application/pdf");
				    	s3client.uploadfile(Credentials, bucketName, "Exmn_"+tabnm+"/"+id+"_"+filename, image, metadata);
					}
					else if (tabnm.equals("Notices")) 
					{
						System.out.println("Inside Notices Post...");
						int id=dao.addExamNotices(fields.get("title"),filename);
				    	metadata.setContentLength(Long.valueOf(image.available()));
				    	metadata.setContentType("application/pdf");
				    	s3client.uploadfile(Credentials, bucketName, "Exmn_"+tabnm+"/"+id+"_"+filename, image, metadata);
					}
					else if (tabnm.equals("ResultSummary")) 
					{
						System.out.println("Inside ResultSummary Post...");
						int id=dao.addExamResultSummary(fields.get("title"),filename);
				    	metadata.setContentLength(Long.valueOf(image.available()));
				    	metadata.setContentType("application/pdf");
				    	s3client.uploadfile(Credentials, bucketName, "Exmn_"+tabnm+"/"+id+"_"+filename, image, metadata);
					}
					else if (tabnm.equals("AnnualResultReport")) 
					{
						System.out.println("Inside AnnualResultReport Post...");
						int id=dao.addExamAnnualResultReport(fields.get("title"),filename);
				    	metadata.setContentLength(Long.valueOf(image.available()));
				    	metadata.setContentType("application/pdf");
				    	s3client.uploadfile(Credentials, bucketName, "Exmn_"+tabnm+"/"+id+"_"+filename, image, metadata);
					}
					else
					{
						System.out.println("Inside  Post Method Only...");
					}
		    	}
		    	
		    	
		        
		    	session.setAttribute("erMsg", "Examination Document Added Successfully");
		    	
		    	response.sendRedirect("ExaminationSubTabController?tabnm="+tabnm);
		    	
		    	
		    	/* out.println("<script type=\"text/javascript\">");
				   out.println("alert('Staff Achiv Added Sucessfully:)');");
				   out.println("location='DeptRserchPublicationUpdate';");
				   out.println("</script>");
*/				
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
