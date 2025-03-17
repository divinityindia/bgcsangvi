package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import com.DBConnection;

import bean.ExaminationDetalisBean;
import bean.ResearchDetailsBean;
import bean.ResearchImgUploadBean;

public class ExaminationDetalisDao
{
	//////////// Examination Details Methods
	public int addExamDtl(String dtl,int id) 
	{
		int result=0;
		Connection con=null;
		try {
			 con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("UPDATE `ExaminationDetalis` SET `details` = ? WHERE `exdid` = ?");            
            pst.setString(1,dtl);
            pst.setInt(2,id);
			
			pst.executeUpdate();
			
			pst.close();
			con.close();
			
		} catch (SQLException | NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
			return id;
		
	}	
	public ExaminationDetalisBean getAllExamDtl()
	  {
		  
		ExaminationDetalisBean bean=new ExaminationDetalisBean();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT * FROM ExaminationDetalis");
			  
			  ResultSet rs=pst.executeQuery();
			  while(rs.next())
			  {
				  
				  bean.setExdid(rs.getInt(1));
				  bean.setExedetails(rs.getString(2));
				
			  }
			  rs.close();
			  pst.close();
			  con.close();
			  System.out.println("in side getAllResearchDtl :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return bean;
		
	  }
	
	////////////Eresource Methods
	public int addEresourceDtl(String dtl,int id) 
	{
		int result=0;
		Connection con=null;
		try {
			 con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("UPDATE `eresources` SET `details` = ? WHERE `eid` = ?");            
            pst.setString(1,dtl);
            pst.setInt(2,id);
			
			pst.executeUpdate();
			
			pst.close();
			con.close();
			
		} catch (SQLException | NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
			return id;
		
	}	
	
	
	public ExaminationDetalisBean getAllEresourceDtl()
	  {
		  
		ExaminationDetalisBean bean=new ExaminationDetalisBean();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT * FROM eresources");
			  
			  ResultSet rs=pst.executeQuery();
			 ResultSet rs2=null;
			  while(rs.next())
			  {
				  
				  bean.setEid(rs.getInt(1));
				  bean.setEresdtl(rs.getString(2));
				
			  }
			  rs.close();
			  pst.close();
			  con.close();
			  System.out.println("in side getAllResearchDtl :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return bean;
		
	  }
////////////Course Offers Details methods
public int addCourseOffersDtl(String dtl,int id) 
{
Connection con=null;
try {
	 con = DBConnection.createConnection();
	PreparedStatement pst=con.prepareStatement("UPDATE `CourseOffers` SET `codtls` = ? WHERE `coid` = ?");            
    pst.setString(1,dtl);
    pst.setInt(2,id);
	
	pst.executeUpdate();
	
	pst.close();
	con.close();
	
} catch (SQLException | NamingException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

	return id;

}	


public ExaminationDetalisBean getAllCourseOffersDtl()
{
  
ExaminationDetalisBean bean=new ExaminationDetalisBean();
  try 
     {
	  Connection con = DBConnection.createConnection();
	  System.out.println(con);
	  PreparedStatement pst=con.prepareStatement("SELECT * FROM CourseOffers");
	  
	  ResultSet rs=pst.executeQuery();
	  while(rs.next())
	  {
		  
		  bean.setCoid(rs.getInt(1));
		  bean.setCodtls(rs.getString(2));
		
	  }
	  rs.close();
	  pst.close();
	  con.close();
	  System.out.println("in side getAllResearchDtl :)");
     } 
  catch (SQLException | NamingException e)
     {
	    e.printStackTrace();
     }
return bean;

}
}
