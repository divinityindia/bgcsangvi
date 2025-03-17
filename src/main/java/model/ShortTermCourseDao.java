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

import bean.ShortTermCourseBean;

public class ShortTermCourseDao {

	public int AddShortTermCourse(ShortTermCourseBean bean) throws NamingException, SQLException
    {
        Connection con = null;
        PreparedStatement stmt3=null;
        con = DBConnection.createConnection();

        con.setAutoCommit(false);
        try
        {
            int ID=0;


            String sql1 = "replace into short_term_course values"
                + "('"+bean.getID()+"','"+bean.getDID()+"','"+bean.getTitle()+"','"+bean.getDetails()+"','"+bean.getDuration()+"','"+bean.getFees()+"','"+bean.getDocumentname()+"','"+bean.getStatus()+"')";
            PreparedStatement stmt1 = con.prepareStatement(sql1,Statement.RETURN_GENERATED_KEYS);
            stmt1.executeUpdate();
            ResultSet rs=stmt1.getGeneratedKeys();
            while (rs.next())
            {
                ID=rs.getInt(1);
            }
            rs.close();
            System.out.println("NID= "+ID);


            stmt1.close();
            con.commit();
            con.close();
            return ID;
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

	public LinkedHashMap<String, String[]> getAllShortTermCourses() {

		LinkedHashMap<String, String[]> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        String[] arr=null;
       try{
            String sql="select s.*, d.deptname from  short_term_course s, department d where s.DID=d.deptid;";
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
            	arr=new String[8];
            	arr[0]=rs.getString("DID");
            	arr[1]=rs.getString("deptname");
            	arr[2]=rs.getString("title");
            	arr[3]=rs.getString("details");
            	arr[4]=rs.getString("duration");
            	arr[5]=rs.getString("fees");
            	arr[6]=rs.getString("documentname");
            	arr[7]=rs.getString("status");
                m.put(rs.getString("ID"),arr );
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


	public int deleteShortTermCourse(String[] IDs) {
		PreparedStatement pst=null;
		int result=0;
		Connection con=null;
		try {

			con = DBConnection.createConnection();

			pst=con.prepareStatement("delete from short_term_course where ID=?");

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
