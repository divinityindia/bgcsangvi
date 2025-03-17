package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import com.DBConnection;

import bean.AddCollegeAdministrationStaffBean;
import bean.DeptAbout;

public class AddCollegeAdministrationStaffDao 
{
	public int addStaff(AddCollegeAdministrationStaffBean bean) 
	{
		 int daid=0;
		try {
			  Connection con = DBConnection.createConnection();
		
			String sql="INSERT INTO CollegeAdministrationStaff(pdeaid,sal,lname,fname,mname,designation,qulification,emailid,mobileno,imgname)VALUES(?,?,?,?,?,?,?,?,?,?)";
			 PreparedStatement pst=con.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
			 pst.setInt(1, bean.getPdeaid());
			 pst.setString(2,bean.getSal());
			 pst.setString(3,bean.getLname());
			 pst.setString(4,bean.getFname());
			 pst.setString(5,bean.getMname());
			 pst.setString(6,bean.getDesignation());
			 pst.setString(7,bean.getQulification());
			 pst.setString(8,bean.getEmailid());
			 pst.setString(9,bean.getMobileno());
			 pst.setString(10,bean.getImgname());
			 	
			pst.executeUpdate();
			
			ResultSet rs=pst.getGeneratedKeys();
			while(rs.next())
			{
				daid=rs.getInt(1);
				System.out.println(daid);
			}
			/*String sql1="INSERT INTO depthomeDetl(did,heading,details) VALUES(?,?,?,?);";
			PreparedStatement pst1=con.prepareStatement(sql1);
			pst1.setInt(1,daid);
			pst1.setString(2,about.getHeading());
            pst1.setString(3,about.getDetails());
            pst1.executeUpdate();*/
			 
	            rs.close();
	            pst.close();
	            con.close();
			System.out.println("Inside addAboutDep  :)");
		    } 
		catch (SQLException | NamingException e) 
		{
			
			e.printStackTrace();
		}
		return daid;
		
	}
	
	public List<AddCollegeAdministrationStaffBean> getAllDepStaff()
	  {
		  List<AddCollegeAdministrationStaffBean> beans=new ArrayList<AddCollegeAdministrationStaffBean>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("select * from CollegeAdministrationStaff ");
		
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				 AddCollegeAdministrationStaffBean bean =new AddCollegeAdministrationStaffBean();
				 bean.setEid(rs.getInt(1));
				 bean.setPdeaid(rs.getInt(2));
				 bean.setSal(rs.getString(3));
				 bean.setLname(rs.getString(4));
				 bean.setFname(rs.getString(5));
				 bean.setMname(rs.getString(6));
				 bean.setDesignation(rs.getString(7));
				 bean.setQulification(rs.getString(8));
				 bean.setEmailid(rs.getString(9));
				 bean.setMobileno(rs.getString(10));
				 bean.setImgname(rs.getString(11));
				  
				  beans.add(bean);
				 
				
			  }
			  rs.close();
	            pst.close();
	            con.close();
			  System.out.println("in side getAllDepStaff :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return beans;
		
	  }
	public void  deleteEmployee(int eid)
    {
	    try
	    {
	    	
	    	 Connection con = DBConnection.createConnection();
	    	PreparedStatement pst=con.prepareStatement("DELETE FROM CollegeAdministrationStaff WHERE eid='"+eid+"' ");
	        pst.executeUpdate();    	
  	    	System.out.println("inside deleteEmployee");
  	    	 pst.close();
             con.close();
	    }
	    catch (Exception e)
	    {
			e.printStackTrace();
		}
    }
	public void  updateDeptStaffImage(AddCollegeAdministrationStaffBean bean,int eid)
    {
	    try
	    {
	    	
	    	 Connection con = DBConnection.createConnection();
	    	PreparedStatement pst=con.prepareStatement("update CollegeAdministrationStaff set pdeaid=?,sal=?,lname=?,fname=?,mname=?,designation=?,qulification=?,emailid=?,mobileno=?,imgname=? where eid='"+eid+"'");
	    	
	    	pst.setInt(1,bean.getPdeaid());
	    	pst.setString(2,bean.getSal());
	    	pst.setString(3,bean.getLname());
	    	pst.setString(4,bean.getFname());
	    	pst.setString(5,bean.getMname());
	    	pst.setString(6,bean.getDesignation());
	    	pst.setString(7,bean.getQulification());
	    	pst.setString(8,bean.getEmailid());
	    	pst.setString(9,bean.getMobileno());
	    	pst.setString(10,bean.getImgname());
	    	pst.executeUpdate();
	    	System.out.println("inside dao");
	    	
	    	 pst.close();
	            con.close();
	    }
	    catch (Exception e)
	    {
			e.printStackTrace();
		}
    }
	public void  updateDeptStaff(AddCollegeAdministrationStaffBean bean,int eid)
    {
	    try
	    {
	    	
	    	 Connection con = DBConnection.createConnection();
	    	PreparedStatement pst=con.prepareStatement("update CollegeAdministrationStaff set pdeaid=?,sal=?,lname=?,fname=?,mname=?,designation=?,qulification=?,emailid=?,mobileno=? where eid='"+eid+"'");
	    	
	    	pst.setInt(1,bean.getPdeaid());
	    	pst.setString(2,bean.getSal());
	    	pst.setString(3,bean.getLname());
	    	pst.setString(4,bean.getFname());
	    	pst.setString(5,bean.getMname());
	    	pst.setString(6,bean.getDesignation());
	    	pst.setString(7,bean.getQulification());
	    	pst.setString(8,bean.getEmailid());
	    	pst.setString(9,bean.getMobileno());
	    	
	    	pst.executeUpdate();
	    	System.out.println("inside dao");
	    	 pst.close();
	            con.close();
	    }
	    catch (Exception e)
	    {
			e.printStackTrace();
		}
    }
	
}
