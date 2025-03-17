package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.DBConnection;

import bean.ExaminationSubBean;

public class ExaminationSubDao 
{
	public int addExamTimeTable(String tlt,String doc) 
	{
	   int rid=0;
	   try 
	   {
		 Connection con=DBConnection.createConnection();
		 PreparedStatement pst=con.prepareStatement("INSERT INTO `Exmn_Timetable`(`title`,`document`)VALUES(?,?)",Statement.RETURN_GENERATED_KEYS);
		 pst.setString(1, tlt);
		 pst.setString(2, doc);
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
	
	public List<ExaminationSubBean> getAllExamTimeTable() 
	{
		List<ExaminationSubBean> beans=new ArrayList<ExaminationSubBean>();
		try 
		{
			Connection con=DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("SELECT * FROM Exmn_Timetable");
			ResultSet rs=pst.executeQuery();
			while (rs.next())
			{
				ExaminationSubBean bean=new ExaminationSubBean();
				bean.setEsid(rs.getInt(1));
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
	public void deleteExamTimeTable(int esid) 
	{
		try 
		{
			Connection con=DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("DELETE FROM `Exmn_Timetable` WHERE esid=?");
			pst.setInt(1, esid);
			pst.executeUpdate();
			
			pst.close();
			con.close();
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}

	public int addExamAcademicCalender(String tlt,String doc) 
	{
	   int rid=0;
	   try 
	   {
		 Connection con=DBConnection.createConnection();
		 PreparedStatement pst=con.prepareStatement("INSERT INTO `Exmn_AcademicCalender`(`title`,`document`)VALUES(?,?)",Statement.RETURN_GENERATED_KEYS);
		 pst.setString(1, tlt);
		 pst.setString(2, doc);
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
	
	public List<ExaminationSubBean> getAllExamAcademicCalender() 
	{
		List<ExaminationSubBean> beans=new ArrayList<ExaminationSubBean>();
		try 
		{
			Connection con=DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("SELECT * FROM Exmn_AcademicCalender");
			ResultSet rs=pst.executeQuery();
			while (rs.next())
			{
				ExaminationSubBean bean=new ExaminationSubBean();
				bean.setEsid(rs.getInt(1));
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
	public void deleteExamAcademicCalender(int esid) 
	{
		try 
		{
			Connection con=DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("DELETE FROM `Exmn_AcademicCalender` WHERE esid=?");
			pst.setInt(1, esid);
			pst.executeUpdate();
			
			pst.close();
			con.close();
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
	public int addExamNotices(String tlt,String doc) 
	{
	   int rid=0;
	   try 
	   {
		 Connection con=DBConnection.createConnection();
		 PreparedStatement pst=con.prepareStatement("INSERT INTO `Exmn_Notices`(`title`,`document`)VALUES(?,?)",Statement.RETURN_GENERATED_KEYS);
		 pst.setString(1, tlt);
		 pst.setString(2, doc);
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
	
	public List<ExaminationSubBean> getAllExamNotices() 
	{
		List<ExaminationSubBean> beans=new ArrayList<ExaminationSubBean>();
		try 
		{
			Connection con=DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("SELECT * FROM Exmn_Notices");
			ResultSet rs=pst.executeQuery();
			while (rs.next())
			{
				ExaminationSubBean bean=new ExaminationSubBean();
				bean.setEsid(rs.getInt(1));
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
	public void deleteExamNotices(int esid) 
	{
		try 
		{
			Connection con=DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("DELETE FROM `Exmn_Notices` WHERE esid=?");
			pst.setInt(1, esid);
			pst.executeUpdate();
			
			pst.close();
			con.close();
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
	public int addExamResultSummary(String tlt,String doc) 
	{
	   int rid=0;
	   try 
	   {
		 Connection con=DBConnection.createConnection();
		 PreparedStatement pst=con.prepareStatement("INSERT INTO `Exmn_ResultSummary`(`title`,`document`)VALUES(?,?)",Statement.RETURN_GENERATED_KEYS);
		 pst.setString(1, tlt);
		 pst.setString(2, doc);
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
	
	public List<ExaminationSubBean> getAllExamResultSummary() 
	{
		List<ExaminationSubBean> beans=new ArrayList<ExaminationSubBean>();
		try 
		{
			Connection con=DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("SELECT * FROM Exmn_ResultSummary");
			ResultSet rs=pst.executeQuery();
			while (rs.next())
			{
				ExaminationSubBean bean=new ExaminationSubBean();
				bean.setEsid(rs.getInt(1));
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
	public void deleteExamResultSummary(int esid) 
	{
		try 
		{
			Connection con=DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("DELETE FROM `Exmn_ResultSummary` WHERE esid=?");
			pst.setInt(1, esid);
			pst.executeUpdate();
			
			pst.close();
			con.close();
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}

	public int addExamAnnualResultReport(String tlt,String doc) 
	{
	   int rid=0;
	   try 
	   {
		 Connection con=DBConnection.createConnection();
		 PreparedStatement pst=con.prepareStatement("INSERT INTO `Exmn_AnnualResultReport`(`title`,`document`)VALUES(?,?)",Statement.RETURN_GENERATED_KEYS);
		 pst.setString(1, tlt);
		 pst.setString(2, doc);
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
	
	public List<ExaminationSubBean> getAllExamAnnualResultReport() 
	{
		List<ExaminationSubBean> beans=new ArrayList<ExaminationSubBean>();
		try 
		{
			Connection con=DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("SELECT * FROM Exmn_AnnualResultReport");
			ResultSet rs=pst.executeQuery();
			while (rs.next())
			{
				ExaminationSubBean bean=new ExaminationSubBean();
				bean.setEsid(rs.getInt(1));
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
	public void deleteExamAnnualResultReport(int esid) 
	{
		try 
		{
			Connection con=DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("DELETE FROM `Exmn_AnnualResultReport` WHERE esid=?");
			pst.setInt(1, esid);
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
