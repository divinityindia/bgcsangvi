package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedHashMap;

import javax.naming.NamingException;


import com.DBConnection;

import bean.DeptAbout;


public class DeptDao {

	public int addDept(String dept) {
		PreparedStatement pst=null;
		int result=0;
		Connection con=null;
		try {
			con = DBConnection.createConnection();
			pst=con.prepareStatement("insert into department(deptname)values('"+dept+"')");
			result=pst.executeUpdate();
			pst.close();
			con.close();
			return result;

		} catch (SQLException | NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				pst.close();
				con.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}

		return result;
	}

	public LinkedHashMap<String, String> getDeptList() {

		LinkedHashMap<String, String> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
       try{
            String sql="SELECT * from department order by deptid";
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
                m.put(rs.getString(1), rs.getString(2));
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
	
	public String DeptName(int did) {


		String result=null;
		Connection con=null;
		try {
			con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("SELECT deptname from department where deptid='"+did+"'");
			  ResultSet rs=pst.executeQuery();
				 
			  while(rs.next())
			  {
				  result=rs.getString(1);
				 
				
			  }
			  rs.close();
			pst.close();
			con.close();
			return result;
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

	public int editDept(String did, String dept) {


		int result=0;
		Connection con=null;
		try {
			con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("update department set deptname=? where deptid=?");
			pst.setString(1, dept);
			pst.setString(2, did);
			result=pst.executeUpdate();
			pst.close();
			con.close();
			return result;
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

}
