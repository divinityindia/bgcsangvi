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
import bean.NewsBean;
import model.AWSDao;
import model.DeptDao;
import model.NewsDao;

/**
 * Servlet implementation class Notice
 */
@WebServlet("/dir1/Notice")
public class Notice extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isNews()){
			try{

				DeptDao dao=new DeptDao();
				LinkedHashMap<String, String> dept=dao.getDeptList();

				request.setAttribute("depts", dept);
				request.getRequestDispatcher("Notice.jsp").forward(request, response);
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
        NewsBean bean=new NewsBean();
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
                  			doctype=item.getContentType();
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
            int nid=dao.addNotice(bean);



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
    	    	 metadata.setContentType(doctype);
            	dao2.uploadFileToBucket(Credentials, bucketName, "notice/"+nid+"/"+bean.getDocumentname(), image, metadata);


            		out.println("SUCCESS");
                session.setAttribute("result", "1");
//                session.setAttribute("ID", bean.getEmail());
                response.sendRedirect("Notice");
            }
            else
            {
                session.setAttribute("result", "0");
                response.sendRedirect("Notice");
            }


        }catch(Exception e)
        {
            e.printStackTrace(new java.io.PrintWriter(out));
        }


	}




}
