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
import com.itextpdf.text.pdf.PdfStructTreeController.returnType;

import bean.AQARBean;
import bean.StaffAchiv;



public class AqarDao 
{
	public void addAQAR(AQARBean bean) 
	{
		int result=0;
		Connection con=null;
		try {
			 con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("INSERT INTO AQAR(year,document)VALUES(?,?)");

			
			pst.setString(1,bean.getYear());
			pst.setString(2,bean.getDocument());
			
			result=pst.executeUpdate();
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
			
		}
		
	}
	
	public List<AQARBean> getAllAQAR()
	  {
		  List<AQARBean> beans=new ArrayList<AQARBean>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT * from AQAR");
			  
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  AQARBean bean=new AQARBean();
				  bean.setAqid(rs.getInt(1));
				  bean.setYear(rs.getString(2));
				  bean.setDocument(rs.getString(3));
				 
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
	
	public void  updateAQAR(AQARBean bean,int id)
    {
	    try
	    {
	    	
	    	 Connection con = DBConnection.createConnection();
	    	PreparedStatement pst=con.prepareStatement("update AQAR set year=?,document=? where aqid=?");
	    	
	    	
	    	pst.setString(1,bean.getYear());
	    	pst.setString(2,bean.getDocument());
	    	pst.setInt(3,id);
	    	
	    	pst.executeUpdate();
	    	System.out.println("inside dao");
	    }
	    catch (Exception e)
	    {
			e.printStackTrace();
		}
    }
	public int DeleteAQAR(int id)
    {int Aqid=0;
	    try
	    {
	    	
	    	 Connection con = DBConnection.createConnection();
	         PreparedStatement pst=null;
	         pst=con.prepareStatement("delete from AQAR where aqid=?",Statement.RETURN_GENERATED_KEYS);
		
			     pst.setInt(1,id);
			     pst.executeUpdate();
			     
			     ResultSet rs=pst.getGeneratedKeys();
		            while (rs.next())
		            {
		                Aqid=rs.getInt(1);
		            }
			     System.out.println("inside Dao");
			     rs.close();
		            pst.close();
		            con.close();
    	 
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
