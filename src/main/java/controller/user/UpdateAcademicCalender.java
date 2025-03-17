package controller.user;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Iterator;
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

import model.AWSDao;
import model.AcademicCalenderDao;

/**
 * Servlet implementation class UpdateAcademicCalender
 */
@WebServlet("/dir1/UpdateAcademicCalender")
public class UpdateAcademicCalender extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       PrintWriter out = response.getWriter();
       HttpSession session = request.getSession(true);

       String title=null;
       String filename=null;
       String ACID=null;
       try{
            DiskFileItemFactory factory = new DiskFileItemFactory();

            ServletFileUpload sfu = new ServletFileUpload(factory);
            List items = sfu.parseRequest(request);

            Iterator iter = items.iterator();//out.print("  1");
            InputStream isp=null;
            while (iter.hasNext())
            {
               FileItem item = (FileItem) iter.next();
               String fieldName = item.getFieldName();
               switch(fieldName)
               {
                  case "title": title=item.getString();
                       break;
                  case "ACID": ACID=item.getString();
              			break;
                  case "file": isp=item.getInputStream();
                  			filename=item.getName();
                       break;
               }
            }
            AcademicCalenderDao dao=new AcademicCalenderDao();
            int aid=dao.updateAcademicCalender(ACID,title,filename);
             System.out.println("file name="+filename+" "+aid);


            if(aid != 0)
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
    	    	 metadata.setContentType("application/pdf");
            	dao2.uploadFileToBucket(Credentials, bucketName,"academic_calender/"+ACID+"/"+filename, image, metadata);


            		out.println("SUCCESS");
                session.setAttribute("resultUpdate", "1");
                response.sendRedirect("AcademicCalender");
            }
            else
            {
                session.setAttribute("result", "0");
                response.sendRedirect("AcademicCalender");
            }


        }catch(Exception e)
        {
            e.printStackTrace(new java.io.PrintWriter(out));
        }


	}

}
