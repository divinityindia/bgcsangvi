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

import bean.FeedBkBean;



public class FeedBkDao 
{
	public int addFeedBackReport(FeedBkBean bean) 
	{
		int result=0;
		int did=0;
		Connection con=null;
		try {
			 con = DBConnection.createConnection();
			String sql="INSERT INTO `FeedBackReport`(`title`,`filename`)VALUES(?,?)";
			 PreparedStatement pst=con.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
			
			pst.setString(1,bean.getTitle());
			pst.setString(2,bean.getFilename());

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
	
	public List<FeedBkBean> getAllFeedBackReport()
	  {
		  List<FeedBkBean>  beans =new ArrayList<FeedBkBean>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT * FROM FeedBackReport");
			  
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  FeedBkBean bean=new FeedBkBean();
				  
				  bean.setFbid(rs.getInt(1));
				  bean.setTitle(rs.getString(2));
				  bean.setFilename(rs.getString(3));
				  
				 beans.add(bean);
				
			  }
			  rs.close();
			  pst.close();
			  con.close();
			  System.out.println("in side getAllFeedBackReport :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return beans;
		
	  }
	public void  deleteFBWithFile(int fbid)
    {
	    try
	    {
	    	
	    	 Connection con = DBConnection.createConnection();
	    	PreparedStatement pst=con.prepareStatement("DELETE FROM `FeedBackReport` WHERE `fbid` = ?");
	    	
	    	
	    	pst.setInt(1,fbid);
	    	
	    	pst.executeUpdate();
	    	System.out.println("inside deleteFBWithFile");
	    	pst.close();
	    	con.close();
	    }
	    catch (Exception e)
	    {
			e.printStackTrace();
		}
    }


	public void  updateFBWithFile(String tile,String file,int fbid)
    {
	    try
	    {
	    	
	    	 Connection con = DBConnection.createConnection();
	    	PreparedStatement pst=con.prepareStatement("UPDATE `FeedBackReport` SET `title` = ?,`filename` =? WHERE `fbid` = ?;");
	    	
	    	pst.setString(1,tile);
	    	pst.setString(2,file);
	    	pst.setInt(3,fbid);
	    	
	    	pst.executeUpdate();
	    	System.out.println("inside updateFBWithFile");
	    	pst.close();
	    	con.close();
	    }
	    catch (Exception e)
	    {
			e.printStackTrace();
		}
    }
	
	public void updateFBWithOutFile(String tile,int fbid)
    {
	    try
	    {
	    	
	    	 Connection con = DBConnection.createConnection();
	    	 PreparedStatement pst=con.prepareStatement("UPDATE `FeedBackReport` SET `title` = ? WHERE `fbid` = ?;");
		    	
		    	pst.setString(1,tile);
		    	pst.setInt(2,fbid);
		    	
		    	pst.executeUpdate();
		    	System.out.println("inside updateFBWithOutFile");
		    	
		    	pst.close();
		    	con.close();
	    }
	    catch (Exception e)
	    {
			e.printStackTrace();
		}
    }

}
