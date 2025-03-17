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
import bean.ResearchDetailsBean;
import bean.ResearchImgUploadBean;

public class ResearchDetailsDao
{
	public int addResearchDetl(int deptid,String deptname,String dtl) 
	{
		int result=0;
		Connection con=null;
		try {
			 con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("INSERT INTO researchdetails(deptid,deptname,details)VALUES(?,?,?)",Statement.RETURN_GENERATED_KEYS);
            pst.setInt(1,deptid);
			pst.setString(2,deptname);
            pst.setString(3,dtl);
			
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
	
	public List<ResearchDetailsBean> getAllResearchDtl1(int did)
	  {
		  List<ResearchDetailsBean> beans =new ArrayList<ResearchDetailsBean>();
		  ArrayList<ResearchImgUploadBean> imglist =null;
		  ResearchImgUploadBean img=null;
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT * FROM researchdetails where deptid='"+did+"'");
			  
			  ResultSet rs=pst.executeQuery();
			 ResultSet rs2=null;
			  while(rs.next())
			  {
				  ResearchDetailsBean bean=new ResearchDetailsBean();
				  bean.setRdid(rs.getInt(1));
				  int dpid=rs.getInt(2);
				  bean.setDeptid(dpid);
				  bean.setDeptname(rs.getString(3));
				  bean.setDetails(rs.getString(4));
				  imglist=new ArrayList<>();
				  
				/*  pst=con.prepareStatement("SELECT imgid,imgtitle,image FROM researchimg where deptid='"+dpid+"'");
				  rs2=pst.executeQuery();
				  while(rs2.next())
				  {
					  img=new ResearchImgUploadBean();
					  img.setImgid(rs2.getInt(1));
					  img.setImgtitle(rs2.getString(2));
					  img.setImage(rs2.getString(3));
					 imglist.add(img);
				  }
				  bean.setImglist(imglist);*/
				  beans.add(bean);
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
		return beans;
		
	  }
	public List<ResearchDetailsBean> getAllResearchDtl()
	  {
		  List<ResearchDetailsBean> beans =new ArrayList<ResearchDetailsBean>();
		  ArrayList<ResearchImgUploadBean> imglist =null;
		  ResearchImgUploadBean img=null;
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT * FROM researchdetails");
			  
			  ResultSet rs=pst.executeQuery();
			 ResultSet rs2=null;
			  while(rs.next())
			  {
				  ResearchDetailsBean bean=new ResearchDetailsBean();
				  bean.setRdid(rs.getInt(1));
				  int dpid=rs.getInt(2);
				  bean.setDeptid(dpid);
				  bean.setDeptname(rs.getString(3));
				  bean.setDetails(rs.getString(4));
				  imglist=new ArrayList<>();
				  
				/*  pst=con.prepareStatement("SELECT imgid,imgtitle,image FROM researchimg where deptid='"+dpid+"'");
				  rs2=pst.executeQuery();
				  while(rs2.next())
				  {
					  img=new ResearchImgUploadBean();
					  img.setImgid(rs2.getInt(1));
					  img.setImgtitle(rs2.getString(2));
					  img.setImage(rs2.getString(3));
					 imglist.add(img);
				  }
				  bean.setImglist(imglist);*/
				  beans.add(bean);
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
		return beans;
		
	  }
	public List<ResearchDetailsBean> getAllResDtl(int deptid)
	  {
		  List<ResearchDetailsBean> beans =new ArrayList<ResearchDetailsBean>();
		  ArrayList<ResearchImgUploadBean> imglist =null;
		  ResearchImgUploadBean img=null;
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT * FROM researchdetails where deptid='"+deptid+"'");
			  
			  ResultSet rs=pst.executeQuery();
			 ResultSet rs2=null;
			  while(rs.next())
			  {
				  ResearchDetailsBean bean=new ResearchDetailsBean();
				  bean.setRdid(rs.getInt(1));
				  int dpid=rs.getInt(2);
				  bean.setDeptid(dpid);
				  bean.setDeptname(rs.getString(3));
				  bean.setDetails(rs.getString(4));
				  imglist=new ArrayList<>();
				  
				/*  pst=con.prepareStatement("SELECT imgid,imgtitle,image FROM researchimg where deptid='"+dpid+"'");
				  rs2=pst.executeQuery();
				  while(rs2.next())
				  {
					  img=new ResearchImgUploadBean();
					  img.setImgid(rs2.getInt(1));
					  img.setImgtitle(rs2.getString(2));
					  img.setImage(rs2.getString(3));
					 imglist.add(img);
				  }
				  bean.setImglist(imglist);*/
				  beans.add(bean);
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
		return beans;
		
	  }

	public List<ResearchDetailsBean> getAllResearchDtl(int id)
	  {
		  List<ResearchDetailsBean> beans =new ArrayList<ResearchDetailsBean>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT * FROM researchdetails where rdid='"+id+"'");
			  
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				 ResearchDetailsBean bean=new ResearchDetailsBean();
                  bean.setRdid(rs.getInt(1));
                  bean.setDeptid(rs.getInt(2));
                  bean.setDeptname(rs.getString(3));
                  bean.setDetails(rs.getString(4));
				  beans.add(bean);
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
		return beans;
		
	  }
	
	
	
	
	public void deleteResearchDtl(int id) throws NamingException 
    {
    	try {
    		  Connection con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("delete from researchdetails where rdid=?");
		
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
	
	//////////////////////////////////////////////////////////////
	
	public int addResearchPubDetl(int deptid,String deptname,String dtl) 
	{
		int result=0;
		Connection con=null;
		try {
			 con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("INSERT INTO researchpubdetails(deptid,deptname,details)VALUES(?,?,?)",Statement.RETURN_GENERATED_KEYS);
            pst.setInt(1,deptid);
			pst.setString(2,deptname);
            pst.setString(3,dtl);
			
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
	
	public List<ResearchDetailsBean> getAllResearchPubDtl1(int did)
	  {
		  List<ResearchDetailsBean> beans =new ArrayList<ResearchDetailsBean>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT * FROM researchpubdetails where deptid='"+did+"'");
			  
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  ResearchDetailsBean bean=new ResearchDetailsBean();
				  bean.setRdid(rs.getInt(1));
				  bean.setDeptid(rs.getInt(2));
				  bean.setDeptname(rs.getString(3));
				  bean.setDetails(rs.getString(4));
				 
				  beans.add(bean);
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
		return beans;
		
	  }
	public List<ResearchDetailsBean> getAllResearchPubDtl()
	  {
		  List<ResearchDetailsBean> beans =new ArrayList<ResearchDetailsBean>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT * FROM researchpubdetails");
			  
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  ResearchDetailsBean bean=new ResearchDetailsBean();
				  bean.setRdid(rs.getInt(1));
				  bean.setDeptid(rs.getInt(2));
				  bean.setDeptname(rs.getString(3));
				  bean.setDetails(rs.getString(4));
				 
				  beans.add(bean);
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
		return beans;
		
	  }
  
    
	public List<ResearchDetailsBean> getAllResPubDtl(int deptid)
	  {
		  List<ResearchDetailsBean> beans =new ArrayList<ResearchDetailsBean>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT * FROM researchpubdetails where deptid='"+deptid+"'");
			  
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  ResearchDetailsBean bean=new ResearchDetailsBean();
				  bean.setRdid(rs.getInt(1));
				  bean.setDeptid(rs.getInt(2));
				  bean.setDeptname(rs.getString(3));
				  bean.setDetails(rs.getString(4));
				 
				  beans.add(bean);
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
		return beans;
		
	  }
	public List<ResearchDetailsBean> getAllResearchPubDtl(int id)
	  {
		  List<ResearchDetailsBean> beans =new ArrayList<ResearchDetailsBean>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT * FROM researchpubdetails where rdid='"+id+"'");
			  
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				 ResearchDetailsBean bean=new ResearchDetailsBean();
                  bean.setRdid(rs.getInt(1));
                  bean.setDeptid(rs.getInt(2));
                  bean.setDeptname(rs.getString(3));
                  bean.setDetails(rs.getString(4));
                  
                
                  
				  beans.add(bean);
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
		return beans;
		
	  }
	
	
	
	
	public void deleteResearchPubDtl(int id) throws NamingException 
    {
    	try {
    		  Connection con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("delete from researchpubdetails where rdid=?");
		
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
