package contriller.Home;

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

import bean.AluminiBean;
import bean.NewsBean;
import model.AWSDao;
import model.AlumniDao;
import model.DeptDao;
import model.EventDao;
import model.NewsDao;

/**
 * Servlet implementation class AlumniStudentRegi
 */
@WebServlet("/AlumniStudentRegi")
public class AlumniStudentRegi extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		try{

			DeptDao dao=new DeptDao();
			LinkedHashMap<String, String> dept=dao.getDeptList();

			request.setAttribute("depts", dept);
			request.getRequestDispatcher("AlumniStudentRegi.jsp").forward(request, response);
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
        AluminiBean bean=new AluminiBean();
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
                  case "name" :bean.setName(item.getString());
                       break;
                  case "email": bean.setEmail(item.getString());
                       break;
                  case "password": bean.setPassword(item.getString());
                       break;
                  case "dob": bean.setDob(item.getString());
                       break;
                  case "photo": isp=item.getInputStream();
                  			bean.setPhoto(item.getName());
                       break;
                  case "gender": bean.setGender(item.getString());
                       break;
                  case "phone": bean.setPhone(item.getString());
                       break;
                  case "caddress" :bean.setCaddress(item.getString());
                  		break;
                  case "paddress": bean.setPaddress(item.getString());
                  		break;
                  case "course": bean.setCourse(item.getString());
                  		break;
                  case "dept": bean.setDept(item.getString());
                  		break;
                  case "pyear" :bean.setPyear(item.getString());
                  		break;
                  case "occupation": bean.setOccupation(item.getString());
                  		break;
                  case "otherocc": bean.setOtherocc(item.getString());
                  		break;
                  case "nameoforg": bean.setNameoforg(item.getString());
                  		break;
                  case "country": bean.setCountry(item.getString());
            			break;


               }
            }
            AlumniDao dao=new AlumniDao();
            int nid=dao.addAlumniStudent(bean);

            System.out.println("Nid======="+nid);

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
            	dao2.uploadFileToBucket(Credentials, bucketName, "alumni/"+nid+"/"+bean.getPhoto(), image, metadata);


            		out.println("SUCCESS");
                session.setAttribute("result", "1");
//                session.setAttribute("ID", bean.getEmail());
                response.sendRedirect("AlumniStudentRegi");
            }
            else
            {
                session.setAttribute("result", "0");
                response.sendRedirect("AlumniStudentRegi");
            }


        }catch(Exception e)
        {
            e.printStackTrace(new java.io.PrintWriter(out));
        }


	}

}
