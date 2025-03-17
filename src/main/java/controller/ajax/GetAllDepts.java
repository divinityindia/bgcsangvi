package controller.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;

import model.DeptDao;

import com.google.gson.Gson;

/**
 * Servlet implementation class GetAllDepts
 */
@WebServlet("/GetAllDepts")
public class GetAllDepts extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		try{


			DeptDao dao=new DeptDao();
			LinkedHashMap<String,String> hm=dao.getDeptList();

			Iterator it= hm.entrySet().iterator();
			ArrayList<String[]> al=new ArrayList<>();
				String[] arr=null;
			JSONObject json = new JSONObject();
			while(it.hasNext()){
				HashMap.Entry pair = (HashMap.Entry)it.next();
				arr=new String[2];
				arr[0]=(String) pair.getKey();
				arr[1]=(String) pair.getValue();
				al.add(arr);


			}


			json.put("al", al);

			response.setContentType("application/json");
			response.getWriter().write(json.toString());
//			System.out.println("json="+json.toString());


		}
		catch(Exception e)
        {
			System.out.println("error= "+e);
            out.print(e);
        }
	}

}
