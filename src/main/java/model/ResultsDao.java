package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedHashMap;

import javax.naming.NamingException;

import com.DBConnection;
import com.dateParse;

import bean.NewsBean;

public class ResultsDao {

	public int addResult(String year, String pattern, String exam, String docName) throws NamingException, SQLException
    {
        Connection con = null;
        PreparedStatement stmt3=null;
        con = DBConnection.createConnection();

        con.setAutoCommit(false);
        try
        {
            int rid=0;


            String sql1 = "insert into result values"
                + "('0','"+year+"','"+pattern+"','"+exam+"','"+docName+"')";
            PreparedStatement stmt1 = con.prepareStatement(sql1,Statement.RETURN_GENERATED_KEYS);
            stmt1.executeUpdate();
            ResultSet rs=stmt1.getGeneratedKeys();
            while (rs.next())
            {
                rid=rs.getInt(1);
            }
            rs.close();
//            System.out.println("NID= "+RID);


            stmt1.close();
            con.commit();
            con.close();
            return rid;
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

	public LinkedHashMap<String, String[]> getAllResults() {

		LinkedHashMap<String, String[]> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        String[] arr=null;
       try{
            String sql="select * from result";
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
            	arr=new String[4];
            	arr[0]=rs.getString("year");
            	arr[1]=rs.getString("pattern");
            	arr[2]=rs.getString("examination");
            	arr[3]=rs.getString("documentName");

                m.put(rs.getString("RID"),arr );
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


	public int deleteResult(String[] RIDs) {
		PreparedStatement pst=null;
		int result=0;
		Connection con=null;
		try {

			con = DBConnection.createConnection();

			pst=con.prepareStatement("delete from result where RID=?");

			for(int i=0;i<RIDs.length;i++){
				pst.setString(1, RIDs[i]);
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

	public int UpdateResult(String RID, String year, String pattern, String exam, String docName) throws NamingException, SQLException
    {
        Connection con = null;
        PreparedStatement stmt3=null;
        con = DBConnection.createConnection();

        con.setAutoCommit(false);
        try
        {
            int rid=0;


            String sql1 = "replace into result values"
                + "('"+RID+"','"+year+"','"+pattern+"','"+exam+"','"+docName+"')";
            PreparedStatement stmt1 = con.prepareStatement(sql1,Statement.RETURN_GENERATED_KEYS);
            stmt1.executeUpdate();
            ResultSet rs=stmt1.getGeneratedKeys();
            while (rs.next())
            {
                rid=rs.getInt(1);
            }
            rs.close();
            System.out.println("rid= "+rid);


            stmt1.close();
            con.commit();
            con.close();
            return rid;
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

}
