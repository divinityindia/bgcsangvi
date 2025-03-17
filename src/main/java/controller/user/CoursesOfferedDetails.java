package controller.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.AccessBean;
import model.ExaminationDetalisDao;

/**
 * Servlet implementation class CoursesOfferedDetails
 */
@WebServlet("/dir1/CoursesOfferedDetails")
public class CoursesOfferedDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isExam()){
			try{

				 ExaminationDetalisDao dao=new ExaminationDetalisDao();
				 request.setAttribute("cat",dao.getAllCourseOffersDtl());
				request.getRequestDispatcher("CoursesOfferedDetails.jsp").forward(request, response);
			}
			catch(Exception e)
	        {
				System.out.println("error= "+e);
	            
	        }
		}
		else{
			response.sendRedirect("home.jsp");
		}
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isExam())
		{
			try
			{
			   String id=request.getParameter("id");
			   
			   int eid=Integer.parseInt(id);
               String dtl=request.getParameter("area");
               
               ExaminationDetalisDao dao=new ExaminationDetalisDao();
               int count=0;
            	count=dao.addCourseOffersDtl(dtl,eid);   
              
				response.sendRedirect("CoursesOfferedDetails?id="+count);
			}
			catch(Exception e)
	        {
				e.printStackTrace();
	            
	        }
		}
		else{
			response.sendRedirect("home.jsp");
		}
	}

}
