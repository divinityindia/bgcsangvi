package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.DBConnection;

import bean.DBTStarPhotoCaptionBean;

public class DBTStarPhotoCaptionDao 
{
  public int addCaption(String cpname) 
  {
	  int rid=0;
	  try 
	  {
		  Connection con=DBConnection.createConnection();
		  PreparedStatement pst=con.prepareStatement("INSERT INTO `DbtStarPGCaption`(`captionname`)VALUES(?);",Statement.RETURN_GENERATED_KEYS);
		  pst.setString(1,cpname);
		  pst.executeUpdate();
		  ResultSet rs=pst.getGeneratedKeys();
		  while(rs.next())
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
  
  public List<DBTStarPhotoCaptionBean> getAllCaption()
  {
	  List<DBTStarPhotoCaptionBean> beans=new ArrayList<DBTStarPhotoCaptionBean>();
	  
	  try 
	  {
		  Connection con=DBConnection.createConnection();
		  PreparedStatement pst=con.prepareStatement("SELECT * FROM DbtStarPGCaption");
		  ResultSet rs=pst.executeQuery();
		  while(rs.next())
		  {
			  DBTStarPhotoCaptionBean bean=new DBTStarPhotoCaptionBean();
			  bean.setDbtpcid(rs.getInt(1));
			  bean.setCaption(rs.getString(2));
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
  
 
}
