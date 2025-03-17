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
import model.ResearchCenterDao;

/**
 * Servlet implementation class DeleteResearchCenterDetails
 */
@WebServlet("/dir1/DeleteResearchCenterDetails")
public class DeleteResearchCenterDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isResearch()){
			try
			{
			   ResearchCenterDao dao=new ResearchCenterDao();
			   int rcid=Integer.parseInt(request.getParameter("id"));
			   String tab=request.getParameter("tab");
			   
			   if(tab.equals("RC_dtls"))
			   {
				   dao.deleteResCenDtls(rcid);
				   System.out.println("Inside If RC_dtls .....");
				   session.setAttribute("erMsg", "Research Center Inforamtion Deleted Successfully....");
				   response.sendRedirect("ResearchCenterDetailsController");
			   }
			   else if (tab.equals("RC_cmt")) 
			   {
				dao.deleteResCenCmt(rcid);
				System.out.println("Inside If RC_cmt .....");
				session.setAttribute("erMsg", "Research Center Inforamtion Deleted Successfully....");
				   response.sendRedirect("ResearchCenterCommitteeController");
			   }
			   else if (tab.equals("RC_areas")) 
			   {
				 dao.deleteResCenAreas(rcid);
				 System.out.println("Inside If RC_areas .....");
				 session.setAttribute("erMsg", "Research Center Inforamtion Deleted Successfully....");
				   response.sendRedirect("ResearchCenterAreasController");
			   }
			   else if (tab.equals("RC_work")) 
			   {
				   dao.deleteResCenCouWork(rcid);
				   System.out.println("Inside If RC_work .....");
				   session.setAttribute("erMsg", "Research Center Inforamtion Deleted Successfully....");
				   response.sendRedirect("ResearchCenterCouWorkController");
			   }
			   else if (tab.equals("RC_plag")) 
			   {
				   dao.deleteResCenPlagiarism(rcid);
				   System.out.println("Inside If RC_plag .....");
				   
				   session.setAttribute("erMsg", "Research Center Inforamtion Deleted Successfully....");
				   response.sendRedirect("ResearchCenterPlagiarismController");
			   }
			   else if (tab.equals("RC_guid")) 
			   {
				   dao.deleteResCenRecognizedGuides(rcid);
				   System.out.println("Inside If RC_guid .....");
				   
				   session.setAttribute("erMsg", "Research Center Inforamtion Deleted Successfully....");
				   response.sendRedirect("ResearchCenterRecogGuidesController");
			   }
			   else if (tab.equals("RC_index")) 
			   {
				   dao.deleteResCenCitationIndex(rcid);
				   System.out.println("Inside If RC_index .....");
				   
				   session.setAttribute("erMsg", "Research Center Inforamtion Deleted Successfully....");
				   response.sendRedirect("ResearchCenterCitationIndexController");
			   }
			   else if (tab.equals("RC_schol")) 
			   {
				   dao.deleteResCenScholars(rcid);
				   System.out.println("Inside If RC_schol .....");
				   
				   session.setAttribute("erMsg", "Research Center Inforamtion Deleted Successfully....");
				   response.sendRedirect("ResearchCenterScholarsController");
			   }
			   else if (tab.equals("RC_faclit")) 
			   {
				   dao.deleteResCenFacilities(rcid);
				   System.out.println("Inside If RC_faclit .....");
				   
				   session.setAttribute("erMsg", "Research Center Inforamtion Deleted Successfully....");
				   response.sendRedirect("ResearchCenterFacilitiesController");
			   }
			   else if (tab.equals("RC_proj")) 
			   {
				   dao.deleteResCenProject(rcid);
				   System.out.println("Inside If RC_proj .....");
				   
				   session.setAttribute("erMsg", "Research Center Inforamtion Deleted Successfully....");
				   response.sendRedirect("ResearchCenterProjectController");
			   
			   }
			   else if (tab.equals("RC_publ")) 
			   {
				   dao.deleteResCenPublication(rcid);
				   System.out.println("Inside If RC_publ .....");
				   
				   session.setAttribute("erMsg", "Research Center Inforamtion Deleted Successfully....");
				   response.sendRedirect("ResearchCenterPublicationsController");
			   }
			   else if (tab.equals("RC_awords")) 
			   {
				   dao.deleteResCenAwards(rcid);
				   System.out.println("Inside If RC_awords .....");
				   
				   session.setAttribute("erMsg", "Research Center Inforamtion Deleted Successfully....");
				   response.sendRedirect("ResearchCenterAwardsController");

			   }
			   else if (tab.equals("RC_activ")) 
			   {
				   dao.deleteResCenActivities(rcid);
				   System.out.println("Inside If RC_activ .....");
				   
				   session.setAttribute("erMsg", "Research Center Inforamtion Deleted Successfully....");
				   response.sendRedirect("ResearchCenterActivitiesController");
			   }
			   else if (tab.equals("RC_cl")) 
			   {
				   dao.deleteResCenCollink(rcid);
				   System.out.println("Inside If RC_cl .....");
				   
				   session.setAttribute("erMsg", "Research Center Inforamtion Deleted Successfully....");
				   response.sendRedirect("ResearchCenterCollinkController");
			   }
			   else
			   {
				   System.out.println("Inside Research Delete Else Block.....");
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

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
