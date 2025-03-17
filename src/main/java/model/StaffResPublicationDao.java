package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import com.DBConnection;

import bean.StaffResarch;

public class StaffResPublicationDao 
{
	public void addStaffResPub(StaffResarch resarch) 
	{
		int result=0;
		Connection con=null;
		try {
			 con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("INSERT INTO staffresearchpublication(deptid,title,detalis,document)VALUES(?,?,?,?)");

			pst.setInt(1, resarch.getDeptid());
			pst.setString(2, resarch.getTitle());
			pst.setString(3,resarch.getDetalis());
			pst.setString(4,resarch.getDocument());
		
			
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
	
	public List<StaffResarch> getAllStaffResPub()
	  {
		  List<StaffResarch> resarchs=new ArrayList<StaffResarch>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT sr.*,dn.deptname FROM staffresearchpublication sr,department dn where sr.deptid=dn.deptid;");
			  
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  StaffResarch resarch=new StaffResarch();
				  resarch.setSrid(rs.getInt(1));
				  resarch.setDeptid(rs.getInt(2));
				  resarch.setTitle(rs.getString(3));
					  resarch.setDetalis(rs.getString(4));
                  resarch.setDocument(rs.getString(5));
                  resarch.setDeptname(rs.getString(6));
									  
				  resarchs.add(resarch);
				 
				
			  }
			  rs.close();
			  pst.close();
			  con.close();
			  System.out.println("in side getAllStaffRes :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return resarchs;
		
	  }

	public List<StaffResarch> getAllStaffResPub(int did)
	  {
		  List<StaffResarch> resarchs=new ArrayList<StaffResarch>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("select * from staffresearchpublication where deptid=?");
			  pst.setInt(1, did);
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  StaffResarch resarch=new StaffResarch();
				  resarch.setSrid(rs.getInt(1));
				  resarch.setDeptid(rs.getInt(2));
				  resarch.setTitle(rs.getString(3));
					  resarch.setDetalis(rs.getString(4));
                  resarch.setDocument(rs.getString(5));					  
									  
				  resarchs.add(resarch);
				 
				 
				
			  }
			  rs.close();
			  pst.close();
			  con.close();
			  System.out.println("in side getAllStaffRes :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return resarchs;
		
	  }
	
	public void  updateDeptResPubUpdate(StaffResarch resarch,int daid)
    {
	    try
	    {
	    	
	    	 Connection con = DBConnection.createConnection();
	    	PreparedStatement pst=con.prepareStatement("update staffresearchpublication set deptid=?,title=?,detalis=?,document=? where srid=?");
	    	
	    	pst.setInt(1,resarch.getDeptid());
	    	pst.setString(2,resarch.getTitle());
	    	pst.setString(3,resarch.getDetalis());
	    	pst.setString(4,resarch.getDocument());
	    
	    	pst.setInt(5,daid);
	    	
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
