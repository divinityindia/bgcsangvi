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
import bean.StaffResarch;
import bean.StaffResult;

public class DepCorseStructDao 
{
	public void addDeptcourseStr(DeptCourseStructure structure) 
	{
		int result=0;
		Connection con=null;
		try {
			 con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("INSERT INTO deptcosrt(deptid,corsname,corsedetl,year,document)VALUES(?,?,?,?,?)");

			pst.setInt(1, structure.getDeptid());
			pst.setString(2, structure.getCorsname());
			pst.setString(3,structure.getCorsedetl());
			pst.setString(4,structure.getYear());
			pst.setString(5,structure.getDocument());
			
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
	
	public List<DeptCourseStructure> getAllDepcourseStr1(int did)
	  {
		  List<DeptCourseStructure>  structures =new ArrayList<DeptCourseStructure>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT sr.*,dn.deptname FROM deptcosrt sr,department dn where sr.deptid=dn.deptid and sr.deptid='"+did+"' ");
			  
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  DeptCourseStructure structure=new DeptCourseStructure();
				  structure.setDsid(rs.getInt(1));
				  structure.setDeptid(rs.getInt(2));
				  structure.setCorsname(rs.getString(3));
				  structure.setCorsedetl(rs.getString(4));
				  structure.setYear(rs.getString(5));
				  structure.setDocument(rs.getString(6));
				  structure.setDeptname(rs.getString(7));
				  
				 structures.add(structure);
				 
				
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
		return structures;
		
	  }
	public List<DeptCourseStructure> getAllDepcourseStr()
	  {
		  List<DeptCourseStructure>  structures =new ArrayList<DeptCourseStructure>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT sr.*,dn.deptname FROM deptcosrt sr,department dn where sr.deptid=dn.deptid ");
			  
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  DeptCourseStructure structure=new DeptCourseStructure();
				  structure.setDsid(rs.getInt(1));
				  structure.setDeptid(rs.getInt(2));
				  structure.setCorsname(rs.getString(3));
				  structure.setCorsedetl(rs.getString(4));
				  structure.setYear(rs.getString(5));
				  structure.setDocument(rs.getString(6));
				  structure.setDeptname(rs.getString(7));
				  
				 structures.add(structure);
				 
				
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
		return structures;
		
	  }


	public List<DeptCourseStructure> getAllcourseStr(int did)
	  {
		  List<DeptCourseStructure> structures=new ArrayList<DeptCourseStructure>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("select * from deptcosrt where deptid=? ");
			  pst.setInt(1, did);
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  DeptCourseStructure structure=new DeptCourseStructure();
				  structure.setDsid(rs.getInt(1));
				  structure.setDeptid(rs.getInt(2));
				  structure.setCorsname(rs.getString(3));
				  structure.setCorsedetl(rs.getString(4));
				  structure.setYear(rs.getString(5));
				  structure.setDocument(rs.getString(6));
				  
				 structures.add(structure);
				
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
		return structures;
		
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
	
	public void  updateDeptCourse(DeptCourseStructure courseStructure,int daid)
    {
	    try
	    {
	    	
	    	 Connection con = DBConnection.createConnection();
	    	PreparedStatement pst=con.prepareStatement("update deptcosrt set deptid=?,corsname=?,corsedetl=?,year=?,document=? where dsid=?");
	    	
	    	pst.setInt(1,courseStructure.getDeptid());
	    	pst.setString(2,courseStructure.getCorsname());
	    	pst.setString(3,courseStructure.getCorsedetl());
	    	pst.setString(4,courseStructure.getYear());
	    	pst.setString(5,courseStructure.getDocument());
	    
	    	pst.setInt(6,daid);
	    	
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
