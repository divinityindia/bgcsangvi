package controller.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.FeedBackWebBean;
import model.FeedBackWebDao;

/**
 * Servlet implementation class FeedBackWebController
 */
@WebServlet("/FeedBackWebController")
public class FeedBackWebController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try 
		{
			int rid=Integer.parseInt(request.getParameter("rid"));
			
			System.out.println("Rid="+rid);
			
			RequestDispatcher rd=request.getRequestDispatcher("WebinarFeedbackForm.jsp");
			request.setAttribute("rid",rid);
			request.setAttribute("erMsg","Participant Your Feedback Recorded Successfully, Please Check Your Email......");
			rd.forward(request, response);
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try 
		{
			FeedBackWebBean bean=new FeedBackWebBean();
			bean.setSal(request.getParameter("sal"));
			bean.setFname(request.getParameter("fname"));
			bean.setMname(request.getParameter("mname"));
			bean.setLname(request.getParameter("lname"));
			bean.setDepinst(request.getParameter("depinst"));
			bean.setEmid(request.getParameter("eid"));
			bean.setMob(request.getParameter("mob"));
			bean.setDate(request.getParameter("pdate"));
			bean.setAns1(request.getParameter("ans1"));
			bean.setAns2(request.getParameter("ans2"));
			bean.setAns3(request.getParameter("ans3"));
			
			FeedBackWebDao  dao=new FeedBackWebDao();
			int rid=dao.addFeedBack(bean);
//			Mailer mailer=new Mailer();
//			Mailer.sendMailTo(bean.getEid(),"Testingggggggg");
			response.sendRedirect("FeedBackWebController?rid="+rid+"&sal="+bean.getSal()+"&fnm="+bean.getFname()+"&mnm="+bean.getMname()+"&lnm="+bean.getLname()+"&emid="+bean.getEmid()+"&dst="+bean.getDepinst());
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
}
