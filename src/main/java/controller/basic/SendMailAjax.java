package controller.basic;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;





/**
 * @author Divinity India Enterprises PVT LTD (Nilesh Deshmukh)
 * Type: Servlet	
 * Description: This servlet is used to upload photo of student using ajax request.
 * Date:Apr 6, 2018
 * 
 */
@WebServlet("/SendMailAjax")
public class SendMailAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendMailAjax() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("Inside servlet------");
		String ajaxUpdateResult = "";
		int appid=0;
		HashMap<String,String> pdf=new HashMap<>();
        try {
        	System.out.println("IN AJAX PHOTO UPLOAD");
            List<FileItem> items = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);            

            for (FileItem item : items) {

                if (item.isFormField()) {
                    pdf.put(item.getFieldName(), item.getString());
                    

                } else {

                    String fileName = item.getName();

                    InputStream pdffile = item.getInputStream();
                    
            		String emailid=pdf.get("emailid");
            		
            		System.out.println("All Data:-"  +emailid);
            		
            		
            		
                   
            		
            		
                    Mailer.send( emailid,pdffile);
            		
            		System.out.println("send sucessfullu:>");
                   

                }
                

            }

        } catch (FileUploadException e) {

            throw new ServletException("Parsing file upload failed.", e);

        }

        response.getWriter().print(ajaxUpdateResult);
	}

}
