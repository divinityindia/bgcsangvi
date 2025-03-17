package controller.user;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import bean.Employee;
import bean.AccessBean;
import bean.EmployeeExp;
import model.EmpDao;

/**
 * Servlet implementation class UpdateEmpKr
 */
@WebServlet("/dir1/UpdateEmpKr")
public class UpdateEmpKr extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isUpdateemployee()){
			try{

				String fid= request.getParameter("eid");

				EmpDao dao=new EmpDao();
				ArrayList<HashMap<String, String>> krList=dao.getKr(Integer.parseInt(fid));
				request.setAttribute("kfid", fid);
				request.setAttribute("krList", krList);
				request.getRequestDispatcher("UpdateEmpKR.jsp").forward(request, response);
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

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isUpdateemployee()){
			try{

				FileItemFactory factory = new DiskFileItemFactory();
		        ServletFileUpload upload = new ServletFileUpload(factory);
		        Iterator<FileItem> iterator = null;
				try {
					iterator = upload.parseRequest(request).iterator();
				} catch (FileUploadException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		        HashMap<String, String> fields = new HashMap<>();
		        InputStream article = null;
		        String documentName = null;
		        String documentType = null;
		        long documentLength=0;
		        while (iterator.hasNext()) {

		                       FileItem item = iterator.next();
		                       if (!item.isFormField()) {

		                           article=item.getInputStream();
		                           documentName=item.getName();
		                           documentType = item.getContentType();
		                           documentLength=article.available();
		                                                  }
		                       else {
		                    	   		fields.put(item.getFieldName(), item.getString());
		                    	   	}
		                  }

		    		int fid=Integer.parseInt(fields.get("fid"));
		            String headline=fields.get("headline");
		            String krCategory=fields.get("krcategory");
		            String publication=fields.get("publication");
		            String author=fields.get("author");
		            String krdate=fields.get("krdate");
		            String kurl=fields.get("kurl");
		            String keywords=fields.get("keywords");
		            String content = fields.get("content");
		            String notes = fields.get("notes");
		            String priority = fields.get("priority");
		            String guide = fields.get("guide");
		            String coguide = fields.get("coguide");
		            String  teamsize= fields.get("tsize");

		            SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
		            java.util.Date date1 = null;
		            java.sql.Date krDate=null;

		            if(!krdate.equals(""))
		            {
		            	try {
							date1 = sdf1.parse(krdate);
						} catch (ParseException e) {
							System.out.println("date exception");
							e.printStackTrace();
						}
			            krDate = new java.sql.Date(date1.getTime());
		            }
		            Employee emp=new Employee(fid, headline, krCategory, publication, author, krDate, kurl, article, documentName,documentType,documentLength,keywords, content, notes, priority, guide, coguide, teamsize);
		            EmpDao employeeDao=new EmpDao();
		            int result = employeeDao.addEmployeeKr(emp);
//		    		if(result!=0)
//		    		{
//		    			response.sendRedirect("updateemployee?expsuccess=1&action=4&employeeid="+fid);
//		    		}
//		    		else
//		    		{
//		    			response.sendRedirect("updateemployee?expsuccess=0&action=4&employeeid="+fid);
//		    		}
		            response.sendRedirect("UpdateEmpKr?eid="+fid);
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
