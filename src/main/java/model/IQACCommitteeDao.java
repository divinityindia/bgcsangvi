package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.DBConnection;

import bean.IQACCommitteeBean;


public class IQACCommitteeDao
{
	 public int addCommittee(String tlt,String doc) 
	    {
			int rid=0;
			try 
			{
				Connection con=DBConnection.createConnection();
				PreparedStatement pst=con.prepareStatement("INSERT INTO `IQACCommittee`(`title`,`document`)VALUES(?,?)",Statement.RETURN_GENERATED_KEYS);
				pst.setString(1,tlt);
				pst.setString(2,doc);
				
				pst.executeUpdate();
				ResultSet rs=pst.getGeneratedKeys();
				if(rs.next())
				{
					rid=rs.getInt(1);
				}
				rs.close();
				pst.close();
				con.close();
			}
			catch (Exception e) 
			{
				e.printStackTrace();
			}
			
			return rid;
		}
	    
	    public List<IQACCommitteeBean> getAllCommittee()
	    {
		   List<IQACCommitteeBean> beans=new ArrayList<IQACCommitteeBean>();
		   
		   try
		   {
			 Connection con=DBConnection.createConnection();
			 PreparedStatement pst=con.prepareStatement("SELECT * FROM IQACCommittee");
			 ResultSet rs=pst.executeQuery();
			 while (rs.next())
			 {
				 IQACCommitteeBean bean=new IQACCommitteeBean();
				 bean.setAcid(rs.getInt(1));
				 bean.setTitle(rs.getString(2));
				 bean.setDocument(rs.getString(3));
				 
				 beans.add(bean);
			 }
			 rs.close();
			 pst.close();
			 con.close();
		   }
		   catch (Exception e) 
		   {
			   e.printStackTrace();
		    }
		   return beans;
		}
	    
	    public void deleteCommittee(int acid)
	    {
		   try 
		   {
			Connection con=DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("DELETE FROM `IQACCommittee` WHERE acid=?;");
			pst.setInt(1,acid);
			
			pst.executeUpdate();
			pst.close();
			con.close();
		   }
		   catch (Exception e) 
		   {
			   e.printStackTrace();
		   }	
		}
}
