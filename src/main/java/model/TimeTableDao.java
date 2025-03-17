package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.DBConnection;

import bean.TimeTableBean;

public class TimeTableDao 
{
	public int addTimeTable(TimeTableBean bean) 
	{
	   int rid=0;
	   try 
	   {
		 Connection  con=DBConnection.createConnection();
		 PreparedStatement pst=con.prepareStatement("INSERT INTO `TimeTable`(`clsname`,`year`,`sem`,`title`,`document`)VALUES(?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS);
		 pst.setString(1, bean.getClsname());
		 pst.setString(2, bean.getYear());
		 pst.setString(3, bean.getSem());
		 pst.setString(4, bean.getTitle());
		 pst.setString(5, bean.getDocument());
		 
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

	public List<TimeTableBean> getAllTimeTable()
	{
	   List<TimeTableBean> beans=new ArrayList<TimeTableBean>();
	   
	   try 
	   {
		Connection con=DBConnection.createConnection();
		PreparedStatement pst=con.prepareStatement("SELECT * FROM TimeTable");
		ResultSet rs=pst.executeQuery();
		while (rs.next()) 
		{
			TimeTableBean bean=new TimeTableBean();
			bean.setTtid(rs.getInt(1));
			bean.setClsname(rs.getString(2));
			bean.setYear(rs.getString(3));
			bean.setSem(rs.getString(4));
			bean.setTitle(rs.getString(5));
			bean.setDocument(rs.getString(6));
			
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
	
	public void deleteTimeTable(int ttid) 
	{
	   try 
	   {
		 Connection con=DBConnection.createConnection();
		 PreparedStatement pst=con.prepareStatement("DELETE FROM `TimeTable` WHERE ttid=?");
		 pst.setInt(1, ttid);
		 
		 pst.executeUpdate();
		 
		 pst.close();
		 con.close();
	   }
	   catch (Exception e) 
	   {
		   e.printStackTrace();
	   }	
	}
	
	public void updateTimeTableWithDoc(TimeTableBean bean)
	{
	   try 
	   {
		 Connection con=DBConnection.createConnection();
		 PreparedStatement pst=con.prepareStatement("UPDATE `TimeTable` SET `clsname` = ?,`year` = ?,`sem` = ?,`title` = ?,`document` = ? WHERE `ttid` = ?");
		 pst.setString(1, bean.getClsname());
		 pst.setString(2, bean.getYear());
		 pst.setString(3,bean.getSem());
		 pst.setString(4, bean.getTitle());
		 pst.setString(5, bean.getDocument());
		 pst.setInt(6, bean.getTtid());
		 
		 pst.executeUpdate();
		 System.out.println("Insdie With Method......");
		 pst.close();
		 con.close();
	   }
	   catch (Exception e) 
	   {
		   e.printStackTrace();
	   }	
	}
	public void updateTimeTableWithOutDoc(TimeTableBean bean)
	{
	   try 
	   {
		 Connection con=DBConnection.createConnection();
		 PreparedStatement pst=con.prepareStatement("UPDATE `TimeTable` SET `clsname` = ?,`year` = ?,`sem` = ?,`title` = ? WHERE `ttid` = ?");
		 pst.setString(1, bean.getClsname());
		 pst.setString(2, bean.getYear());
		 pst.setString(3,bean.getSem());
		 pst.setString(4, bean.getTitle());
		 pst.setInt(5, bean.getTtid());
		 
		 pst.executeUpdate();
		 
		 System.out.println("Insdie WithOut Method......");
		 pst.close();
		 con.close();
	   }
	   catch (Exception e) 
	   {
		   e.printStackTrace();
	   }	
	}
}
