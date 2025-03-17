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
import bean.StaffResult;



public class StaffDepResultDao 
{
	public void addDeptResult(StaffResult staffResult) 
	{
		int result=0;
		Connection con=null;
		try {
			 con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("INSERT INTO deptresult(deptid,examname,year,document)VALUES(?,?,?,?)");

			pst.setInt(1, staffResult.getDeptid());
			pst.setString(2, staffResult.getExamname());
			pst.setString(3,staffResult.getYear());
			pst.setString(4,staffResult.getDocument());
			
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
	
	
	public void addDeptPlacement(StaffResult staffResult) 
	{
		int result=0;
		Connection con=null;
		try {
			 con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("INSERT INTO placement(deptid,examname,year,document)VALUES(?,?,?,?)");

			pst.setInt(1, staffResult.getDeptid());
			pst.setString(2, staffResult.getExamname());
			pst.setString(3,staffResult.getYear());
			pst.setString(4,staffResult.getDocument());
			
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
	
	
	
	public List<StaffResult> getAllDepPlacement()
	  {
		  List<StaffResult>  results =new ArrayList<StaffResult>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT sr.*,dn.deptname FROM placement sr,department dn where sr.deptid=dn.deptid");
			  
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  StaffResult result=new StaffResult();
				  result.setPlid(rs.getInt(1));
				  result.setDeptid(rs.getInt(2));
				  result.setExamname(rs.getString(3));
				  result.setYear(rs.getString(4));
				  result.setDocument(rs.getString(5));
				  result.setDeptname(rs.getString(6));
				  
				  
				  results.add(result);
				 
				
			  }
			  pst.close();
			  con.close();
			  System.out.println("in side getAllTprogramDao :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return results;
		
	  }

	public List<StaffResult> getAllDepPlacement1(int did)
	  {
		  List<StaffResult>  results =new ArrayList<StaffResult>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT sr.*,dn.deptname FROM placement sr,department dn where sr.deptid=dn.deptid and sr.deptid='"+did+"'");
			  
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  StaffResult result=new StaffResult();
				  result.setPlid(rs.getInt(1));
				  result.setDeptid(rs.getInt(2));
				  result.setExamname(rs.getString(3));
				  result.setYear(rs.getString(4));
				  result.setDocument(rs.getString(5));
				  result.setDeptname(rs.getString(6));
				  
				  
				  results.add(result);
				 
				
			  }
			  pst.close();
			  con.close();
			  System.out.println("in side getAllTprogramDao :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return results;
		
	  }
	
	public List<StaffResult> getAllDepResult1(int did)
	  {
		  List<StaffResult>  results =new ArrayList<StaffResult>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT sr.*,dn.deptname FROM deptresult sr,department dn where sr.deptid=dn.deptid and sr.deptid='"+did+"'");
			  
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  StaffResult result=new StaffResult();
				  result.setSaid(rs.getInt(1));
				  result.setDeptid(rs.getInt(2));
				  result.setExamname(rs.getString(3));
				  result.setYear(rs.getString(4));
				  result.setDocument(rs.getString(5));
				  result.setDeptname(rs.getString(6));
				  
				  
				  results.add(result);
				 
				
			  }
			  pst.close();
			  con.close();
			  System.out.println("in side getAllTprogramDao :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return results;
		
	  }
	public List<StaffResult> getAllDepResult()
	  {
		  List<StaffResult>  results =new ArrayList<StaffResult>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT sr.*,dn.deptname FROM deptresult sr,department dn where sr.deptid=dn.deptid");
			  
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  StaffResult result=new StaffResult();
				  result.setSaid(rs.getInt(1));
				  result.setDeptid(rs.getInt(2));
				  result.setExamname(rs.getString(3));
				  result.setYear(rs.getString(4));
				  result.setDocument(rs.getString(5));
				  result.setDeptname(rs.getString(6));
				  
				  
				  results.add(result);
				 
				
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
		return results;
		
	  }

	public List<StaffResult> getAllDepResult(int did)
	  {
		  List<StaffResult> results=new ArrayList<StaffResult>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("select * from deptresult where deptid=? GROUP BY year");
			  pst.setInt(1, did);
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  StaffResult result=new StaffResult();
				  result.setSaid(rs.getInt(1));
				  result.setDeptid(rs.getInt(2));
				  result.setExamname(rs.getString(3));
				  result.setYear(rs.getString(4));
				  result.setDocument(rs.getString(5));
				  
				  
				  results.add(result);
				 
				
			  }
			  rs.close();
			  pst.close();
			  con.close();
			  System.out.println("in side getAllStaffAchiv :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return results;
		
	  }
	
	public List<StaffResult> getAllDepPlacement(int did)
	  {
		  List<StaffResult> results=new ArrayList<StaffResult>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("select * from placement where deptid=? GROUP BY year");
			  pst.setInt(1, did);
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  StaffResult result=new StaffResult();
				  result.setPlid(rs.getInt(1));
				  result.setDeptid(rs.getInt(2));
				  result.setExamname(rs.getString(3));
				  result.setYear(rs.getString(4));
				  result.setDocument(rs.getString(5));
				  
				  
				  results.add(result);
				 
				
			  }
			  rs.close();
			  pst.close();
			  con.close();
			  System.out.println("in side getAllStaffAchiv :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return results;
		
	  }
	
	public LinkedHashMap<String, String[]> getAllResult(String did,String year) {

		LinkedHashMap<String, String[]> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        String[] arr=null;
       try{
            String sql="select *  from deptresult where deptid='"+did+"' and year='"+year+"';";
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

	
	public LinkedHashMap<String, String[]> getAllPlacement(String did,String year) {

		LinkedHashMap<String, String[]> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        String[] arr=null;
       try{
            String sql="select *  from placement where deptid='"+did+"' and year='"+year+"';";
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

                m.put(rs.getString("plid"),arr );
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

	
	public void  updateDeptResult(StaffResult result,int daid)
    {
	    try
	    {
	    	
	    	 Connection con = DBConnection.createConnection();
	    	PreparedStatement pst=con.prepareStatement("update deptresult set deptid=?,examname=?,year=?,document=? where said=?");
	    	
	    	pst.setInt(1,result.getDeptid());
	    	pst.setString(2,result.getExamname());
	    	pst.setString(3,result.getYear());
	    	pst.setString(4,result.getDocument());
	    	pst.setInt(5,daid);
	    	
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
