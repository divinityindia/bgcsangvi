package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.DBConnection;
import com.dateParse;

import bean.FeedBackWebBean;
import bean.WebFeedBack2021Bean;

public class FeedBackWebDao {

	public int addFeedBack(FeedBackWebBean bean)
	  {
		  int rid=0;
		try 
		{
			Connection con=DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("INSERT INTO `Webinarfeedback`(`sal`,`fname`,`mname`,`lname`,`depinst`,`emid`,`cont`,`date`,`ans1`,`ans2`,`ans3`)VALUES(?,?,?,?,?,?,?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS);
			pst.setString(1,bean.getSal());
			pst.setString(2,bean.getFname());
			pst.setString(3,bean.getMname());
			pst.setString(4,bean.getLname());
			pst.setString(5,bean.getDepinst());
			pst.setString(6,bean.getEmid());
			pst.setString(7,bean.getMob());
			pst.setString(8,dateParse.getMysqlDate(bean.getDate()));
			pst.setString(9,bean.getAns1());
			pst.setString(10,bean.getAns2());
			pst.setString(11,bean.getAns3());
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
	
	
	// Webinar Bean 2021
	
	public int addWebFeedBack2021(WebFeedBack2021Bean bean)
	{
		int rid=0;
		try 
		{
			Connection con=DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("INSERT INTO `WebinarFeedBack_2021`(`sal`,`fname`,`mname`,`lname`,`organization`,`designation`,`city`,`state`,`country`,`mob`,`email`,`gender`,`ans1`,`ans2`,`ans3`,`ans4`,`ans5`,`suggestion`,`date`)VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);",Statement.RETURN_GENERATED_KEYS);
			pst.setString(1, bean.getSal());
			pst.setString(2, bean.getFname());
			pst.setString(3, bean.getMname());
			pst.setString(4, bean.getLname());
			pst.setString(5, bean.getOrg());
			pst.setString(6, bean.getDeg());
			pst.setString(7, bean.getCity());
			pst.setString(8, bean.getState());
			pst.setString(9, bean.getCountry());
			pst.setString(10, bean.getMob());
			pst.setString(11, bean.getEmail());
			pst.setString(12, bean.getGender());
			pst.setString(13, bean.getAns1());
			pst.setString(14, bean.getAns2());
			pst.setString(15, bean.getAns3());
			pst.setString(16, bean.getAns4());
			pst.setString(17, bean.getAns5());
			pst.setString(18, bean.getSugg());
			pst.setString(19, dateParse.getMysqlDate(bean.getWebdate()));
			
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
}
