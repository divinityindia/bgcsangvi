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

import bean.CyberSecurityBean;
import bean.ResearchUploadBean;

public class CyberSecurityDao 
{
	public int addCyberSec(CyberSecurityBean bean) 
	{
		int result=0;
		Connection con=null;
		try {
			 con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("INSERT INTO cybersecurity(subject,semester,document)VALUES(?,?,?)",Statement.RETURN_GENERATED_KEYS);
            pst.setString(1,bean.getSubject());
            pst.setString(2,bean.getSemester());
            pst.setString(3,bean.getDocument());
			
			pst.executeUpdate();
			 ResultSet rs=pst.getGeneratedKeys();
	            while (rs.next())
	            {
	                result=rs.getInt(1);
	            }
	            
	            rs.close();
	            pst.close();
	            con.close();
			
		} catch (SQLException | NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				con.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			return result;
		}
		
	}
	
	public List<CyberSecurityBean> getAllCyberSec()
	  {
		  List<CyberSecurityBean> beans =new ArrayList<CyberSecurityBean>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT * FROM cybersecurity");
			  
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  CyberSecurityBean bean=new CyberSecurityBean();
				  bean.setCsid(rs.getInt(1));
				  bean.setSubject(rs.getString(2));
				  bean.setSemester(rs.getString(3));
				  bean.setDocument(rs.getString(4));

				  beans.add(bean);
			  }
			  rs.close();
	            pst.close();
	            con.close();
			  System.out.println("in side getAllCyberSec :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return beans;
		
	  }

	public List<CyberSecurityBean> getAllCyber()
	  {
		  List<CyberSecurityBean> beans =new ArrayList<CyberSecurityBean>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT DISTINCT semester FROM cybersecurity;");
			  
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  CyberSecurityBean bean=new CyberSecurityBean();
				  bean.setSemester(rs.getString(1));

				  beans.add(bean);
			  }
			  rs.close();
	            pst.close();
	            con.close();
			  System.out.println("in side getAllCyberSec :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return beans;
		
	  }
	
	
	
	
	
	
	public List<CyberSecurityBean> getAllCyberSec(String title)
	  {
		  List<CyberSecurityBean> beans=new ArrayList<CyberSecurityBean>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("select * from cybersecurity where semester='"+title+"' ");
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  CyberSecurityBean bean=new CyberSecurityBean();
                 
				  bean.setCsid(rs.getInt(1));
				  bean.setSubject(rs.getString(2));
				  bean.setSemester(rs.getString(3));
				  bean.setDocument(rs.getString(4));
				 
				  beans.add(bean);
				
			  }
			  rs.close();
	            pst.close();
	            con.close();
			  System.out.println("in side getAllResearchUpload-- :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return beans;
		
	  }
	
	
	public void deleteCyberSec(int id) throws NamingException 
    {
    	try {
    		  Connection con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("delete from cybersecurity where csid=?");
		
			     pst.setInt(1,id);
			     pst.executeUpdate();
			     System.out.println("inside Dao");
		            pst.close();
		            con.close();
    	    } 
    	catch (SQLException e) 
    	    {
			
			    e.printStackTrace();
		     }
		
		
	}

}
