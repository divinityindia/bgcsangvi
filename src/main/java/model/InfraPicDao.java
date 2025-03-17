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

import bean.DeptEventBean;
import bean.InfraPicBean;

public class InfraPicDao
{
	public int addInfraPic(InfraPicBean bean) 
	{
		int result=0;
		Connection con=null;
		try {
			 con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("INSERT INTO infrapic(imgtype,title,image)VALUES(?,?,?)",Statement.RETURN_GENERATED_KEYS);

			pst.setString(1,bean.getImgtype() );
			pst.setString(2,bean.getTitle());
			pst.setString(3,bean.getImage());
			
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
	
	public List<InfraPicBean> getAllInfraPic()
	  {
		  List<InfraPicBean> beans=new ArrayList<InfraPicBean>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT * FROM infrapic");
			  
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  InfraPicBean bean=new InfraPicBean();
				  bean.setImgid(rs.getInt(1));
				  bean.setImgtype(rs.getString(2));
				  bean.setTitle(rs.getString(3));
				  bean.setImage(rs.getString(4));
				  
				  beans.add(bean);
				
			  }
			  rs.close();
			  pst.close();
			  con.close();
			  System.out.println("in side getAllInfraPic :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return beans;
		
	  }

	public List<InfraPicBean> getAllInfraPic(String dpmenu)
	  {
		  List<InfraPicBean> beans=new ArrayList<InfraPicBean>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("select * from infrapic where imgtype='"+dpmenu+"' ");
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  InfraPicBean bean=new InfraPicBean();
				  bean.setImgid(rs.getInt(1));
				  bean.setImgtype(rs.getString(2));
				  bean.setTitle(rs.getString(3));
				  bean.setImage(rs.getString(4));
                  beans.add(bean);				
			  }
			  rs.close();
			  pst.close();
			  con.close();
			  System.out.println("in side getAllInfraPic-- :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return beans;
		
	  }
	
	
	public void deleteInfraPic(int id) throws NamingException 
    {
    	try {
    		  Connection con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("delete from infrapic where imgid=?");
		
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
	
	public List<InfraPicBean> getAllInfra()
	  {
		  List<InfraPicBean> beans=new ArrayList<InfraPicBean>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT DISTINCT imgtype FROM infrapic");
			  ResultSet rs=pst.executeQuery();
			 ResultSet rs1=null;
			  while(rs.next())
			  {
				  String imgty=rs.getString(1);
				  
				  pst=con.prepareStatement("select * from infrapic where imgtype='"+imgty+"' limit 1");
				 // pst.setInt(1,bean.getEid() );
				  rs1= pst.executeQuery();
				    if(rs1.next())
				    {
				    	InfraPicBean bean=new InfraPicBean();
				    	bean.setImgid(rs1.getInt(1));
				    	bean.setImgtype(rs1.getString(2));
				    	bean.setTitle(rs1.getString(3));
				    	bean.setImage(rs1.getString(4));
				    
				    	  beans.add(bean);
				    }
				    rs1.close();
				
				
			  }
			  rs.close();
			  pst.close();
			  con.close();
			  System.out.println("in side getAllcourseStr-- :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return beans;
		
	  }
}
