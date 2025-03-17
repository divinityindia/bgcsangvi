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

import bean.QpapersBean;
import model.AWSDao;
import model.QpapersDao;

/**
 * Servlet implementation class UpdateQpaper
 */
@WebServlet("/dir1/UpdateQpaper")
public class UpdateQpaper extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       PrintWriter out = response.getWriter();
       HttpSession session = request.getSession(true);
        QpapersBean bean=new QpapersBean();
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
                  case "dept" :bean.setDID(Integer.parseInt(item.getString()));//out.print(" 1 "+email+"<br> ");
                       break;
                  case "year": bean.setYear(item.getString());//out.print(" 3 "+pass+" <br>");
                       break;
                  case "pattern": bean.setPattern(item.getString());//out.print(" 3 "+pass+" <br>");
                       break;
                  case "sub": bean.setSub(item.getString());//out.print(" 3 "+pass+" <br>");
                       break;
                  case "file": isp=item.getInputStream();
                  			bean.setDocName(item.getName());
                       break;
                  case "exam": bean.setExam(item.getString());//out.print(" 25 "+skilled+" <br>");
                       break;
                  case "QPID": bean.setQPID(Integer.parseInt(item.getString()));//out.print(" 25 "+skilled+" <br>");
              			break;


               }
            }
            QpapersDao dao=new QpapersDao();
            int qpid=dao.addQpaper(bean);

            if(qpid != 0)
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
            	dao2.uploadFileToBucket(Credentials, bucketName, "qpapers/"+bean.getQPID()+"/"+bean.getDocName(), image, metadata);


            		out.println("SUCCESS");
                session.setAttribute("resultUpdate", "1");
                response.sendRedirect("OldQPaper");
            }
            else
            {
                session.setAttribute("resultUpdate", "0");
                response.sendRedirect("OldQPaper");
            }


        }catch(Exception e)
        {
            e.printStackTrace(new java.io.PrintWriter(out));
        }


	}

}
