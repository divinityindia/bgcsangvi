package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.DBConnection;

import bean.AluminiFeedbackBean;

public class AluminiFeedbackDao 
{
	public int addAluminiFeedBack(AluminiFeedbackBean bean) 
	{
		int rid=0;
           try 
           {
			 Connection con=DBConnection.createConnection();
			 PreparedStatement pst=con.prepareStatement("INSERT INTO `AluminiFeedback`(`afname`,`emid`,`mob`,`gender`,`age`,`course`,`cyear`,`addr`,`occp`,`deg`,`pwork`,`meb`,`q1`,`q2`,`q3`,`q4`,`q5`,`q6`,`q7`,`q8`,`q9`,`q10`,`q11`,`q12`,`sug`,`document`)VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);",Statement.RETURN_GENERATED_KEYS);
			 pst.setString(1, bean.getAfname());
			 pst.setString(2, bean.getEmid());
			 pst.setString(3, bean.getMob());
			 pst.setString(4, bean.getGender());
			 pst.setString(5, bean.getAge());
			 pst.setString(6, bean.getCourse());
			 pst.setString(7, bean.getCyear());
			 pst.setString(8, bean.getAddr());
			 pst.setString(9, bean.getOccp());
			 pst.setString(10, bean.getDeg());
			 pst.setString(11, bean.getPwork());
			 pst.setString(12, bean.getMeb());
			 pst.setString(13, bean.getQ1());
			 pst.setString(14, bean.getQ2());
			 pst.setString(15, bean.getQ3());
			 pst.setString(16, bean.getQ4());
			 pst.setString(17, bean.getQ5());
			 pst.setString(18, bean.getQ6());
			 pst.setString(19, bean.getQ7());
			 pst.setString(20, bean.getQ8());
			 pst.setString(21, bean.getQ9());
			 pst.setString(22, bean.getQ10());
			 pst.setString(23, bean.getQ11());
			 pst.setString(24, bean.getQ12());
			 pst.setString(25, bean.getSug());
			 pst.setString(26, bean.getDocument());
			 
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

	public List<AluminiFeedbackBean> getAllAluFeedback() 
	{
	    List<AluminiFeedbackBean> beans=new ArrayList<AluminiFeedbackBean>();
	    try 
	    {
			Connection con=DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("SELECT * FROM AluminiFeedback");
			ResultSet rs=pst.executeQuery();
			while (rs.next())
			{
				AluminiFeedbackBean bean=new AluminiFeedbackBean();
				bean.setAfid(rs.getInt(1));
				bean.setAfname(rs.getString(2));
				bean.setEmid(rs.getString(3));
				bean.setMob(rs.getString(4));
				bean.setGender(rs.getString(5));
				bean.setAge(rs.getString(6));
				bean.setCourse(rs.getString(7));
				bean.setCyear(rs.getString(8));
				bean.setAddr(rs.getString(9));
				bean.setOccp(rs.getString(10));
				bean.setDeg(rs.getString(11));
				bean.setPwork(rs.getString(12));
				bean.setMeb(rs.getString(13));
				bean.setQ1(rs.getString(14));
				bean.setQ2(rs.getString(15));
				bean.setQ3(rs.getString(16));
				bean.setQ4(rs.getString(17));
				bean.setQ5(rs.getString(18));
				bean.setQ6(rs.getString(19));
				bean.setQ7(rs.getString(20));
				bean.setQ8(rs.getString(21));
				bean.setQ9(rs.getString(22));
				bean.setQ10(rs.getString(23));
				bean.setQ11(rs.getString(24));
				bean.setQ12(rs.getString(25));
				bean.setSug(rs.getString(26));
				bean.setDocument(rs.getString(27));
				
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
	public void deleteAluFDReportById(int id) 
	{
		try 
		{
			Connection con=DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("DELETE FROM `AluminiFeedback` WHERE afid=?;");
			pst.setInt(1, id);
			
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
