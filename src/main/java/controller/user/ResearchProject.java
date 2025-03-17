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
import bean.ResearchProjectBean;
import bean.ShortTermCourseBean;
import model.AWSDao;
import model.DeptDao;
import model.ResearchDao;
import model.ShortTermCourseDao;

/**
 * Servlet implementation class ResearchProject
 */
@WebServlet("/dir1/ResearchProject")
public class ResearchProject extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isResearch()){
			try{

				request.getRequestDispatcher("ResearchProject.jsp").forward(request, response);
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
        ResearchProjectBean bean=new ResearchProjectBean();
       try{
            DiskFileItemFactory factory = new DiskFileItemFactory();

            ServletFileUpload sfu = new ServletFileUpload(factory);
            List items = sfu.parseRequest(request);

            Iterator iter = items.iterator();
            InputStream isp=null;
            String type=null;
            while (iter.hasNext())
            {
               FileItem item = (FileItem) iter.next();
               String fieldName = item.getFieldName();
               switch(fieldName)
               {
           		  case "ID" :bean.setID(Integer.parseInt(item.getString()));
                       break;
                  case "proType" :bean.setProType(item.getString());
                       break;
                  case "title": bean.setTitle(item.getString());
                       break;
                  case "details": bean.setDetails(item.getString());
                       break;
                  case "file": isp=item.getInputStream();
                  			bean.setDocumentname(item.getName());
                       break;
                  case "type": type=item.getString();
                  		break;
               }
            }
            ResearchDao dao=new ResearchDao();
            int resultID=dao.AddResearchProject(bean);

            if(resultID != 0)
            {
            	int SID=bean.getID();
            	if(type.equals("result")){SID=resultID;}

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
            	dao2.uploadFileToBucket(Credentials, bucketName, "research_project/"+SID+"/"+bean.getDocumentname(), image, metadata);


            		out.println("SUCCESS");
                session.setAttribute(type, "1");
//                session.setAttribute("ID", bean.getEmail());
                response.sendRedirect("ResearchProject");
            }
            else
            {
                session.setAttribute(type, "0");
                response.sendRedirect("ResearchProject");
            }


        }catch(Exception e)
        {
            e.printStackTrace(new java.io.PrintWriter(out));
        }
	}

}
