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
import model.AWSDao;
import model.IQACDao;
import model.WelfareDao;

/**
 * Servlet implementation class UGC_CPE
 */
@WebServlet("/dir1/UGC_CPE")
public class UGC_CPE extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isUGC_CPE()){
			try{

				request.getRequestDispatcher("UGC_CPE.jsp").forward(request, response);
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

        String docName=null;
        String extension=null;
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
               case "fname": /*isp=item.getInputStream();*/
     			docName=item.getString();
                   break;

               
               
                  case "file": isp=item.getInputStream();
                  System.out.println(item.getName());
                  			
                  					
                  					extension = item.getName().substring(item.getName().lastIndexOf("."), item.getName().length());
                  			System.out.println(extension);
                       break;


               }
            }

            IQACDao dao=new IQACDao();
            int id=dao.addDoc(docName+extension, "UGC_CPE");

            if(id != 0)
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
            	dao2.uploadFileToBucket(Credentials, bucketName, "IQAC/UGC_CPE/"+id+"/"+docName+extension, image, metadata);


            	out.println("SUCCESS");
                session.setAttribute("result", "1");
                response.sendRedirect("UGC_CPE");
            }
            else
            {
                session.setAttribute("result", "0");
                response.sendRedirect("UGC_CPE");
            }


        }catch(Exception e)
        {
            e.printStackTrace(new java.io.PrintWriter(out));
        }
	}


}
