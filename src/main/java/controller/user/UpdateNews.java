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

import bean.AccessBean;
import bean.NewsBean;
import model.AWSDao;
import model.NewsDao;
import model.UserDao;

/**
 * Servlet implementation class UpdateNews
 */
@WebServlet("/dir1/UpdateNews")
public class UpdateNews extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean beanAc=(AccessBean)session.getAttribute("right");
		if(beanAc.isNews()){
			try{

				NewsBean bean=new NewsBean();

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
		               	  case "NID" :bean.setNID(Integer.parseInt(item.getString()));//out.print(" 1 "+email+"<br> ");
                               break;
		                  case "dept" :bean.setDID(Integer.parseInt(item.getString()));//out.print(" 1 "+email+"<br> ");
		                       break;
		                  case "title": bean.setNewstitle(item.getString());//out.print(" 3 "+pass+" <br>");
		                       break;
		                  case "sdate": bean.setStartdate(item.getString());//out.print(" 3 "+pass+" <br>");
		                       break;
		                  case "details": bean.setDetails(item.getString());//out.print(" 3 "+pass+" <br>");
		                       break;
		                  case "file": isp=item.getInputStream();
		                  			bean.setDocumentname(item.getName());
		                       break;
		                  case "status": bean.setStatus(item.getString());//out.print(" 25 "+skilled+" <br>");
		                       break;
		                  case "link": bean.setLink(item.getString());//out.print(" 26 "+nonSkilled+" <br>");
		                       break;
		                  case "active": bean.setAcative(item.getString());//out.print(" 26 "+nonSkilled+" <br>");
		                  break;
		                  case "edate": bean.setEnddate(item.getString());//out.print(" 26 "+nonSkilled+" <br>");
		                  break;


		               }
		            }
		            NewsDao dao=new NewsDao();
		            int nid=dao.updateNews(bean);



		            if(nid != 0)
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
		            	dao2.uploadFileToBucket(Credentials, bucketName, "news/"+bean.getNID()+"/"+bean.getDocumentname(), image, metadata);


		            		out.println("SUCCESS");
		                session.setAttribute("resultUpdate", "1");
//		                session.setAttribute("ID", bean.getEmail());
		                response.sendRedirect("News");
		            }
		            else
		            {
		                session.setAttribute("resultUpdate", "0");
		                response.sendRedirect("News");
		            }
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
