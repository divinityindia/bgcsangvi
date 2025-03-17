package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedHashMap;

import javax.naming.NamingException;

import com.DBConnection;
import com.MD5;

public class UserDao {

	public int addUser(String dept,String username,String pass) {
		PreparedStatement pst=null;
		int result=0;
		Connection con=null;
		try {

			pass=new MD5().getpass(pass);

			con = DBConnection.createConnection();
			pst=con.prepareStatement("insert into users values('0','"+dept+"','"+username+"','"+pass+"')");
			result=pst.executeUpdate();
			pst.close();
			con.close();
			return result;

		} catch (Exception e) {
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


	public LinkedHashMap<String, String[]> getAllUsers() {

		LinkedHashMap<String, String[]> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        String[] arr=null;
       try{
            String sql="select u.*, d.deptname from users u, department d where u.DID=d.deptid;";
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
            	arr=new String[3];
            	arr[0]=rs.getString("DID");
            	arr[1]=rs.getString("deptname");
            	arr[2]=rs.getString("username");
                m.put(rs.getString("UID"),arr );
            }
            statement.close();
            rs.close();
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


	public int updateUser(String UID,String dept,String username,String pass) {
		PreparedStatement pst=null;
		int result=0;
		Connection con=null;
		try {

			pass=new MD5().getpass(pass);

			con = DBConnection.createConnection();
			pst=con.prepareStatement("update users set DID='"+dept+"', username='"+username+"', pass='"+pass+"' where UID='"+UID+"'");
			result=pst.executeUpdate();
			pst.close();
			con.close();
			return result;

		} catch (Exception e) {
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


	public int deleteUser(String[] UIDs) {
		PreparedStatement pst=null;
		int result=0;
		Connection con=null;
		try {

			con = DBConnection.createConnection();

			pst=con.prepareStatement("delete from users where UID=?");

			for(int i=0;i<UIDs.length;i++){
				pst.setString(1, UIDs[i]);
				pst.addBatch();
			}

			pst.executeBatch();
			pst.close();
			con.close();
			return 1;

		} catch (Exception e) {
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

}
