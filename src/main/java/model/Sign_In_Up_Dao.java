package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.NamingException;

import com.DBConnection;
import com.MD5;

public class Sign_In_Up_Dao {

//	public int SignUp(String name, String email, String pass, String phno) throws NamingException, SQLException
//    {
//        Connection con = DBConnection.createConnection();
//        PreparedStatement stmt1=null;
//
//
//        con.setAutoCommit(false);
//        try{
//
//            String sql1 = "insert into user values('0',?,?,?,?,?,?,?,?)";
//
//            stmt1 = con.prepareStatement(sql1,Statement.RETURN_GENERATED_KEYS);
//            stmt1.setString(1, name);
//            stmt1.setString(2, email);
//            stmt1.setString(3, pass);
//            stmt1.setString(4, phno);
//            stmt1.setString(5, "user");
//            stmt1.setString(6, "");
//            stmt1.setString(7, "");
//            stmt1.setString(8, "");
//            stmt1.executeUpdate();
//            ResultSet keys = stmt1.getGeneratedKeys();
//            keys.next();
//            int key = keys.getInt(1);
//            stmt1.close();
//
//            con.commit();
//            con.close();
//            return key;
//        }
//        catch(Exception e)
//        {
//            try{con.rollback();
//            con.close();
//            }catch(Exception e2){}
//           System.out.println("ERROR=>> "+e);
//            return 0;
//        }
//
//    }

	public String[] ChkUser(String username, String pass) throws NamingException, SQLException
    {
        Connection con = DBConnection.createConnection();
        PreparedStatement stmt1=null;

        String[] arr=new String[2];

        con.setAutoCommit(false);
        try{
        	String DBpass="";
            String ID="0";
            String DID=null;

        	pass= new MD5().getpass(pass);
            String sql1 = "select * from users where username='"+username+"'";

            stmt1 = con.prepareStatement(sql1);
            ResultSet rs= stmt1.executeQuery();
            while(rs.next()){
            	DBpass=rs.getString("pass");
            	ID=rs.getString("UID");
            	DID=rs.getString("DID");
            	
            	arr[0]=ID;
            	arr[1]=DID;
            }
            stmt1.close();
            rs.close();

            if(!DBpass.equals(pass)){
            	arr[0]="0";
            }

//            arr[0]=ID;
//            arr[1]=category;

            con.commit();
            con.close();
            return arr;
        }
        catch(Exception e)
        {
            try{con.rollback();
            con.close();
            }catch(Exception e2){}
            System.out.println("ERROR=>> "+e);
           e.printStackTrace();

            arr[0]="0";
            arr[1]=null;
            return arr;
        }

    }


}
