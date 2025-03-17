package controller.user;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
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
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.services.s3.model.ObjectMetadata;

import bean.AccessBean;
import bean.EventBean;
import bean.NewsBean;
import model.EventDao;
import model.AWSDao;
import model.DeptDao;
import model.NewsDao;

/**
 * Servlet implementation class Events
 */
@WebServlet("/dir1/Events")
public class Events extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isEvent()){
			try{

				DeptDao dao=new DeptDao();
				LinkedHashMap<String, String> dept=dao.getDeptList();

				request.setAttribute("depts", dept);
				request.getRequestDispatcher("Events.jsp").forward(request, response);
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
            throws ServletException, IOException {
       PrintWriter out = response.getWriter();
       HttpSession session = request.getSession(true);
        EventBean bean=new EventBean();
       try{
            DiskFileItemFactory factory = new DiskFileItemFactory();

            ServletFileUpload sfu = new ServletFileUpload(factory);
            List items = sfu.parseRequest(request);

            Iterator iter = items.iterator();//out.print("  1");
            InputStream isp=null;
            String doctype=null;
            
            while (iter.hasNext())
            {
               FileItem item = (FileItem) iter.next();
               String fieldName = item.getFieldName();
               switch(fieldName)
               {
                  case "dept" :bean.setDID(item.getString());//out.print(" 1 "+email+"<br> ");
                       break;
                  case "category": bean.setCategory(item.getString());//out.print(" 3 "+pass+" <br>");
                       break;
                  case "eventtitle": bean.setEventtitle(item.getString());//out.print(" 3 "+pass+" <br>");
                       break;
                  case "organizedby": bean.setOrganizedby(item.getString());//out.print(" 3 "+pass+" <br>");
                       break;
                  case "organizedfor": bean.setOrganizedfor(item.getString());//out.print(" 3 "+pass+" <br>");
                  		break;
                  case "venue": bean.setVenue(item.getString());//out.print(" 3 "+pass+" <br>");
                  		break;
                  case "details": bean.setDetails(item.getString());//out.print(" 3 "+pass+" <br>");
                  		break;
                  case "instructions": bean.setInstructions(item.getString());//out.print(" 3 "+pass+" <br>");
                  		break;
                  case "url": bean.setUrl(item.getString());//out.print(" 3 "+pass+" <br>");
                  		break;
                  case "contactperson": bean.setContactperson(item.getString());//out.print(" 3 "+pass+" <br>");
                  		break;
                  case "startdate": bean.setStartdate(item.getString());//out.print(" 3 "+pass+" <br>");
                  		break;
                  case "starttime": bean.setStarttime(item.getString());//out.print(" 3 "+pass+" <br>");
                  		break;
                  case "enddate": bean.setEnddate(item.getString());//out.print(" 3 "+pass+" <br>");
                  		break;
                  case "endtime": bean.setEndtime(item.getString());//out.print(" 3 "+pass+" <br>");
                  		break;
                  case "status": bean.setStatus(item.getString());//out.print(" 3 "+pass+" <br>");
                  		break;
                  case "active": bean.setActive(item.getString());//out.print(" 3 "+pass+" <br>");
            		break;
                  case "file": isp=item.getInputStream();
                  			bean.setDocumentname(item.getName());
                  			doctype=item.getContentType();
                       break;


               }
            }
            EventDao dao=new EventDao();
            int EID=dao.addEvent(bean);
            out.print("EID="+EID);



            if(EID != 0)
            {

            	AWSDao dao2=new AWSDao();

            	Properties prop = new Properties();
    	    	InputStream propstream = new FileInputStream(getServletContext().getRealPath("/WEB-INF/s3.properties"));

    	    	prop.load(propstream);
    	    	AWSCredentials Credentials = new BasicAWSCredentials(
    						prop.getProperty("AWSAccessKeyId"),
    						prop.getProperty("AWSSecretKey"));
    	    	String bucketName=prop.getProperty("bucketName");

    	    	InputStream image=isp;
    	    	 ObjectMetadata metadata=new ObjectMetadata();
    	    	 metadata.setContentLength(Long.valueOf(image.available()));
    	    	 metadata.setContentType(doctype);
            	dao2.uploadFileToBucket(Credentials, bucketName, "events/"+EID+"/"+bean.getDocumentname(), image, metadata);


            		out.println("SUCCESS");
                session.setAttribute("result", "1");
                response.sendRedirect("Events");
            }
            else
            {
                session.setAttribute("result", "0");
                response.sendRedirect("Events");
            }


        }catch(Exception e)
        {
            e.printStackTrace(new java.io.PrintWriter(out));
        }


	}


}
