package controller.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedHashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;

import model.IQACDao;
import model.NewsDao;

/**
 * Servlet implementation class GetAllIQACDoc
 */
@WebServlet("/GetAllIQACDoc")
public class GetAllIQACDoc extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		try{

			String tblName=request.getParameter("tbl");


			IQACDao dao=new IQACDao();
			LinkedHashMap<String,String[]> hm=dao.getAllDocs();
			LinkedHashMap<String,String[]> hm1=dao.getAllDocs(tblName);
			LinkedHashMap<String,String[]> hm2=dao.getAllDocs(tblName);
			JSONObject json = new JSONObject();
			json.put("hm", hm);
			json.put("hm1", hm1);
			json.put("hm2", hm2);

			response.setContentType("application/json");
			response.getWriter().write(json.toString());

		}
		catch(Exception e)
        {
			System.out.println("error= "+e);
            out.print(e);
        }
	}

}
