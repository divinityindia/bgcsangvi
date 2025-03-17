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

import bean.DeptAbout;
import bean.StaffResult;

public class DeptAboutDao
{
	public int addAboutDep(DeptAbout about) 
	{
		 int daid=0;
		try {
			  Connection con = DBConnection.createConnection();
		
			String sql="INSERT INTO depthome(deptid,imgname,image) VALUES(?,?,?);";
			 PreparedStatement pst=con.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
			 pst.setInt(1,about.getDeptid());
			 pst.setString(2,about.getImgname());
			 pst.setString(3,about.getImage());
			 	
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
	public List<DeptAbout> getAllDepImg1(int did)
	  {
		  List<DeptAbout> abouts=new ArrayList<DeptAbout>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT dh.*,dn.deptname FROM depthome dh,department dn where dh.deptid=dn.deptid and dh.deptid='"+did+"'");
		
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  DeptAbout  about=new DeptAbout();
				  about.setDaid(rs.getInt(1));
				  about.setDeptid(rs.getInt(2));
				  about.setImgname(rs.getString(3));
				  about.setImage(rs.getString(4));
				  about.setDeptname(rs.getString(5));
				  
				
				  
				  abouts.add(about);
				 
				
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
		return abouts;
		
	  }
	
	public List<DeptAbout> getAllDepImg()
	  {
		  List<DeptAbout> abouts=new ArrayList<DeptAbout>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT dh.*,dn.deptname FROM depthome dh,department dn where dh.deptid=dn.deptid");
		
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  DeptAbout  about=new DeptAbout();
				  about.setDaid(rs.getInt(1));
				  about.setDeptid(rs.getInt(2));
				  about.setImgname(rs.getString(3));
				  about.setImage(rs.getString(4));
				  about.setDeptname(rs.getString(5));
				  
				
				  
				  abouts.add(about);
				 
				
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
		return abouts;
		
	  }
	
	public List<DeptAbout> getAllDepImg(int did)
	  {
		  List<DeptAbout> abouts=new ArrayList<DeptAbout>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("select * from depthome where deptid='"+did+"'");

			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  DeptAbout  about=new DeptAbout();
				  about.setDaid(rs.getInt(1));
				  about.setDeptid(rs.getInt(2));
				  about.setImgname(rs.getString(3));
				  about.setImage(rs.getString(4));
				  
				
				  
				  abouts.add(about);
				 
				
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
		return abouts;
		
	  }
	
	public List<DeptAbout> getAllDepDtl1(int did)
	  {
		  List<DeptAbout> abouts=new ArrayList<DeptAbout>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("select * from depthomeDel where deptid='"+did+"'");

			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  DeptAbout  about=new DeptAbout();
				  about.setDid(rs.getInt(1));
				  about.setDeptid(rs.getInt(2));
				  about.setDeptname(rs.getString(3));
				  about.setHeading(rs.getString(4));
				  about.setDetails(rs.getString(5));
				  
				
				  
				  abouts.add(about);
				 
				
			  }
			  rs.close();
	            pst.close();
	            con.close();
			  System.out.println("in side getAllDepDtl :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return abouts;
		
	  }
	
	public List<DeptAbout> getAllDepDtl()
	  {
		  List<DeptAbout> abouts=new ArrayList<DeptAbout>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("select * from depthomeDel");

			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  DeptAbout  about=new DeptAbout();
				  about.setDid(rs.getInt(1));
				  about.setDeptid(rs.getInt(2));
				  about.setDeptname(rs.getString(3));
				  about.setHeading(rs.getString(4));
				  about.setDetails(rs.getString(5));
				  
				
				  
				  abouts.add(about);
				 
				
			  }
			  rs.close();
	            pst.close();
	            con.close();
			  System.out.println("in side getAllDepDtl :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return abouts;
		
	  }
	public List<DeptAbout> getAllDepDtl(int did)
	  {
		  List<DeptAbout> abouts=new ArrayList<DeptAbout>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("select heading,details from depthomeDel where deptid='"+did+"'");

			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  DeptAbout  about=new DeptAbout();
				 
				  about.setHeading(rs.getString(1));
				  about.setDetails(rs.getString(2));
				  
				
				  
				  abouts.add(about);
				 
				
			  }
			  rs.close();
	            pst.close();
	            con.close();
			  System.out.println("in side getAllDepDtl :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return abouts;
		
	  }
	
	
	
	public List<DeptAbout> getAllDepName()
	  {
		  List<DeptAbout> abouts=new ArrayList<DeptAbout>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("select q.*, d.deptname from depthome q, department d where q.deptid=d.deptid");
		
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  
				  DeptAbout  about=new DeptAbout();
				  about.setDaid(rs.getInt(1));
				  about.setDeptid(rs.getInt(2));
				  about.setImgname(rs.getString(3));
				  about.setImage(rs.getString(4));
				  
				  
				
				  
				  abouts.add(about);
				 
				
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
		return abouts;
		
	  }
	
	public void  updateDeptImg(DeptAbout about,int daid,int did)
    {
	    try
	    {
	    	
	    	 Connection con = DBConnection.createConnection();
	    	PreparedStatement pst=con.prepareStatement("update depthome set imgname=?,image=? where daid=? and deptid=?");
	    	
	    	
	    	pst.setString(1,about.getImgname());
	    	pst.setString(2,about.getImage());
	    	pst.setInt(3,daid);
	    	pst.setInt(4,did);
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
	
	public List<DeptAbout> getDepDtl(int id)
	  {
		  List<DeptAbout> abouts=new ArrayList<DeptAbout>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("select * from depthomeDel where did='"+id+"' ");

			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  DeptAbout  about=new DeptAbout();
				  about.setDid(rs.getInt(1));
				  about.setDeptid(rs.getInt(2));
				  about.setDeptname(rs.getString(3));
				  about.setHeading(rs.getString(4));
				  about.setDetails(rs.getString(5));
				  
				
				  
				  abouts.add(about);
				 
				
			  }
			  rs.close();
	            pst.close();
	            con.close();
			  System.out.println("in side getDepDtl.... :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return abouts;
		
	  }
}
