package controller.user;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.HitCountDao;

/**
 * Servlet implementation class HitCounter
 */
@WebServlet("/HitCounter")
public class HitCounter extends HttpServlet {
	private static final long serialVersionUID = 1L;
     int hitCount=0; 
	@Override
    public void init() throws ServletException {
	 System.out.println("Inside INT");
    	hitCount = HitCountDao.getCounter();
    }

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
{
	hitCount++;
	ServletContext context=request.getServletContext();
	context.setAttribute("hitCounter",hitCount);
}

 @Override
    public void destroy() {
	 System.out.println("In side Destory");
    	HitCountDao.setCounter(hitCount);
    }



}
