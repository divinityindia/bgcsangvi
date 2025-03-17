package controller.user;

import java.io.IOException;
import java.util.LinkedHashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.AccessBean;
import model.DeptDao;
import model.ExaminationDetalisDao;

/**
 * Servlet implementation class ExaminationDetalis
 */
@WebServlet("/dir1/ExaminationDetalis")
public class ExaminationDetalis extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isExam()){
			try{

				 ExaminationDetalisDao dao=new ExaminationDetalisDao();
				 request.setAttribute("cat",dao.getAllExamDtl());
				request.getRequestDispatcher("ExaminationDetalis.jsp").forward(request, response);
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
            	count=dao.addExamDtl(dtl,eid);   
              
				response.sendRedirect("ExaminationDetalis?id="+count);
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
