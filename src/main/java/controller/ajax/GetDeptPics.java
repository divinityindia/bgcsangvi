package controller.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedHashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.DeptEventBean;
import bean.SubGalleryBean;
import model.DeptEventPicDao;
import model.GalleryDao;

/**
 * Servlet implementation class GetDeptPics
 */
@WebServlet("/GetDeptPics")
public class GetDeptPics extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		try
		{
			String sbgid=request.getParameter("id");
            int id=Integer.parseInt(sbgid);
            System.out.println("GetDeptPics id===="+id);
            
			DeptEventPicDao dao=new DeptEventPicDao();
			LinkedHashMap<String, String[]> hm =dao.getAllDeptPics(id);
			
			DeptEventBean bean=dao.getCaption(id);
			
			request.setAttribute("bean",bean);
			
			request.setAttribute("hm", hm);
			
			request.getRequestDispatcher("DeptEventGallery.jsp").forward(request, response);
		}
		catch(Exception e)
        {
			e.printStackTrace();
			//System.out.println("error= "+e);
            //out.print(e);
        }
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
	}

}
