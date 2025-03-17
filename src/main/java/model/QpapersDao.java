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
import bean.QpapersBean;

public class QpapersDao {

	public int addQpaper(QpapersBean bean) throws NamingException, SQLException
    {
        Connection con = null;
        PreparedStatement stmt3=null;
        con = DBConnection.createConnection();

        con.setAutoCommit(false);
        try
        {
            int QPID=0;

            String sql1 = "replace into qpapers values"
                + "('"+bean.getQPID()+"','"+bean.getDID()+"','"+bean.getYear()+"','"+bean.getPattern()+"','"+bean.getSub()+"','"+bean.getExam()+"','"+bean.getDocName()+"')";
            PreparedStatement stmt1 = con.prepareStatement(sql1,Statement.RETURN_GENERATED_KEYS);
            stmt1.executeUpdate();
            ResultSet rs=stmt1.getGeneratedKeys();
            while (rs.next())
            {
                QPID=rs.getInt(1);
            }
            rs.close();
            System.out.println("QPID= "+QPID);





            stmt1.close();
            con.commit();
            con.close();
            return QPID;
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

	public LinkedHashMap<String, String[]> getAllQPapers() {

		LinkedHashMap<String, String[]> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        String[] arr=null;
       try{
            String sql="select q.*, d.deptname from qpapers q, department d where q.DID=d.deptid;";
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
            	arr=new String[7];
            	arr[0]=rs.getString("DID");
            	arr[1]=rs.getString("deptname");
            	arr[2]=rs.getString("year");
            	arr[3]=rs.getString("pattern");
            	arr[4]=rs.getString("sub");
            	arr[5]=rs.getString("exam");
            	arr[6]=rs.getString("docName");

                m.put(rs.getString("QPID"),arr );
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

	public int deleteQpapers(String[] QPIDs) {
		PreparedStatement pst=null;
		int result=0;
		Connection con=null;
		try {

			con = DBConnection.createConnection();

			pst=con.prepareStatement("delete from qpapers where QPID=?");

			for(int i=0;i<QPIDs.length;i++){
				pst.setString(1, QPIDs[i]);
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
