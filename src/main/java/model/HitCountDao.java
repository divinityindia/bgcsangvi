package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.DBConnection;

public class HitCountDao 
{

	public static int getCounter(){
		ResultSet rs=null;
		Connection con=null;
		int count=0;
		try {
			con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("select count from hitcounter where cid=1");
			rs=pst.executeQuery();
			if(rs.next()){
				count=rs.getInt(1);
			}
			rs.close();
			pst.close();
			con.close();
			return count;
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
		return count;
	}
	
	public static void setCounter(int count){
		int result=0;
		Connection con=null;
		try {
			con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("update hitcounter set count=? where cid=1");
			pst.setInt(1, count);
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


}
