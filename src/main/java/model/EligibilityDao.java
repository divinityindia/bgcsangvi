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

public class EligibilityDao {

	public int addEligibilityDoc(String EID, int DID, String year,String docName) throws NamingException, SQLException
    {
        Connection con = null;
        PreparedStatement stmt3=null;
        con = DBConnection.createConnection();

        con.setAutoCommit(false);
        try
        {
            int eid=0;

            String sql1 = "replace into eligibilityno values"
                + "('"+EID+"','"+DID+"','"+year+"','"+docName+"')";
            PreparedStatement stmt1 = con.prepareStatement(sql1,Statement.RETURN_GENERATED_KEYS);
            stmt1.executeUpdate();
            ResultSet rs=stmt1.getGeneratedKeys();
            while (rs.next())
            {
                eid=rs.getInt(1);
            }
            rs.close();
            System.out.println("EID= "+eid);

            stmt1.close();
            con.commit();
            con.close();
            return eid;
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

	public LinkedHashMap<String, String[]> getAllEligibilitys() {

		LinkedHashMap<String, String[]> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        String[] arr=null;
       try{
            String sql="select e.*, d.deptname from eligibilityno e, department d where e.DID=d.deptid  GROUP BY e.year;";
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
            	arr=new String[4];
            	arr[0]=rs.getString("DID");
            	arr[1]=rs.getString("deptname");
            	arr[2]=rs.getString("year");
            	arr[3]=rs.getString("docName");

                m.put(rs.getString("EID"),arr );
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

	public LinkedHashMap<String, String[]> getAllEligibility() {

		LinkedHashMap<String, String[]> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        String[] arr=null;
       try{
            String sql="select e.*, d.deptname from eligibilityno e, department d where e.DID=d.deptid ";
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
            	arr=new String[4];
            	arr[0]=rs.getString("DID");
            	arr[1]=rs.getString("deptname");
            	arr[2]=rs.getString("year");
            	arr[3]=rs.getString("docName");

                m.put(rs.getString("EID"),arr );
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
	public int deleteEligibilitys(String[] EIDs) {
		PreparedStatement pst=null;
		int result=0;
		Connection con=null;
		try {

			con = DBConnection.createConnection();

			pst=con.prepareStatement("delete from eligibilityno where EID=?");

			for(int i=0;i<EIDs.length;i++){
				pst.setString(1, EIDs[i]);
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
	
	public LinkedHashMap<String, String[]> getAllEligibilitys(String did,String year) {

		LinkedHashMap<String, String[]> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        String[] arr=null;
       try{
            String sql="select e.*, d.deptname from eligibilityno e, department d where e.DID=d.deptid  and year='"+year+"';";
           System.out.println(sql);
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
            	arr=new String[4];
            	arr[0]=rs.getString("DID");
            	arr[1]=rs.getString("deptname");
            	arr[2]=rs.getString("year");
            	arr[3]=rs.getString("docName");

                m.put(rs.getString("EID"),arr );
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


}
