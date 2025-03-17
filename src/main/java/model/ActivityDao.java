package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.DBConnection;

import bean.ActivityBean;

public class ActivityDao 
{
	public void addCommittee(String comtname)
	{
		try 
		{
			Connection con=DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("INSERT INTO `Add_Committee`(`committeename`)VALUES(?);");
			pst.setString(1, comtname);
			pst.executeUpdate();
			
			pst.close();
			con.close();
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		
	}
	
	public List<ActivityBean> getAllCommittee()
	{
	   List<ActivityBean> beans=new ArrayList<ActivityBean>();
	   try 
	   {
		 Connection con=DBConnection.createConnection();
		 PreparedStatement pst=con.prepareStatement("SELECT * FROM Add_Committee");
		 ResultSet rs=pst.executeQuery();
		 while (rs.next())
		 {
			 ActivityBean bean=new ActivityBean();
			 bean.setCmid(rs.getInt(1));
			 bean.setComtname(rs.getString(2));
			 
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
	
	public void deleteCommittee(int cmid) 
	{
	   try 
	   {
		Connection con=DBConnection.createConnection();
		PreparedStatement pst=con.prepareStatement("DELETE FROM `Add_Committee` WHERE cmid=?;");
		pst.setInt(1, cmid);
		
		pst.executeUpdate();
		
		pst.close();
		con.close();
	   }
	   catch (Exception e) 
	   {
		   e.printStackTrace();
	   }	
	}
	
	public void updateCommittee(String cmnm,int cmid) 
	{
		try 
		{
			Connection con=DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("UPDATE `Add_Committee` SET `committeename` = ? WHERE `cmid` = ?");
			pst.setString(1, cmnm);
			pst.setInt(2, cmid);
			
			pst.executeUpdate();
			
			pst.close();
			con.close();
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
	
	public void addCmtEvent(int cmid,String evntname)
	{
		try 
		{
			Connection con=DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("INSERT INTO `Add_CommitteeEvent`(`cmid`,`evntname`)VALUES(?,?)");
			pst.setInt(1, cmid);
			pst.setString(2, evntname);
			
			pst.executeUpdate();
			
			pst.close();
			con.close();
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}

	public List<ActivityBean> getAllCmtEvnt() 
	{
	   List<ActivityBean> beans=new ArrayList<ActivityBean>();
	   try 
	   {
		 Connection con=DBConnection.createConnection();
		 PreparedStatement pst=con.prepareStatement("select c.cmid,c.committeename,e.evid,e.evntname from Add_Committee c,Add_CommitteeEvent e where c.cmid=e.cmid;");
		 ResultSet rs=pst.executeQuery();
		 while (rs.next())
		 {
			 ActivityBean bean=new ActivityBean();
			 bean.setCmid(rs.getInt(1));
			 bean.setComtname(rs.getString(2));
			 bean.setEvid(rs.getInt(3));
			 bean.setEvntname(rs.getString(4));
			 
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
	public List<ActivityBean> getAllCmtEvntByCommittee(int cmid) 
	{
	   List<ActivityBean> beans=new ArrayList<ActivityBean>();
	   try 
	   {
		 Connection con=DBConnection.createConnection();
		 PreparedStatement pst=con.prepareStatement("select c.cmid,c.committeename,e.evid,e.evntname from Add_Committee c,Add_CommitteeEvent e where c.cmid=e.cmid and e.cmid=?");
		 pst.setInt(1, cmid);
		 ResultSet rs=pst.executeQuery();
		 while (rs.next())
		 {
			 ActivityBean bean=new ActivityBean();
			 bean.setCmid(rs.getInt(1));
			 bean.setComtname(rs.getString(2));
			 bean.setEvid(rs.getInt(3));
			 bean.setEvntname(rs.getString(4));
			 
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
	
	public void deleteCmtEvent(int evid) 
	{
	   try 
	   {
		 Connection con=DBConnection.createConnection();
		 PreparedStatement pst=con.prepareStatement("DELETE FROM `Add_CommitteeEvent` WHERE evid=?");
		 pst.setInt(1, evid);
		 
		 pst.executeUpdate();
		 
		 pst.close();
		 con.close();
	   }
	   catch (Exception e) 
	   {
		   e.printStackTrace();
	   }	
	}
	
	public void updateCmtEvent(int evid,int cmid,String evnm)
	{
	   try 
	   {
		 Connection con=DBConnection.createConnection();
		 PreparedStatement pst=con.prepareStatement("UPDATE `Add_CommitteeEvent` SET `cmid` = ?,`evntname` = ? WHERE `evid` = ?");
		 pst.setInt(1, cmid);
		 pst.setString(2, evnm);
		 pst.setInt(3, evid);
		 
		 pst.executeUpdate();
		 
		 pst.close();
		 con.close();
	   }
	   catch (Exception e) 
	   {
		   e.printStackTrace();
	   }	
	}
	
	public int addCmtEvntReport(int cmid,int evid,String doc) 
	{
	    int rid=0;
	    try 
	    {
			Connection con=DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("INSERT INTO `Add_CommiteetEventReport`(`cmid`,`evid`,`rdocument`)VALUES(?,?,?)",Statement.RETURN_GENERATED_KEYS);
			pst.setInt(1,cmid );
			pst.setInt(2, evid);
			pst.setString(3, doc);
			
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
	
	public List<ActivityBean> getAllCmtEvntReports()
	{
	   List<ActivityBean> beans=new ArrayList<ActivityBean>();
	   try 
	   {
		 Connection con=DBConnection.createConnection();
		 PreparedStatement pst=con.prepareStatement("select r.rpid,r.cmid,r.evid,r.rdocument,c.committeename,e.evntname from Add_CommiteetEventReport r,Add_Committee c,Add_CommitteeEvent e where r.cmid=c.cmid and r.evid=e.evid;");
		 ResultSet rs=pst.executeQuery();
		 while (rs.next())
		 {
		    ActivityBean bean=new ActivityBean();
		    bean.setRpid(rs.getInt(1));
		    bean.setCmid(rs.getInt(2));
		    bean.setEvid(rs.getInt(3));
		    bean.setRdocument(rs.getString(4));
		    bean.setComtname(rs.getString(5));
		    bean.setEvntname(rs.getString(6));
		    
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
	
	public void deleteCmtEvntReport(int rpid) 
	{
	  try 
	  {
		Connection con=DBConnection.createConnection();
		PreparedStatement pst=con.prepareStatement("DELETE FROM `Add_CommiteetEventReport` WHERE rpid=?");
		pst.setInt(1, rpid);
		pst.executeUpdate();
		
		pst.close();
		con.close();
	  }
	  catch (Exception e) 
	  {
		  e.printStackTrace();
	  }	
	}
	
	public void updateCmtEvtReportWithDoc(int cmid,int evid,String rept,int rpid) 
	{
	   try 
	   {
		 Connection con=DBConnection.createConnection();
		 PreparedStatement pst=con.prepareStatement("UPDATE `Add_CommiteetEventReport` SET `cmid` = ?,`evid` = ?,`rdocument` = ? WHERE `rpid` = ?;");
		 pst.setInt(1, cmid);
		 pst.setInt(2, evid);
		 pst.setString(3, rept);
		 pst.setInt(4, rpid);
		 
		 pst.executeUpdate();
		 
		 pst.close();
		 con.close();
	   }
	   catch (Exception e) 
	   {
		   e.printStackTrace();
	   }	
	}
	
	public void updateCmtEvtReportWithOutDoc(int cmid,int evid,int rpid) 
	{
	   try 
	   {
		 Connection con=DBConnection.createConnection();
		 PreparedStatement pst=con.prepareStatement("UPDATE `Add_CommiteetEventReport` SET `cmid` = ?,`evid` = ? WHERE `rpid` = ?;");
		 pst.setInt(1, cmid);
		 pst.setInt(2, evid);
		 pst.setInt(3, rpid);
		 
		 pst.executeUpdate();
		 
		 pst.close();
		 con.close();
	   }
	   catch (Exception e) 
	   {
		   e.printStackTrace();
	   }	
	}
	

	public int addCmtEvntPhotos(int cmid,int evid,String doc) 
	{
	    int rid=0;
	    try 
	    {
			Connection con=DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("INSERT INTO `Add_CommiteetEventPhotos`(`cmid`,`evid`,`pdocument`)VALUES(?,?,?)",Statement.RETURN_GENERATED_KEYS);
			pst.setInt(1,cmid );
			pst.setInt(2, evid);
			pst.setString(3, doc);
			
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
	
	public List<ActivityBean> getAllCmtEvntPhotos()
	{
	   List<ActivityBean> beans=new ArrayList<ActivityBean>();
	   try 
	   {
		 Connection con=DBConnection.createConnection();
		 PreparedStatement pst=con.prepareStatement("select r.pid,r.cmid,r.evid,r.pdocument,c.committeename,e.evntname from Add_CommiteetEventPhotos r,Add_Committee c,Add_CommitteeEvent e where r.cmid=c.cmid and r.evid=e.evid;");
		 ResultSet rs=pst.executeQuery();
		 while (rs.next())
		 {
		    ActivityBean bean=new ActivityBean();
		    bean.setPid(rs.getInt(1));
		    bean.setCmid(rs.getInt(2));
		    bean.setEvid(rs.getInt(3));
		    bean.setPdocument(rs.getString(4));
		    bean.setComtname(rs.getString(5));
		    bean.setEvntname(rs.getString(6));
		    
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
	
	public void deleteCmtEvntPhotos(int pid) 
	{
	  try 
	  {
		Connection con=DBConnection.createConnection();
		PreparedStatement pst=con.prepareStatement("DELETE FROM `Add_CommiteetEventPhotos` WHERE pid=?");
		pst.setInt(1, pid);
		pst.executeUpdate();
		
		pst.close();
		con.close();
	  }
	  catch (Exception e) 
	  {
		  e.printStackTrace();
	  }	
	}
	
	public List<ActivityBean> getAllCmtEvntReportsPhotoByCmid(int cmid)
	{
	   List<ActivityBean> beans=new ArrayList<ActivityBean>();
	   try 
	   {
		 Connection con=DBConnection.createConnection();
		 PreparedStatement pst=con.prepareStatement("select e.evid,e.evntname,r.rpid,r.rdocument,p.pid,p.pdocument from Add_CommitteeEvent e,Add_CommiteetEventReport r,Add_CommiteetEventPhotos p where e.evid=r.evid and p.evid=e.evid and e.cmid=? group by p.evid ;");
		 pst.setInt(1, cmid);
		 ResultSet rs=pst.executeQuery();
		 while (rs.next())
		 {
		    ActivityBean bean=new ActivityBean();
		    bean.setEvid(rs.getInt(1));
		    bean.setEvntname(rs.getString(2));
		    bean.setRpid(rs.getInt(3));
		    bean.setRdocument(rs.getString(4));
		    bean.setPid(rs.getInt(5));
		    bean.setPdocument(rs.getString(6));
		    
		    
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
	public List<ActivityBean> getAllCmtEvntPhotoByEvid(int cmid)
	{
	   List<ActivityBean> beans=new ArrayList<ActivityBean>();
	   try 
	   {
		 Connection con=DBConnection.createConnection();
		 PreparedStatement pst=con.prepareStatement("select pid,pdocument from Add_CommiteetEventPhotos where evid=?");
		 pst.setInt(1, cmid);
		 ResultSet rs=pst.executeQuery();
		 while (rs.next())
		 {
		    ActivityBean bean=new ActivityBean();
		    bean.setPid(rs.getInt(1));
		    bean.setPdocument(rs.getString(2));
		    
		    
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
