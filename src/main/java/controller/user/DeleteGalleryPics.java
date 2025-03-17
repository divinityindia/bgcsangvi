package controller.user;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.services.s3.model.ObjectMetadata;

import bean.AccessBean;
import model.AWSDao;
import model.GalleryDao;

/**
 * Servlet implementation class DeleteGalleryPics
 */
@WebServlet("/dir1/DeleteGalleryPics")
public class DeleteGalleryPics extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isGallery()){
			try{
				int result=0;
				String[] IDs=request.getParameterValues("chkBox");

				GalleryDao dao=new GalleryDao();
				ArrayList<String[]> hm=dao.deleteGalleryPics(IDs);

				if(hm!=null){
					result=1;

					AWSDao dao2=new AWSDao();

	            	Properties prop = new Properties();
	    	    	InputStream propstream = new FileInputStream(getServletContext().getRealPath("/WEB-INF/s3.properties"));

	    	    	prop.load(propstream);
	    	    	AWSCredentials Credentials = new BasicAWSCredentials(
	    						prop.getProperty("AWSAccessKeyId"),
	    						prop.getProperty("AWSSecretKey"));
	    	    	String bucketName=prop.getProperty("bucketName");

//	    	    	InputStream image=isp;
//	    	    	 ObjectMetadata metadata=new ObjectMetadata();
//	    	    	 metadata.setContentLength(Long.valueOf(image.available()));

	    	    	 for(int i=0;i<hm.size();i++){
	    	    		 out.print("HM="+hm.get(i));
	    	    		 System.out.println("key=>"+"gallery/"+hm.get(i)[0]+"/"+hm.get(i)[1]+"/"+hm.get(i)[2]+"");
	    	    		 dao2.deletefile(Credentials, bucketName, "gallery/"+hm.get(i)[0]+"/"+hm.get(i)[1]+"/"+hm.get(i)[2]+"" );
	    	    	 }

				}
				session.setAttribute("resultDelete", result);
				response.sendRedirect("GalleryImg");
			}
			catch(Exception e)
	        {
				System.out.println("error= "+e);
				e.printStackTrace();
	            out.print(e);
	        }
		}
		else{
			response.sendRedirect("home.jsp");
		}
	}

}
