package controller.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;


import bean.AccessBean;
import model.EmpDao;

/**
 * Servlet implementation class deleteemployeedetails
 */
@WebServlet("/dir1/deleteemployeedetails")
public class deleteemployeedetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isUpdateemployee()){
			try{

				String flag=request.getParameter("flag");
				EmpDao employeeDao=new EmpDao();
				try{

					if(flag.equals("qual"))
					{
						int qid=Integer.parseInt(request.getParameter("qid"));
						int result = employeeDao.deleteQual(qid);
						String json = new Gson().toJson(result);
						response.setContentType("application/json");
				        response.getWriter().write(json);
					}
					else if(flag.equals("cert"))
					{
						int cid=Integer.parseInt(request.getParameter("cid"));
						int result = employeeDao.deleteCert(cid);
						String json = new Gson().toJson(result);
						response.setContentType("application/json");
				        response.getWriter().write(json);
					}
					else if(flag.equals("exp"))
					{
						int expid=Integer.parseInt(request.getParameter("expid"));
						int result = employeeDao.deleteExp(expid);
						String json = new Gson().toJson(result);
						response.setContentType("application/json");
				        response.getWriter().write(json);
					}
					else if(flag.equals("kr"))
					{
						int krid=Integer.parseInt(request.getParameter("krid"));
						int result = employeeDao.deleteKr(krid);
						String json = new Gson().toJson(result);
						response.setContentType("application/json");
				        response.getWriter().write(json);
					}
				}
				catch(Exception ex){

					ex.printStackTrace();
					//response.sendRedirect("usearchemployee.jsp?success=0");
				}



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
