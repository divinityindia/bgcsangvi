package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.DBConnection;

import bean.AcedemicCalenderBean;


public class AcedemicCalenderesDao {
	
	public int addAcedemicCalender(String tlt,String doc) 
    {
		int rid=0;
		try 
		{
			Connection con=DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("INSERT INTO `Acedemic_Calender`(`title`,`document`)VALUES(?,?)",Statement.RETURN_GENERATED_KEYS);
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
    
    public List<AcedemicCalenderBean> getAllAcedemicCalender()
    {
	   List<AcedemicCalenderBean> beans=new ArrayList<AcedemicCalenderBean>();
	   
	   try
	   {
		 Connection con=DBConnection.createConnection();
		 PreparedStatement pst=con.prepareStatement("SELECT * FROM Acedemic_Calender order by acid desc");
		 ResultSet rs=pst.executeQuery();
		 while (rs.next())
		 {
			 AcedemicCalenderBean bean=new AcedemicCalenderBean();
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
    
    public void deleteAcedemicCalender(int acid)
    {
	   try 
	   {
		Connection con=DBConnection.createConnection();
		PreparedStatement pst=con.prepareStatement("DELETE FROM `Acedemic_Calender` WHERE acid=?;");
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
