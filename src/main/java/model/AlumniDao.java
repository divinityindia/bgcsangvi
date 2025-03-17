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
import com.dateParse;

import bean.AluminiBean;
import bean.NewsBean;

public class AlumniDao {


	public int addAlumniStudent(AluminiBean abean) throws NamingException, SQLException
    {
        Connection con = null;
        PreparedStatement stmt3=null;
        con = DBConnection.createConnection();

        con.setAutoCommit(false);
        try
        {
            int result=0;

            String password= new MD5().getpass(abean.getPassword());

            PreparedStatement pst=null;
    		ResultSet rs=null;

            pst=con.prepareStatement("insert into aluminiregistration(name,dob,photo,gender,phone,email,paddress,caddress,course,deptname,pyear,occupation,otheroccupation,nameoforganization,addressoforganization,country,password)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS);
   
			
            pst.setString(1, abean.getName());
			pst.setString(2, dateParse.getMysqlDate(abean.getDob()));
			pst.setString(3, abean.getPhoto());
			pst.setString(4, abean.getGender());
			pst.setString(5, abean.getPhone());
			pst.setString(6, abean.getEmail());
			pst.setString(7, abean.getPaddress());
			pst.setString(8, abean.getCaddress());
			pst.setString(9, abean.getCourse());
			pst.setString(10, abean.getDept());
			pst.setString(11, abean.getPyear());
			pst.setString(12, abean.getOccupation());
			pst.setString(13, abean.getOtherocc());
			pst.setString(14, abean.getNameoforg());
			pst.setString(15, abean.getAddressoforg());
			pst.setString(16, abean.getCountry());
			pst.setString(17, password);
			pst.executeUpdate();
			
			rs=pst.getGeneratedKeys();
			while(rs.next())
			{
				result=rs.getInt(1);
				System.out.println(result);
			}
			rs.close();
			pst.close();
			con.close();


            return result;
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


	public LinkedHashMap<String, AluminiBean> getAlumniStudent() throws NamingException, SQLException
    {
        Connection con = null;
        PreparedStatement stmt3=null;

        LinkedHashMap<String, AluminiBean> hm=new LinkedHashMap<String, AluminiBean>();
        AluminiBean bean=null;

        con = DBConnection.createConnection();

        con.setAutoCommit(false);
        try
        {
            int result=0;

            PreparedStatement pst=null;
    		ResultSet rs=null;

            pst=con.prepareStatement("Select * from aluminiregistration");
            rs=pst.executeQuery();
            while(rs.next()){

            	bean=new AluminiBean();

            	bean.setAluminiid(rs.getInt(1));
            	bean.setName(rs.getString(2));
            	bean.setDob(rs.getString(3));
            	bean.setPhoto(rs.getString(4));
            	bean.setGender(rs.getString(5));
            	bean.setPhone(rs.getString(6));
            	bean.setEmail(rs.getString(7));
            	bean.setPaddress(rs.getString(8));
            	bean.setCaddress(rs.getString(9));
            	bean.setCourse(rs.getString(10));
            	bean.setDept(rs.getString(11));
            	bean.setPyear(rs.getString(12));
            	bean.setOccupation(rs.getString(13));
            	bean.setOtherocc(rs.getString(14));
            	bean.setNameoforg(rs.getString(15));
            	bean.setAddressoforg(rs.getString(16));
            	bean.setCountry(rs.getString(17));

            	hm.put(rs.getString(1), bean);

            }
            rs.close();
			pst.close();
			con.close();


            return hm;
        }
        catch(Exception e)
        {
        	con.rollback();
             try{ con.close();}catch(Exception e1){}
             System.out.println(e);
             e.printStackTrace();
            return null;
        }

    }


	public int deleteAlumniStudents(String[] IDs) {
		PreparedStatement pst=null;
		int result=0;
		Connection con=null;
		try {

			con = DBConnection.createConnection();

			pst=con.prepareStatement("delete from aluminiregistration where aluminiid=?");

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
