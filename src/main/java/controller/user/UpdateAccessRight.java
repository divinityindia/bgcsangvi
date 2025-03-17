package controller.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedHashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.AccessBean;
import model.AccessDao;
import model.DeptDao;

/**
 * Servlet implementation class UpdateAccessRight
 */
@WebServlet("/dir1/UpdateAccessRight")
public class UpdateAccessRight extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isAccess()){
			try{

				String UID=request.getParameter("UID");

				AccessDao dao=new AccessDao();
				AccessBean uBean=dao.getAccessRights(Integer.parseInt(UID));

				out.print("Daily report: "+uBean.isDaily_Report());

				request.setAttribute("bean", uBean);
				request.getRequestDispatcher("UpdateAccessRights.jsp").forward(request, response);
			}
			catch(Exception e)
	        {
//				System.out.println("error= "+e);
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
		if(bean.isAccess()){
			try{

				String UID=request.getParameter("UID");

				AccessBean uBean=new AccessBean();
				uBean.setUserid(Integer.parseInt(UID));

				uBean.setAddemployee(request.getParameter("addemployee") != null);

				uBean.setAddstudent(request.getParameter("addstudent") != null);
				uBean.setSearchstudent(request.getParameter("searchstudent") != null);
				uBean.setUpdatestudent(request.getParameter("updatestudent") != null);
				uBean.setAddemployee(request.getParameter("addemployee") != null);
				uBean.setSearchemployee(request.getParameter("searchemployee") != null);
				uBean.setUpdateemployee(request.getParameter("updateemployee") != null);
				uBean.setNews(request.getParameter("news") != null);
				uBean.setEvent(request.getParameter("event") != null);
				uBean.setRoutine(request.getParameter("routine") != null);
				uBean.setGallery(request.getParameter("gallery") != null);
				uBean.setUser(request.getParameter("user") != null);
				uBean.setAccess(request.getParameter("access") != null);
				uBean.setCourse(request.getParameter("course") != null);
				uBean.setBranch(request.getParameter("branch") != null);
				uBean.setClass1(request.getParameter("class") != null);
				uBean.setSection(request.getParameter("section") != null);
				uBean.setSubject(request.getParameter("subject") != null);
				uBean.setMiscphoto(request.getParameter("miscphoto") != null);
				uBean.setNewspapergallery(request.getParameter("newspapergallery") != null);
				uBean.setTandp(request.getParameter("tandp") != null);
				uBean.setQpaper(request.getParameter("qpaper") != null);
				uBean.setBrochure(request.getParameter("brochure") != null);
				uBean.setHd(request.getParameter("hd") != null);
				uBean.setExamattendance(request.getParameter("examattendance") != null);
				uBean.setExam(request.getParameter("exam") != null);
				uBean.setExamschedule(request.getParameter("examschedule") != null);
				uBean.setMark(request.getParameter("mark") != null);
				uBean.setLmember(request.getParameter("lmember") != null);
				uBean.setLbook(request.getParameter("lbook") != null);
				uBean.setLissue(request.getParameter("lissue") != null);
				uBean.setLfine(request.getParameter("lfine") != null);
				uBean.setMailsms(request.getParameter("mailsms") != null);
				uBean.setExamc(request.getParameter("examc") != null);
				uBean.setAluminintf(request.getParameter("aluminintf") != null);
				uBean.setAluminiregistration(request.getParameter("aluminiregistration") != null);
				uBean.setAluminiforum(request.getParameter("aluminiforum") != null);
				uBean.setManddis(request.getParameter("manddis") != null);
				uBean.setStudentassociation(request.getParameter("studentassociation") != null);
				uBean.setResearchcons(request.getParameter("researchcons") != null);
				uBean.setAcademiccalender(request.getParameter("academiccalender") != null);
				uBean.setLabphotos(request.getParameter("labphotos") != null);
				uBean.setResearch(request.getParameter("research") != null);
				uBean.setWelfare(request.getParameter("welfare") != null);
				uBean.setFeestructure(request.getParameter("feestructure") != null);
				uBean.setResult(request.getParameter("result") != null);
				uBean.setTopper(request.getParameter("topper") != null);

				uBean.setAssignment(request.getParameter("assignment") != null);
				uBean.setEligibilityno(request.getParameter("eligibilityno") != null);
				uBean.setPlacement(request.getParameter("placement") != null);
				uBean.setLibrary(request.getParameter("library") != null);
				uBean.setInfrastructure(request.getParameter("infrastructure") != null);
				uBean.setIQAC_Committee(request.getParameter("IQAC_Committee") != null);
				uBean.setAQAR_Reports(request.getParameter("AQAR_Reports") != null);
				uBean.setIQAC_Minutes_and_Action(request.getParameter("IQAC_Minutes_and_Action") != null);
				uBean.setUGC_CPE(request.getParameter("UGC_CPE") != null);
				uBean.setDBT_STAR(request.getParameter("DBT_STAR") != null);
				uBean.setDST_FIST(request.getParameter("DST_FIST") != null);
				uBean.setUGC_BSR(request.getParameter("UGC_BSR") != null);
				uBean.setUGC_Community_College(request.getParameter("UGC_Community_College") != null);
				uBean.setDaily_Report(request.getParameter("Daily_Report") != null);

				AccessDao dao=new AccessDao();
				int result = dao.updateAccessRights(uBean);

				session.setAttribute("result", result);
				response.sendRedirect("UpdateAccessRight?UID="+UID);
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
