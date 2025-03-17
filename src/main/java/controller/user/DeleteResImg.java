package controller.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.AccessBean;
import model.CyberSecurityDao;
import model.DeptDao;
import model.ResearchImgUploadDao;

/**
 * Servlet implementation class DeleteResImg
 */
@WebServlet("/dir1/DeleteResImg")
public class DeleteResImg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isUGC_BSR()){
			try
			{
				 int id=Integer.parseInt(request.getParameter("id"));
				 int did=Integer.parseInt((String) session.getAttribute("DID"));
				 
                 ResearchImgUploadDao dao=new ResearchImgUploadDao();
				  dao.deleteResImg(id);
				  DeptDao dao1=new DeptDao();
					RequestDispatcher rd=request.getRequestDispatcher("ResearchImg.jsp");
					request.setAttribute("dep",dao1.getDeptList());
					
					if(did!=0)
					{
					request.setAttribute("dtl",dao.getAllResImg1(did));
					}
					else
					{
						request.setAttribute("dtl",dao.getAllResImg());
					}
					
					rd.forward(request, response);

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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
