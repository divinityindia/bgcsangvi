package contriller.Home;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.AddCollegeAdministrationStaffDao;
import model.InfraPicDao;

/**
 * Servlet implementation class CollegeAdministrationStaffBean
 */
@WebServlet("/CollegeAdministrationStaffBean")
public class CollegeAdministrationStaffBean extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try
		{
		 RequestDispatcher rd=request.getRequestDispatcher("CollegeAdministrationStaffBean.jsp");
		  AddCollegeAdministrationStaffDao dao=new AddCollegeAdministrationStaffDao();
		  request.setAttribute("cat",dao.getAllDepStaff());
		 rd.forward(request, response);

		}
		catch(Exception e)
        {
			e.printStackTrace();
            
        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
