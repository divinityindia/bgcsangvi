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

import bean.DeptCourseStructure;
import bean.SddocBean;

public class SddocDao
{

	public int addSDDoc(SddocBean bean) 
	{
		int result=0;
		Connection con=null;
		try {
			 con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("INSERT INTO sddoc(dcotype,doctitle,docname)VALUES(?,?,?)",Statement.RETURN_GENERATED_KEYS);

			pst.setString(1,bean.getDoctype());
			pst.setString(2,bean.getDoctitle());
			pst.setString(3,bean.getDocument());
			result=pst.executeUpdate();
			
			ResultSet rs=pst.getGeneratedKeys();
			while(rs.next())
			{
				result=rs.getInt(1);
				System.out.println(result);
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
			
		}
		return result;
		
	}
	
	public List<SddocBean> getAllDoc()
	  {
		  List<SddocBean>  beans =new ArrayList<SddocBean>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT * from sddoc");
			  
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  SddocBean bean=new SddocBean();
                    bean.setSdid(rs.getInt(1));
                    bean.setDoctype(rs.getString(2));
                    bean.setDoctitle(rs.getString(3));
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
	
	
	public void  deleteSddoc(int sdid)
    {
	    try
	    {
	    	
	    	 Connection con = DBConnection.createConnection();
	    	PreparedStatement pst=con.prepareStatement("DELETE FROM sddoc WHERE sdid='"+sdid+"'");
	    	pst.executeUpdate();
	    	System.out.println("inside deleteSddoc");
	    	
	    	pst.close();
	    	con.close();
	    }
	    catch (Exception e)
	    {
			e.printStackTrace();
		}
    }


	public List<SddocBean> getAllDoc(String type)
	  {
		  List<SddocBean>  beans =new ArrayList<SddocBean>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(type);
			  PreparedStatement pst=con.prepareStatement("SELECT * from sddoc where dcotype=?");
			  pst.setString(1,type);
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  SddocBean bean=new SddocBean();
                  bean.setSdid(rs.getInt(1));
                  bean.setDoctype(rs.getString(2));
                  bean.setDoctitle(rs.getString(3));
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
	
	
	public LinkedHashMap<String, String[]> getAllcourseStr(String did,String year) {

		LinkedHashMap<String, String[]> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        String[] arr=null;
       try{
            String sql="select *  from deptcosrt where deptid='"+did+"' and year='"+year+"';";
           System.out.println(sql);
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
            	arr=new String[4];
            	arr[0]=rs.getString("deptid");
            	arr[1]=rs.getString("examname");
            	arr[2]=rs.getString("year");
            	arr[3]=rs.getString("document");

                m.put(rs.getString("said"),arr );
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
	
	public void  updateSDDoc(SddocBean bean,int sdid)
    {
	    try
	    {
	    	
	    	 Connection con = DBConnection.createConnection();
	    	PreparedStatement pst=con.prepareStatement("update sddoc set dcotype=?,doctitle=?,docname=? where sdid=?");
	    	
	    	pst.setString(1,bean.getDoctype());
	    	pst.setString(2,bean.getDoctitle());
	    	pst.setString(3,bean.getDocument());
	    	pst.setInt(4,sdid);
	    	
	    	pst.executeUpdate();
	    	System.out.println("inside dao");
	    	
	    	pst.close();
	    	con.close();
	    }
	    catch (Exception e)
	    {
			e.printStackTrace();
		}
    }
	public void  updateSDDoc2(SddocBean bean,int sdid)
    {
	    try
	    {
	    	
	    	 Connection con = DBConnection.createConnection();
	    	PreparedStatement pst=con.prepareStatement("update sddoc set dcotype=?,doctitle=? where sdid=?");
	    	
	    	pst.setString(1,bean.getDoctype());
	    	pst.setString(2,bean.getDoctitle());
	    	
	    	pst.setInt(3,sdid);
	    	
	    	pst.executeUpdate();
	    	System.out.println("inside dao");
	    	pst.close();
	    	con.close();
	    }
	    catch (Exception e)
	    {
			e.printStackTrace();
		}
    }


}
