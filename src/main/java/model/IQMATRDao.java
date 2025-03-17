package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import javax.naming.NamingException;

import com.DBConnection;

import bean.AQARBean;
import bean.IQMATRBean;

public class IQMATRDao 
{
	public int addIqmatr(IQMATRBean bean) 
	{
		int result=0;
		Connection con=null;
		try {
			 con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("INSERT INTO `IQMATR`(`year`,`title`,`document`)VALUES(?,?,?)",Statement.RETURN_GENERATED_KEYS);

			
			pst.setString(1,bean.getYear());
			pst.setString(2,bean.getTitle());
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
		return result;
	}
	
	public List<IQMATRBean> getAllIqmatr()
	  {
		  List<IQMATRBean> beans=new ArrayList<IQMATRBean>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT * from IQMATR");
			  
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  IQMATRBean bean=new IQMATRBean();
				   bean.setIqid(rs.getInt(1));
				   bean.setYear(rs.getString(2));
				   bean.setTitle(rs.getString(3));
				   bean.setDocument(rs.getString(4));
				 
				  beans.add(bean);
								
			  }
			  rs.close();
			  pst.close();
			  con.close();
			  System.out.println("in side getAllTprogramDao :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return beans;
		
	  }
	
	public void  updateIqmatr(IQMATRBean bean,int id)
    {
	    try
	    {
	    	
	    	 Connection con = DBConnection.createConnection();
	    	PreparedStatement pst=con.prepareStatement("UPDATE `IQMATR` SET `year` = ?,`title` = ?  WHERE `iqid` = ?");
	    	
	    	
	    	pst.setString(1,bean.getYear());
	    	pst.setString(2,bean.getTitle());
	    	pst.setInt(3,id);
	    	
	    	pst.executeUpdate();
	    	pst.close();
	    	con.close();
	    	System.out.println("inside dao");
	    }
	    catch (Exception e)
	    {
			e.printStackTrace();
		}
    }
	public void  updateIqmatrWithDoc(IQMATRBean bean,int id)
    {
	    try
	    {
	    	
	    	 Connection con = DBConnection.createConnection();
	    	PreparedStatement pst=con.prepareStatement("UPDATE `IQMATR` SET `year` = ?,`title` = ?,`document` =? WHERE `iqid` = ?");
	    	
	    	
	    	pst.setString(1,bean.getYear());
	    	pst.setString(2,bean.getTitle());
	    	pst.setString(3,bean.getDocument());
	    	pst.setInt(4,id);
	    	
	    	pst.executeUpdate();
	    	pst.close();
	    	con.close();
	    	System.out.println("inside dao");
	    }
	    catch (Exception e)
	    {
			e.printStackTrace();
		}
    }
	public int DeleteIqmatr(int id)
    {int Aqid=0;
	    try
	    {
	    	
	    	 Connection con = DBConnection.createConnection();
	         PreparedStatement pst=null;
	         pst=con.prepareStatement("delete from IQMATR where iqid=?",Statement.RETURN_GENERATED_KEYS);
		
			     pst.setInt(1,id);
			     pst.executeUpdate();
			     
			     ResultSet rs=pst.getGeneratedKeys();
		            while (rs.next())
		            {
		                Aqid=rs.getInt(1);
		            }
		            rs.close();
		            pst.close();
		            con.close();
			     System.out.println("inside Dao");
    	 
	    }
	    catch (Exception e)
	    {
			e.printStackTrace();
		}
	    return Aqid;
    }
	
	public LinkedHashMap<String, String[]> getAllAqar(String tblName) {

		LinkedHashMap<String, String[]> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        String[] arr=null;
       try{
            String sql="select * from "+tblName+"";
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
            	arr=new String[1];
            	arr[0]=rs.getString("document");
                m.put(rs.getString("aqid"),arr );
            }
            
            rs.close();
            statement.close();
            con.close();
            return m;
        }
        catch(Exception e)
        {
        	e.printStackTrace();
        }
       	finally {
       		try{
                con.close();
               }catch(Exception e1){
            	   e1.printStackTrace();
               }
       	}
       return null;
	}


}
