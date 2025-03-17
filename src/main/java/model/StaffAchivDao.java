package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import com.DBConnection;

import bean.DeptAbout;
import bean.StaffAchiv;

public class StaffAchivDao 
{

	public void addStaffAchiv(StaffAchiv achiv) 
	{
		int result=0;
		Connection con=null;
		try {
			 con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("INSERT INTO StaffAchiv(deptid,staffname,awardname,details,document)VALUES(?,?,?,?,?)");

			pst.setInt(1, achiv.getDeptid());
			pst.setString(2, achiv.getStaffname());
			pst.setString(3,achiv.getAwardname());
			pst.setString(4,achiv.getDetails());
			pst.setString(5,achiv.getDocument());
			
			result=pst.executeUpdate();
			pst.close();
			con.close();
			
		} catch (SQLException | NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				con.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
		}
		
	}
	
	public List<StaffAchiv> getAllStaffAchiv()
	  {
		  List<StaffAchiv> achivs=new ArrayList<StaffAchiv>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT sa.*,dn.deptname FROM StaffAchiv sa,department dn where sa.deptid=dn.deptid;");
			  
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  StaffAchiv achiv=new StaffAchiv();
				  achiv.setSaid(rs.getInt(1));
				  achiv.setDeptid(rs.getInt(2));
				  achiv.setStaffname(rs.getString(3));
				  achiv.setAwardname(rs.getString(4));
				  achiv.setDetails(rs.getString(5));
				  achiv.setDocument(rs.getString(6));
				  achiv.setDeptname(rs.getString(7));
				  
				achivs.add(achiv);
				 
				
			  }
			  pst.close();
			  con.close();
			  System.out.println("in side getAllTprogramDao :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return achivs;
		
	  }

	public List<StaffAchiv> getAllStaffAchiv(int did)
	  {
		  List<StaffAchiv> achivs=new ArrayList<StaffAchiv>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("select * from StaffAchiv where deptid=?");
			  pst.setInt(1, did);
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  StaffAchiv achiv=new StaffAchiv();
				  achiv.setSaid(rs.getInt(1));
				  achiv.setDeptid(rs.getInt(2));
				  achiv.setStaffname(rs.getString(3));
				  achiv.setAwardname(rs.getString(4));
				  achiv.setDetails(rs.getString(5));
				  achiv.setDocument(rs.getString(6));
				  
				achivs.add(achiv);
				 
				
			  }
			  rs.close();
			  pst.close();
			  con.close();
			  System.out.println("in side getAllStaffAchiv :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return achivs;
		
	  }
	
	public void  updateDeptStaffAchiv(StaffAchiv achiv,int daid)
    {
	    try
	    {
	    	
	    	 Connection con = DBConnection.createConnection();
	    	PreparedStatement pst=con.prepareStatement("update StaffAchiv set deptid=?,staffname=?,awardname=?,details=?,document=? where said=?");
	    	
	    	pst.setInt(1,achiv.getDeptid());
	    	pst.setString(2,achiv.getStaffname());
	    	pst.setString(3,achiv.getAwardname());
	    	pst.setString(4,achiv.getDetails());
	    	pst.setString(5,achiv.getDocument());
	    	pst.setInt(6,daid);
	    	
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
