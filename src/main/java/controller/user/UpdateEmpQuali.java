package controller.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import bean.AccessBean;
import bean.EmpBean;
import model.DeptDao;
import model.EmpDao;

/**
 * Servlet implementation class UpdateEmpQuali
 */
@WebServlet("/dir1/UpdateEmpQuali")
public class UpdateEmpQuali extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isUpdateemployee()){
			try{

				String fid= request.getParameter("eid");

				EmpDao dao=new EmpDao();
				ArrayList<HashMap<String, String>> qualList=dao.getQual(Integer.parseInt(fid));
				ArrayList<HashMap<String, String>> certList=dao.getCert(Integer.parseInt(fid));

				LinkedHashMap<String, String[]> otherQuali=dao.getAllOtherQualifications();

				request.setAttribute("qfid", fid);
				request.setAttribute("qualList", qualList);
				request.setAttribute("certList", certList);

				request.setAttribute("otherQuali", otherQuali);

				request.getRequestDispatcher("UpdateEmpQuali.jsp").forward(request, response);
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
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(bean.isUpdateemployee()){
			try{

				int fid=0;
				HashMap<String, String> row=null;
				ArrayList<HashMap<String, String>> qual=new ArrayList<>();
				ArrayList<HashMap<String, String>> cert=new ArrayList<>();
				if(request.getParameter("fid")!=null)
				{
					fid=Integer.parseInt(request.getParameter("fid"));
				}

					if(request.getParameter("udegree")!=null)
					{
						row=new HashMap<>();

						row.put("fid", request.getParameter("fid"));
						row.put("qname", request.getParameter("qual1"));
						row.put("degree", request.getParameter("udegree"));
						row.put("spl", request.getParameter("uspl"));
						row.put("inst", request.getParameter("uinst"));
						row.put("univ", request.getParameter("uuniv"));
						row.put("pyr", request.getParameter("upyr"));
						row.put("per", request.getParameter("uper"));
						qual.add(row);
					}

					if(request.getParameter("pdegree")!=null)
					{
						row=new HashMap<>();
						row.put("fid", request.getParameter("fid"));
						row.put("qname", request.getParameter("qual2"));
						row.put("degree", request.getParameter("pdegree"));
						row.put("spl", request.getParameter("pspl"));
						row.put("inst", request.getParameter("pinst"));
						row.put("univ", request.getParameter("puniv"));
						row.put("pyr", request.getParameter("ppyr"));
						row.put("per", request.getParameter("pper"));
						qual.add(row);
					}

					if(request.getParameter("ppdegree")!=null)
					{
						row=new HashMap<>();
						row.put("fid", request.getParameter("fid"));
						row.put("qname", request.getParameter("qual3"));
						row.put("degree", request.getParameter("ppdegree"));
						row.put("spl", request.getParameter("ppspl"));
						row.put("inst", request.getParameter("ppinst"));
						row.put("univ", request.getParameter("ppuniv"));
						row.put("pyr", request.getParameter("pppyr"));
						row.put("per", request.getParameter("ppper"));
						qual.add(row);
					}

					if(request.getParameter("odegree")!=null)
					{
						if(request.getParameter("odegree").equals("Illiterate"))
						{
							row=new HashMap<>();
							row.put("fid", request.getParameter("fid"));
							row.put("qname", "Other");
							row.put("degree", request.getParameter("odegree"));
							row.put("spl", "NA");
							row.put("inst", "NA");
							row.put("univ", "NA");
							row.put("pyr", "NA");
							row.put("per", "NA");
							qual.add(row);
						}
						else
						{
							row=new HashMap<>();
							row.put("fid", request.getParameter("fid"));
							row.put("qname", "Other");
							row.put("degree", request.getParameter("odegree"));
							row.put("spl", request.getParameter("ospl"));
							row.put("inst", request.getParameter("oinst"));
							row.put("univ", request.getParameter("ouniv"));
							row.put("pyr", request.getParameter("opyr"));
							row.put("per", request.getParameter("oper"));
							qual.add(row);
						}

					}

					if(request.getParameter("cert1")!=null)
					{
						row=new HashMap<>();
						row.put("fid", request.getParameter("fid"));
						row.put("crsname", request.getParameter("crsname1"));
						row.put("cinst", request.getParameter("cinst1"));
						row.put("cduration", request.getParameter("cduration1"));
						row.put("ccontent", request.getParameter("ccontent1"));
						cert.add(row);
					}

					if(request.getParameter("cert2")!=null)
					{
						row=new HashMap<>();
						row.put("fid", request.getParameter("fid"));
						row.put("crsname", request.getParameter("crsname2"));
						row.put("cinst", request.getParameter("cinst2"));
						row.put("cduration", request.getParameter("cduration2"));
						row.put("ccontent", request.getParameter("ccontent2"));
						cert.add(row);
					}

					if(request.getParameter("cert3")!=null)
					{
						row=new HashMap<>();
						row.put("fid", request.getParameter("fid"));
						row.put("crsname", request.getParameter("crsname3"));
						row.put("cinst", request.getParameter("cinst3"));
						row.put("cduration", request.getParameter("cduration3"));
						row.put("ccontent", request.getParameter("ccontent3"));
						cert.add(row);
					}

					if(request.getParameter("cert4")!=null)
					{
						row=new HashMap<>();
						row.put("fid", request.getParameter("fid"));
						row.put("crsname", request.getParameter("crsname4"));
						row.put("cinst", request.getParameter("cinst4"));
						row.put("cduration", request.getParameter("cduration4"));
						row.put("ccontent", request.getParameter("ccontent4"));
						cert.add(row);
					}

					EmpDao employeeDao=new EmpDao();
					int result1[]=employeeDao.addQual(qual);
					int result2[]=employeeDao.addCert(cert);

					int qualsuccess=0;
					if(result1!=null)
					{
						qualsuccess=1;
					}
					int certsuccess=0;
					if(result2!=null)
					{
						certsuccess=1;
					}

//					response.sendRedirect("updateemployee?qualsuccess="+qualsuccess+"&certsuccess="+certsuccess+"&action=2&employeeid="+fid);

					response.sendRedirect("UpdateEmpQuali?eid="+fid);


			}
			catch(Exception e)
	        {
				System.out.println("error= "+e);
	            out.print(e);
	            e.printStackTrace();
	        }
		}
		else{
			response.sendRedirect("home.jsp");
		}
	}


}
