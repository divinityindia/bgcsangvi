package controller.user;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
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
import model.AWSDao;
import model.GalleryDao;

/**
 * Servlet implementation class GalleryImg
 */
@WebServlet("/dir1/GalleryImg")
public class GalleryImg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isGallery()){
			try{

				GalleryDao dao=new GalleryDao();
				LinkedHashMap<String,String> galleryMasters=dao.getAllGalleryMasters();

				request.setAttribute("gal", galleryMasters);
				request.getRequestDispatcher("GalleryImg.jsp").forward(request, response);
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

       try{

    	   String galID=null;
    	   String subGalID=null;
    	   ArrayList<String>pics=new ArrayList<>();
    	   ArrayList<InputStream>isps=new ArrayList<>();

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
               	  case "galID" :galID=item.getString();
               	  		break;
                  case "subGalID" :subGalID=item.getString();
                       break;
                  case "pics":
                	  		isps.add(item.getInputStream());
                  			pics.add(item.getName());
                  			doctype=item.getContentType();
                       break;
               }
            }

            GalleryDao dao=new GalleryDao();
            int result=dao.addGallPics(galID, subGalID, pics, isps);
            System.out.println("result="+result);




            if(result != 0)
            {

            	AWSDao dao2=new AWSDao();

            	Properties prop = new Properties();
    	    	InputStream propstream = new FileInputStream(getServletContext().getRealPath("/WEB-INF/s3.properties"));

    	    	prop.load(propstream);
    	    	AWSCredentials Credentials = new BasicAWSCredentials(
    						prop.getProperty("AWSAccessKeyId"),
    						prop.getProperty("AWSSecretKey"));
    	    	String bucketName=prop.getProperty("bucketName");

//    	    	InputStream image=isp;
    	    	 ObjectMetadata metadata=new ObjectMetadata();
//    	    	 metadata.setContentLength(Long.valueOf(image.available()));

    	    	 for(int i=0;i<pics.size();i++){
    	    		 metadata.setContentLength(Long.valueOf(isps.get(i).available()));
    	    		 metadata.setContentType(doctype);
    	    		 dao2.uploadFileToBucket(Credentials, bucketName, "gallery/"+galID+"/"+subGalID+"/"+pics.get(i), isps.get(i), metadata );
    	    	 }

            		out.println("SUCCESS");
                session.setAttribute("result", "1");
                response.sendRedirect("GalleryImg");
            }
            else
            {
                session.setAttribute("result", "0");
                response.sendRedirect("GalleryImg");
            }


        }catch(Exception e)
        {
            e.printStackTrace(new java.io.PrintWriter(out));
        }


	}

}
