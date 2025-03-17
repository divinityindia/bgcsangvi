package controller.user;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.BasicAWSCredentials;

import bean.AccessBean;
import model.AWSDao;
import model.GalleryDao;
import model.NaacSsrDao;

/**
 * Servlet implementation class DeleteNaacDoc
 */
@WebServlet("/dir1/DeleteNaacDoc")
public class DeleteNaacDoc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isHd()){
			try{
				int result=0;
				String[] IDs=request.getParameterValues("chkBox");

				NaacSsrDao dao=new NaacSsrDao();
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
	    	    		 System.out.println("key=>"+"Naac/Document/"+hm.get(i)[0]+"/"+hm.get(i)[1]+"/"+hm.get(i)[2]+"");
	    	    		 dao2.deletefile(Credentials, bucketName, "Naac/Document/"+hm.get(i)[0]+"/"+hm.get(i)[1]+"/"+hm.get(i)[2]+"" );
	    	    	 }

				}
				session.setAttribute("resultDelete", result);
				response.sendRedirect("NaacSsrDeocument");
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
