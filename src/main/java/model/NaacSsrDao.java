package model;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedHashMap;

import javax.naming.NamingException;

import com.DBConnection;

public class NaacSsrDao 
{
	public int addCaption(String ID, String caption) throws NamingException, SQLException
    {
        Connection con = null;
        PreparedStatement stmt3=null;
        con = DBConnection.createConnection();

        con.setAutoCommit(false);
        try
        {
            int id=0;


            String sql1 = "replace into NaacSsr values"
                + "('"+ID+"','"+caption+"')";
            PreparedStatement stmt1 = con.prepareStatement(sql1,Statement.RETURN_GENERATED_KEYS);
            stmt1.executeUpdate();
            ResultSet rs=stmt1.getGeneratedKeys();
            while (rs.next())
            {
                id=rs.getInt(1);
            }
            rs.close();
            System.out.println("id= "+id);

            stmt1.close();
            con.commit();
            con.close();
            return id;
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
	
	public LinkedHashMap<String, String> getAllGalleryMasters() {

		LinkedHashMap<String, String> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
       try{
            String sql="SELECT * from NaacSsr order by ID";
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

	public int addGallPics(String galID,String fname){
		Connection con=null;
		try{
			
			System.out.println("Inside dao:-"+galID+fname);
			int retVal=0;
			con=DBConnection.createConnection();
			PreparedStatement pst=null;
			String sql1="insert into NaacDoc(id,gid,docName) values(?,?,?)";
			pst=con.prepareStatement(sql1);

				pst.setString(1, "0");
				pst.setString(2, galID);
				pst.setString(3, fname);
				
				
              System.out.println("INNnnnnn");
			pst.executeUpdate();
			pst.close();
			con.close();

			return 1;
		}
		catch(Exception e)
		{
			try{
				con.close();
			}
			catch(Exception e1){}
			e.printStackTrace();
			return 0;
		}
	}
	
	public LinkedHashMap<String, String> getGalleryPics(String GalID) {

		LinkedHashMap<String, String> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        String[] arr=null;
       try{
            String sql="select * from NaacDoc where gid='"+GalID+"' ";
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
                m.put(rs.getString("id"), rs.getString("docName"));
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
	
	public ArrayList<String[]> deleteGalleryPics(String[] IDs) {
		PreparedStatement pst=null;
		ResultSet rs=null;
		String[] arr=null;
		int result=0;
		Connection con=null;
		ArrayList<String[]> hm=new ArrayList<String[]>();
		try {

			con = DBConnection.createConnection();


			for(int i=0;i<IDs.length;i++){

				pst=con.prepareStatement("select * from NaacDoc where id=?;");
				pst.setString(1, IDs[i]);
				rs=pst.executeQuery();
				while(rs.next()){
					arr=new String[3];
					arr[0]=rs.getString(2);
					arr[1]=rs.getString(3);
				
					hm.add( arr);
				}
			}
			
			rs.close();
			pst.close();

			pst=con.prepareStatement("delete from NaacDoc where id=?");

			for(int i=0;i<IDs.length;i++){
				pst.setString(1, IDs[i]);
				pst.addBatch();
			}

			pst.executeBatch();
			pst.close();



			con.close();
			return hm;

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

		return null;
	}

	public int deleteGalleryMaster(String[] IDs) {
		PreparedStatement pst=null;
		int result=0;
		Connection con=null;
		try {

			con = DBConnection.createConnection();

			pst=con.prepareStatement("delete from NaacSsr where ID=?");

			for(int i=0;i<IDs.length;i++){
				pst.setString(1, IDs[i]);
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
