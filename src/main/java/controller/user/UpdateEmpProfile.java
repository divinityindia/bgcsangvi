package controller.user;

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
import bean.EmpBean;
import model.AWSDao;
import model.DeptDao;
import model.EmpDao;

/**
 * Servlet implementation class UpdateEmpProfile
 */
@WebServlet("/dir1/UpdateEmpProfile")
public class UpdateEmpProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isUpdateemployee()){
			try{

				String EID= request.getParameter("eid");

				DeptDao dao=new DeptDao();
				LinkedHashMap<String, String> dept=dao.getDeptList();

				EmpDao dao2=new EmpDao();
				HashMap<String, String> desig=dao2.getAllDesignations();
				EmpBean Ebean=dao2.getEmpProfileInfo(EID);

				request.setAttribute("depts", dept);
				request.setAttribute("desig", desig);
				request.setAttribute("bean", Ebean);
				request.getRequestDispatcher("UpdateEmpProfile.jsp").forward(request, response);
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
        EmpBean bean=new EmpBean();
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
					case "resume": resume=item.getInputStream();
						bean.setResume(item.getName());
						break;
					case "EID" :bean.setEID(item.getString());
						break;
					case "preName": bean.setSal(item.getString());
						break;
					case "firstName": bean.setFname(item.getString());
						break;
					case "middleName": bean.setMname(item.getString());
						break;
					case "lastName": bean.setLname(item.getString());
						break;
					case "bcudid": bean.setBcudid(item.getString());
						break;
					case "pdeaid" :bean.setPdeaid(item.getString());
						break;
					case "panno": bean.setPanno(item.getString());
						break;
					case "adharno": bean.setAdharno(item.getString());
						break;
					case "dob": bean.setDob(item.getString());
						break;
					case "gender": bean.setGender(item.getString());
						break;
					case "religion": bean.setReligion(item.getString());
						break;
					case "category" :bean.setCategory(item.getString());
						break;
					case "caste": bean.setCaste(item.getString());
						break;
					case "mstatus": bean.setMstatus(item.getString());
						break;
					case "contact1": bean.setContact1(item.getString());
						break;
					case "contact2": bean.setContact2(item.getString());
						break;
					case "mail": bean.setMail(item.getString());
						break;
					case "curraddress" :bean.setCurraddress(item.getString());
						break;
					case "peraddress": bean.setPeraddress(item.getString());
						break;
					case "cstate": bean.setCstate(item.getString());
						break;
					case "pstate": bean.setPstate(item.getString());
						break;
					case "ccity": bean.setCcity(item.getString());
						break;
					case "pcity": bean.setPcity(item.getString());
						break;
					case "cpincode" :bean.setCpincode(item.getString());
						break;
					case "ppincode": bean.setPpincode(item.getString());
						break;
					case "appdept": bean.setAppdept(item.getString());
						break;
					case "designation": bean.setDesignation(item.getString());
						break;
					case "extrapost": bean.setExtrapost(item.getString());
						break;
					case "doj": bean.setDoj(item.getString());
						break;
					case "noa" :bean.setNoa(item.getString());
						break;
					case "noj": bean.setNoj(item.getString());
						break;
					case "squal": bean.setSqual(item.getString());
						break;
					case "texp": bean.setTexp(item.getString());
						break;
					case "iexp": bean.setIexp(item.getString());
						break;
					case "aoi": bean.setAoi(item.getString());
						break;
					case "sub" :bean.setSub(item.getString());
						break;
					case "jpub": bean.setJpub(item.getString());
						break;
					case "bpub": bean.setBpub(item.getString());
						break;
					case "research": bean.setResearch(item.getString());
						break;
					case "memberships": bean.setMemberships(item.getString());
						break;
					case "petants": bean.setPetants(item.getString());
						break;
					case "researchguidesub": bean.setResearchguidesub(item.getString());
						break;
					case "university": bean.setUniversity(item.getString());
						break;
               }
            }
            EmpDao dao=new EmpDao();
            int EID=dao.addEmp(bean);
            System.out.println("EID="+EID);

            String eid = (!bean.getEID().equals("0")) ? bean.getEID() : String.valueOf(EID);

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
            		dao.addEmpPhoto(eid, bean.getPhoto());

            		InputStream image=photo;
       	    	 	ObjectMetadata metadata=new ObjectMetadata();
       	    	 	metadata.setContentLength(Long.valueOf(image.available()));
       	    	 	dao2.uploadFileToBucket(Credentials, bucketName, "emp/"+eid+"/photo/"+bean.getPhoto(), image, metadata);
            	}

            	if(!bean.getResume().trim().equals("")){
            		dao.addEmpResume(eid, bean.getResume());

            		InputStream image=resume;
       	    	 	ObjectMetadata metadata=new ObjectMetadata();
       	    	 	metadata.setContentLength(Long.valueOf(image.available()));
       	    	 	dao2.uploadFileToBucket(Credentials, bucketName, "emp/"+eid+"/resume/"+bean.getResume(), image, metadata);
            	}

            }

            session.setAttribute("result", EID);
            response.sendRedirect("UpdateEmpProfile?eid="+bean.getEID());



        }catch(Exception e)
        {
        	System.out.println("Servlet Catch");
            e.printStackTrace();
        }


	}


}
