package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import com.DBConnection;

import bean.ProspectusBean;

public class ProspectusDao 
{
  public void updateProspectus(String tlt,String doc,int pbid) 
  {
	  try 
	  {
		Connection con=DBConnection.createConnection();
		PreparedStatement pst=con.prepareStatement("UPDATE `Prospectus` SET `title` = ?,`document` = ? WHERE `pbid` = ?;");
		pst.setString(1,tlt);
		pst.setString(2,doc);
		pst.setInt(3,pbid);
		 pst.executeUpdate();
		 System.out.println("Updation Scccesss");
		 pst.close();
		 con.close();
	  }
	  catch (Exception e) 
	  {
		  e.printStackTrace();
	  }
  }
  
  public ProspectusBean getProspectus() 
  {
	 ProspectusBean bean=new ProspectusBean();
	 try 
	 {
		Connection con=DBConnection.createConnection();
		PreparedStatement pst=con.prepareStatement("SELECT * FROM Prospectus");
		ResultSet rs=pst.executeQuery();
		while (rs.next())
		{
			bean.setPbid(rs.getInt(1));
			bean.setTitle(rs.getString(2));
			bean.setDocument(rs.getString(3));
		}
		rs.close();
		pst.close();
		con.close();
	 }
	 catch (Exception e) 
	 {
		 e.printStackTrace();
	 }
	 return bean;
  }
}
