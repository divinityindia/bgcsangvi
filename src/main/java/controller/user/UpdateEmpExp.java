package controller.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.EmployeeExp;
import bean.AccessBean;
import model.EmpDao;

/**
 * Servlet implementation class UpdateEmpExp
 */
@WebServlet("/dir1/UpdateEmpExp")
public class UpdateEmpExp extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isUpdateemployee()){
			try{

				String fid= request.getParameter("eid");

				EmpDao dao=new EmpDao();
				ArrayList<EmployeeExp> expList=dao.getExp(Integer.parseInt(fid));
				request.setAttribute("efid", fid);
				request.setAttribute("expList", expList);
				request.getRequestDispatcher("UpdateEmpExp.jsp").forward(request, response);
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



				int fid=Integer.parseInt(request.getParameter("fid"));
				String eorg=request.getParameter("eorg");
				String eurl=request.getParameter("eurl");
				String designation=request.getParameter("designation");
				String jobprofile=request.getParameter("jobprofile");
				String fromdate=request.getParameter("fromdate");
				String todate=request.getParameter("todate");

				SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
	            java.util.Date date1 = null;
	            java.util.Date date2 = null;
	            java.sql.Date fromDate=null;
	            java.sql.Date toDate=null;
				if(!fromdate.equals(""))
				{
					try {
						date1 = sdf1.parse(fromdate);
					} catch (ParseException e) {
						e.printStackTrace();
					}
		            fromDate = new java.sql.Date(date1.getTime());
				}


				if(!todate.equals(""))
				{
					try {
						date2 = sdf1.parse(todate);
					} catch (ParseException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
		            toDate = new java.sql.Date(date2.getTime());
				}


	            String achievement=request.getParameter("achi");
	            EmployeeExp empExp=new EmployeeExp(fid, eorg, eurl, designation, jobprofile, fromDate, toDate, achievement);
	            EmpDao employeeDao=new EmpDao();
	            int result=employeeDao.addExp(empExp);

					int expsuccess=0;
					if(result!=0)
					{
						expsuccess=1;
					}
					else
					{
						expsuccess=0;
					}
					response.sendRedirect("UpdateEmpExp?eid="+fid);




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
