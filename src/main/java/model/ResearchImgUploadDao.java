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
import bean.ResearchImgUploadBean;

public class ResearchImgUploadDao 
{
	public int addResImg(ResearchImgUploadBean bean) 
	{
		int result=0;
		Connection con=null;
		try {
			 con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("INSERT INTO researchimg(`deptid`,`deptname`,`imgtype`,`imgtitle`,`image`)VALUES(?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS);
            pst.setInt(1,bean.getDeptid());
			pst.setString(2,bean.getDeptname());
            pst.setString(3,bean.getImgtype());
            pst.setString(4,bean.getImgtitle());
            pst.setString(5,bean.getImage());
			
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
	
	public List<ResearchImgUploadBean> getAllResImg1(int did)
	  {
		  List<ResearchImgUploadBean> beans =new ArrayList<ResearchImgUploadBean>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT * FROM researchimg where deptid='"+did+"'");
			  
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  ResearchImgUploadBean bean=new ResearchImgUploadBean();
				  bean.setImgid(rs.getInt(1));
				  bean.setDeptid(rs.getInt(2));
				  bean.setDeptname(rs.getString(3));
				  bean.setImgtype(rs.getString(4));
				  bean.setImgtitle(rs.getString(5));
				  bean.setImage(rs.getString(6));

				  beans.add(bean);
			  }
			  rs.close();
			  pst.close();
			  con.close();
			  System.out.println("in side getAllResImg :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return beans;
		
	  }
	public List<ResearchImgUploadBean> getAllResImg()
	  {
		  List<ResearchImgUploadBean> beans =new ArrayList<ResearchImgUploadBean>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT * FROM researchimg");
			  
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  ResearchImgUploadBean bean=new ResearchImgUploadBean();
				  bean.setImgid(rs.getInt(1));
				  bean.setDeptid(rs.getInt(2));
				  bean.setDeptname(rs.getString(3));
				  bean.setImgtype(rs.getString(4));
				  bean.setImgtitle(rs.getString(5));
				  bean.setImage(rs.getString(6));

				  beans.add(bean);
			  }
			  rs.close();
			  pst.close();
			  con.close();
			  System.out.println("in side getAllResImg :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return beans;
		
	  }
	
	public List<ResearchImgUploadBean> getAllResImg(int deptid)
	  {
		  List<ResearchImgUploadBean> beans =new ArrayList<ResearchImgUploadBean>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT * FROM researchimg where deptid='"+deptid+"' ");
			  
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  ResearchImgUploadBean bean=new ResearchImgUploadBean();
				  bean.setImgid(rs.getInt(1));
				  bean.setDeptid(rs.getInt(2));
				  bean.setDeptname(rs.getString(3));
				  bean.setImgtype(rs.getString(4));
				  bean.setImgtitle(rs.getString(5));
				  bean.setImage(rs.getString(6));

				  beans.add(bean);
			  }
			  rs.close();
			  pst.close();
			  con.close();
			  System.out.println("in side getAllResImg :)");
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
			  PreparedStatement pst=con.prepareStatement("SELECT DISTINCT semester FROM researchimg;");
			  
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
			  PreparedStatement pst=con.prepareStatement("select * from researchimg where semester='"+title+"' ");
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
	
	
	public void deleteResImg(int id) throws NamingException 
    {
    	try {
    		  Connection con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("delete from researchimg where imgid=?");
		
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
