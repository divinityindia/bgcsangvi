package contriller.Home;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedHashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.DeptDao;
import model.NewsDao;

/**
 * Servlet implementation class Staff
 */
@WebServlet("/staff")
public class Staff extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		try{

			DeptDao dao=new DeptDao();
			LinkedHashMap<String, String> depts=dao.getDeptList();

			request.setAttribute("depts", depts);
			request.getRequestDispatcher("Staff-Faculties.jsp").forward(request, response);
		}
		catch(Exception e)
        {
			System.out.println("error= "+e);
            out.print(e);
        }

	}

}
