package controller.emirates;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.HashMap;
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
import bean.EProfessor_basicBean;
import bean.EmpBean;
import model.AWSDao;
import model.DeptDao;
import model.EProfessorDao;
import model.EmpDao;

/**
 * Servlet implementation class UpdateEProfessorInfo
 */
@WebServlet("/Emirate-Professor/UpdateEProfessorInfo")
public class UpdateEProfessorInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		try{

			String UID = (String)session.getAttribute("UID");

			EProfessorDao dao=new EProfessorDao();
			EProfessor_basicBean info =dao.getEprofessorInfo(UID);

			request.setAttribute("info", info);
			request.getRequestDispatcher("UpdateEProfessorInfo.jsp").forward(request, response);

		}
		catch(Exception e)
        {
			System.out.println("error= "+e);
            out.print(e);
        }

	}



	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       PrintWriter out = response.getWriter();
       HttpSession session = request.getSession(true);
       EProfessor_basicBean bean=new EProfessor_basicBean();
       try{
            DiskFileItemFactory factory = new DiskFileItemFactory();

            ServletFileUpload sfu = new ServletFileUpload(factory);
            List items = sfu.parseRequest(request);

            Iterator iter = items.iterator();
            InputStream photo=null;
            InputStream resume=null;
            while (iter.hasNext())
            {
               FileItem item = (FileItem) iter.next();
               String fieldName = item.getFieldName();
               switch(fieldName)
               {
					case "photo": photo=item.getInputStream();
						bean.setPhoto(item.getName());
						break;
					case "ID" :bean.setID(Integer.parseInt(item.getString()));
						break;
					case "name" :bean.setName(item.getString());
						break;
					case "username": bean.setUserName(item.getString());
						break;
					case "password": bean.setPassword(item.getString());
						break;
					case "phno": bean.setPhno(item.getString());
						break;
					case "email": bean.setEmail(item.getString());
						break;
					case "aboutus": bean.setAboutus(item.getString());
						break;
					case "research" :bean.setResearch(item.getString());
						break;
					case "publications": bean.setPublication(item.getString());
						break;

               }
            }
            EProfessorDao dao=new EProfessorDao();
            int EID=dao.AddEmiratesProfessor(bean);
            		dao.UpdateEmiratesProfessorInfo(bean);
            System.out.println("EID="+EID);

            String eid = String.valueOf(bean.getID());

            AWSDao dao2=new AWSDao();
        	Properties prop = new Properties();
	    	InputStream propstream = new FileInputStream(getServletContext().getRealPath("/WEB-INF/s3.properties"));
	    	prop.load(propstream);
	    	AWSCredentials Credentials = new BasicAWSCredentials(
						prop.getProperty("AWSAccessKeyId"),
						prop.getProperty("AWSSecretKey"));
	    	String bucketName=prop.getProperty("bucketName");


            if(!eid.equals("0"))
            {
            	if(!bean.getPhoto().trim().equals("")){
            		dao.AddEProfessorPhoto(eid, bean.getPhoto());

            		InputStream image=photo;
       	    	 	ObjectMetadata metadata=new ObjectMetadata();
       	    	 	metadata.setContentLength(Long.valueOf(image.available()));
       	    	 	dao2.uploadFileToBucket(Credentials, bucketName, "EProfessor/"+eid+"/photo/"+bean.getPhoto(), image, metadata);
            	}


            }

            session.setAttribute("result", EID);
            response.sendRedirect("UpdateEProfessorInfo?ID="+bean.getID());



        }catch(Exception e)
        {
        	System.out.println("Servlet Catch");
            e.printStackTrace();
        }


	}

}
