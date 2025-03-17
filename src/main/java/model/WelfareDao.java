package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedHashMap;

import javax.naming.NamingException;

import com.DBConnection;

import bean.QpapersBean;

public class WelfareDao {

	public int addWelfareDoc(String WID, String info, String docName) throws NamingException, SQLException
    {
        Connection con = null;
        PreparedStatement stmt3=null;
        con = DBConnection.createConnection();

        con.setAutoCommit(false);
        try
        {
            int wid=0;

            String sql1 = "replace into welfare_docs values"
                + "('"+WID+"','"+info+"','"+docName+"')";
            PreparedStatement stmt1 = con.prepareStatement(sql1,Statement.RETURN_GENERATED_KEYS);
            stmt1.executeUpdate();
            ResultSet rs=stmt1.getGeneratedKeys();
            while (rs.next())
            {
                wid=rs.getInt(1);
            }
            rs.close();
            System.out.println("wid= "+wid);





            stmt1.close();
            con.commit();
            con.close();
            return wid;
        }
        catch(Exception e)
        {
        	con.rollback();
             try{ con.close();}catch(Exception e1){}
             System.out.println(e);
             e.printStackTrace();
            return 0;
        }

    }

	public LinkedHashMap<String, String[]> getAllWelfareDoc() {

		LinkedHashMap<String, String[]> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        String[] arr=null;
       try{
            String sql="select * from welfare_docs";
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
            	arr=new String[2];
            	arr[0]=rs.getString("info");
            	arr[1]=rs.getString("docName");

                m.put(rs.getString("WID"),arr );
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


	public int deleteWelfareDocs(String[] WIDs) {
		PreparedStatement pst=null;
		int result=0;
		Connection con=null;
		try {

			con = DBConnection.createConnection();

			pst=con.prepareStatement("delete from welfare_docs where WID=?");

			for(int i=0;i<WIDs.length;i++){
				pst.setString(1, WIDs[i]);
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

	public int addWelfarePhotos(String WID, String scheme, String caption, String docName) throws NamingException, SQLException
    {
        Connection con = null;
        PreparedStatement stmt3=null;
        con = DBConnection.createConnection();

        con.setAutoCommit(false);
        try
        {
            int wid=0;

            String sql1 = "replace into welfare_photos values"
                + "('"+WID+"','"+scheme+"','"+caption+"','"+docName+"')";
            PreparedStatement stmt1 = con.prepareStatement(sql1,Statement.RETURN_GENERATED_KEYS);
            stmt1.executeUpdate();
            ResultSet rs=stmt1.getGeneratedKeys();
            while (rs.next())
            {
                wid=rs.getInt(1);
            }
            rs.close();
            System.out.println("wid= "+wid);





            stmt1.close();
            con.commit();
            con.close();
            return wid;
        }
        catch(Exception e)
        {
        	con.rollback();
             try{ con.close();}catch(Exception e1){}
             System.out.println(e);
             e.printStackTrace();
            return 0;
        }

    }

	public LinkedHashMap<String, String[]> getAllWelfarePhotos() {

		LinkedHashMap<String, String[]> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        String[] arr=null;
       try{
            String sql="select * from welfare_photos";
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
            	arr=new String[3];
            	arr[0]=rs.getString("scheme");
            	arr[1]=rs.getString("caption");
            	arr[2]=rs.getString("docName");

                m.put(rs.getString("WID"),arr );
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

	public int deleteWelfarePhotos(String[] WIDs) {
		PreparedStatement pst=null;
		int result=0;
		Connection con=null;
		try {

			con = DBConnection.createConnection();

			pst=con.prepareStatement("delete from welfare_photos where WID=?");

			for(int i=0;i<WIDs.length;i++){
				pst.setString(1, WIDs[i]);
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
