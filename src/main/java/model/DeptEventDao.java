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

import bean.DeptCourseStructure;
import bean.DeptEventBean;



public class DeptEventDao
{
	public int addDeptCaption(DeptEventBean bean) 
	{
		int result=0;
		int did=0;
		Connection con=null;
		try {
			 con = DBConnection.createConnection();
			String sql="INSERT INTO deptevent(deptid,caption)VALUES(?,?)";
			 PreparedStatement pst=con.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
			
			pst.setInt(1, bean.getDeptid());
			pst.setString(2,bean.getCaption());
			
			
			pst.executeUpdate();
			
			ResultSet rs=pst.getGeneratedKeys();
			while(rs.next())
			{
				result=rs.getInt(1);
				
				System.out.println(result);
			}
			rs.close();
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
		return result;
		
	}
	
	public List<DeptEventBean> getAllDepEvent1(int did)
	  {
		  List<DeptEventBean>  beans =new ArrayList<DeptEventBean>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT sr.*,dn.deptname FROM deptevent sr,department dn where sr.deptid=dn.deptid and sr.deptid='"+did+"' ");
			  
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  DeptEventBean bean=new DeptEventBean();
				  
				  bean.setEid(rs.getInt(1));
				  bean.setDeptid(rs.getInt(2));
				  bean.setCaption(rs.getString(3));
				  bean.setDeptname(rs.getString(4));
				  
				 beans.add(bean);
				
			  }
			  rs.close();
				pst.close();
				con.close();
			  System.out.println("in side getAllTprogramDao :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return beans;
		
	  }
	public List<DeptEventBean> getAllDepEvent()
	  {
		  List<DeptEventBean>  beans =new ArrayList<DeptEventBean>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT sr.*,dn.deptname FROM deptevent sr,department dn where sr.deptid=dn.deptid");
			  
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  DeptEventBean bean=new DeptEventBean();
				  
				  bean.setEid(rs.getInt(1));
				  bean.setDeptid(rs.getInt(2));
				  bean.setCaption(rs.getString(3));
				  bean.setDeptname(rs.getString(4));
				  
				 beans.add(bean);
				
			  }
			  rs.close();
				pst.close();
				con.close();
			  System.out.println("in side getAllTprogramDao :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return beans;
		
	  }

	public List<DeptEventBean> getAllDeptEvent(int did)
	  {
		  List<DeptEventBean> beans=new ArrayList<DeptEventBean>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("select * from deptevent where deptid=? ");
			  pst.setInt(1, did);
			  ResultSet rs=pst.executeQuery();
			 ResultSet rs1=null;
			  while(rs.next())
			  {
				  DeptEventBean bean=new DeptEventBean();
				  
				 bean.setEid(rs.getInt(1));
				  bean.setDeptid(rs.getInt(2));
				  bean.setCaption(rs.getString(3));
				  
				  pst=con.prepareStatement("select image from depteventpic where cid=? limit 1");
				  pst.setInt(1,bean.getEid() );
				  rs1= pst.executeQuery();
				    if(rs1.next())
				    {
				    	bean.setImage(rs1.getString(1));
				    
				    	  beans.add(bean);
				    }
				
				
			  }
			  rs.close();
				pst.close();
				con.close();
			  System.out.println("in side getAllcourseStr-- :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return beans;
		
	  }
	public void  updateDeptEvent(DeptEventBean bean,int daid)
    {
	    try
	    {
	    	
	    	 Connection con = DBConnection.createConnection();
	    	PreparedStatement pst=con.prepareStatement("update deptevent set deptid=?,caption=? where eid=?");
	    	
	    	pst.setInt(1,bean.getDeptid());
	    	pst.setString(2,bean.getCaption());
	    	pst.setInt(3,daid);
	    	
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
	
	public void  updateDeptEventPic(int did,int daid)
    {
	    try
	    {
	    	
	    	 Connection con = DBConnection.createConnection();
	    	PreparedStatement pst=con.prepareStatement("update depteventpic set deptid=? where cid=?");
	    	
	    	pst.setInt(1,did);
	    	pst.setInt(2,daid);
	    	
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
