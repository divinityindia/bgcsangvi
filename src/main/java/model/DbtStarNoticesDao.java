package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import com.DBConnection;
import com.dateParse;

import bean.DbtStarNoticesBean;

public class DbtStarNoticesDao 
{
	public int addDBTStarNotices(DbtStarNoticesBean bean)
	{
		int rid=0;
		try 
		{
			Connection con=DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("INSERT INTO `DbtstarNotices` (`ntitle`,`sdate`,`edate`,`boption`,`document`)VALUES(?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS);
			pst.setString(1,bean.getNtitle());
			pst.setString(2,bean.getSdate());
			pst.setString(3,bean.getEdate());
			pst.setString(4,bean.getBoption());
			pst.setString(5,bean.getDocument());
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
	
	public List<DbtStarNoticesBean> getAllDBTStarNotices() 
	{
		List<DbtStarNoticesBean> beans=new ArrayList<DbtStarNoticesBean>();
		try 
		{
		  Connection con=DBConnection.createConnection();
		  PreparedStatement pst=con.prepareStatement("SELECT * FROM DbtstarNotices");
		  ResultSet rs=pst.executeQuery();
		  while(rs.next())
		  {
            DbtStarNoticesBean bean=new DbtStarNoticesBean();
            bean.setDbsid(rs.getInt(1));
            bean.setNtitle(rs.getString(2));
            bean.setSdate(dateParse.getLocalDate(rs.getString(3)));
            bean.setEdate(dateParse.getLocalDate(rs.getString(4)));
            bean.setBoption(rs.getString(5));
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

}
