package controller.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;

import bean.ResearchDetailsBean;
import bean.ResearchImgUploadBean;
import bean.StaffAchiv;
import bean.StaffResarch;
import model.ResearchDetailsDao;
import model.ResearchImgUploadDao;
import model.StaffAchivDao;
import model.StaffResearchDao;

/**
 * Servlet implementation class GetDepWiseStaffRes
 */
@WebServlet("/GetDepWiseStaffRes")
public class GetDepWiseStaffRes extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		try{

			int deptID=Integer.parseInt(request.getParameter("did"));
			String pagename=request.getParameter("pgnm");
			System.out.println("Dept Id="+deptID +" "+pagename);
			
			ResearchImgUploadDao dao1=new ResearchImgUploadDao();
			ResearchDetailsDao dao=new ResearchDetailsDao();
			List<ResearchImgUploadBean> al2=dao1.getAllResImg(deptID);
			List<ResearchDetailsBean> al=dao.getAllResDtl(deptID);
			List<ResearchDetailsBean> al1=dao.getAllResPubDtl(deptID);
			
			RequestDispatcher rd=request.getRequestDispatcher(pagename+".jsp");
			request.setAttribute("img",al2);
			request.setAttribute("res",al);
			request.setAttribute("pub",al1);
			
			rd.forward(request, response);
			

		}
		catch(Exception e)
        {
			System.out.println("error= "+e);
            out.print(e);
        }
		
		
		/*PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		try{

			int deptID=Integer.parseInt(request.getParameter("did"));
			System.out.println("Dept Id="+deptID);
            
			ResearchDetailsDao dao=new ResearchDetailsDao();
			List<ResearchDetailsBean> al=dao.getAllResDtl(deptID);
			for (ResearchDetailsBean bean : al) {
				System.out.println("sss="+bean.getDeptname());
			}

			JSONObject json = new JSONObject();
			json.put("al", al);

			response.setContentType("application/json");
			response.getWriter().write(json.toString());

		}
		catch(Exception e)
        {
			System.out.println("error= "+e);
            out.print(e);
        }*/
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
