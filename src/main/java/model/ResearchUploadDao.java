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

import bean.ResearchUploadBean;

public class ResearchUploadDao
{
	public int addResearchUpload(ResearchUploadBean bean) 
	{
		int result=0;
		Connection con=null;
		try {
			 con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("INSERT INTO researchupload(title,details,document)VALUES(?,?,?)",Statement.RETURN_GENERATED_KEYS);
            pst.setString(1,bean.getTitle());
            pst.setString(2,bean.getDetails());
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
	
	public List<ResearchUploadBean> getAllReseachUpload()
	  {
		  List<ResearchUploadBean> beans =new ArrayList<ResearchUploadBean>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT * FROM researchupload");
			  
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  ResearchUploadBean bean=new ResearchUploadBean();
				  bean.setRsid(rs.getInt(1));
				  bean.setTitle(rs.getString(2));
				  bean.setDetails(rs.getString(3));
				  bean.setDocument(rs.getString(4));

				  beans.add(bean);
			  }
			  rs.close();
			  pst.close();
			  con.close();
			  System.out.println("in side getAllReseachUpload :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return beans;
		
	  }

	public List<ResearchUploadBean> getAllResearchUpload(String title)
	  {
		  List<ResearchUploadBean> beans=new ArrayList<ResearchUploadBean>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("select * from researchupload where title='"+title+"' ");
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  ResearchUploadBean bean=new ResearchUploadBean();
				  bean.setRsid(rs.getInt(1));
				  bean.setTitle(rs.getString(2));
				  bean.setDetails(rs.getString(3));
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
	
	
	public void deleteResearchUpload(int id) throws NamingException 
    {
    	try {
    		  Connection con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("delete from researchupload where rsid=?");
		
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
