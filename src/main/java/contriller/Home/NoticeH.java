package contriller.Home;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.NewsDao;

/**
 * Servlet implementation class NoticeH
 */
@WebServlet("/NoticeH")
public class NoticeH extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		try{
			String NID=request.getParameter("id");

			NewsDao dao=new NewsDao();
			String[] info=dao.getANotice(NID);

			request.setAttribute("info", info);
			request.getRequestDispatcher("Notice.jsp").forward(request, response);
		}
		catch(Exception e)
        {
			System.out.println("error= "+e);
            out.print(e);
        }

	}

}
