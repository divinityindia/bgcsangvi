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

import bean.EProfessor_basicBean;

public class EProfessorDao {

	public int AddEmiratesProfessor(EProfessor_basicBean bean) {
		PreparedStatement pst=null;
		int result=0;
		Connection con=null;
		try {

			con = DBConnection.createConnection();
			pst=con.prepareStatement("replace into eprofessor_basic values('"+bean.getID()+"','"+bean.getName()+"','"+bean.getUserName()+"','"+new MD5().getpass(bean.getPassword())+"','"+bean.getPhno()+"','"+bean.getEmail()+"' )");
			result=pst.executeUpdate();
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

	public LinkedHashMap<String, EProfessor_basicBean> getAllEprofessor_Basic() {

		LinkedHashMap<String, EProfessor_basicBean> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        EProfessor_basicBean bean=null;
        PreparedStatement pst=null;
        ResultSet rs2=null;
       try{
    	   	con = DBConnection.createConnection();

    	   	String sql2="select * from eprofesso_photo where EID=?";

            String sql="select * from eprofessor_basic";
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
            	bean=new EProfessor_basicBean();
            	bean.setID(rs.getInt("ID"));
            	bean.setName(rs.getString("name"));
            	bean.setUserName(rs.getString("username"));
            	bean.setPhno(rs.getString("phno"));
            	bean.setEmail(rs.getString("email"));

            	pst= con.prepareStatement(sql2);
            	pst.setString(1, rs.getString("ID"));
            	rs2=pst.executeQuery();
            	while(rs2.next()){
            		bean.setPhoto(rs2.getString("photo"));
            	}
            	rs2.close();pst.close();

                m.put(rs.getString("ID"), bean);
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


	public int deleteUser(String[] UIDs) {
		PreparedStatement pst=null;
		int result=0;
		Connection con=null;
		try {

			con = DBConnection.createConnection();

			pst=con.prepareStatement("delete from eprofessor_basic where ID=?");

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


	public String ChkUser(String username, String pass) throws NamingException, SQLException
    {
        Connection con = DBConnection.createConnection();
        PreparedStatement stmt1=null;

//        String[] arr=new String[2];

        con.setAutoCommit(false);
        try{
        	String DBpass="";
            String ID="0";
            String category=null;

        	pass= new MD5().getpass(pass);
            String sql1 = "select * from eprofessor_basic where username='"+username+"'";

            stmt1 = con.prepareStatement(sql1);
            ResultSet rs= stmt1.executeQuery();
            while(rs.next()){
            	DBpass=rs.getString("pass");
            	ID=rs.getString("ID");
//            	category=rs.getString("category");
            }
            stmt1.close();
            rs.close();

            if(!DBpass.equals(pass)){
        		ID="0";
            }

//            arr[0]=ID;
//            arr[1]=category;

            con.commit();
            con.close();
            return ID;
        }
        catch(Exception e)
        {
            try{con.rollback();
            con.close();
            }catch(Exception e2){}
            System.out.println("ERROR=>> "+e);
           e.printStackTrace();

//            arr[0]="0";
//            arr[1]=null;
            return "0";
        }

    }


	public EProfessor_basicBean getEprofessorInfo(String UID) {

		LinkedHashMap<String, EProfessor_basicBean> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        EProfessor_basicBean bean=null;
       try{

    	   bean=new EProfessor_basicBean();

    	   	String sql="select * from eprofessor_basic where ID='"+UID+"' ";
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
            	bean.setID(rs.getInt("ID"));
            	bean.setName(rs.getString("name"));
            	bean.setUserName(rs.getString("username"));
            	bean.setPhno(rs.getString("phno"));
            	bean.setEmail(rs.getString("email"));
            }
            statement.close();rs.close();

            String sql2="select * from eprofessor_info where EID='"+UID+"' ";
            statement = con.createStatement();
            rs=statement.executeQuery(sql2);
            while(rs.next())
            {
            	bean.setAboutus(rs.getString("AboutUs"));
            	bean.setResearch(rs.getString("Research"));
            	bean.setPublication(rs.getString("Publications"));
            }
            statement.close();rs.close();

            String sql3="select * from eprofesso_photo where EID='"+UID+"' ";
            statement = con.createStatement();
            rs=statement.executeQuery(sql3);
            while(rs.next())
            {
            	bean.setPhoto(rs.getString("photo"));
            }
            statement.close();rs.close();

            m.put(UID, bean);

            con.close();
            return bean;
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

	public int AddEProfessorPhoto(String id, String photo) throws NamingException, SQLException
    {
        Connection con = null;
        PreparedStatement stmt3=null;
        con = DBConnection.createConnection();

        con.setAutoCommit(false);
        try
        {

            String sql1 = "replace into eprofesso_photo values (?,?)";
            PreparedStatement stmt1 = con.prepareStatement(sql1);
            stmt1.setString(1, id);
            stmt1.setString(2, photo);
            stmt1.executeUpdate();
            stmt1.close();

            con.commit();
            con.close();
            return 1;
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

	public int UpdateEmiratesProfessorInfo(EProfessor_basicBean bean) {
		PreparedStatement pst=null;
		int result=0;
		Connection con=null;
		try {

			con = DBConnection.createConnection();
			pst=con.prepareStatement("replace into eprofessor_info values('"+bean.getID()+"','"+bean.getAboutus()+"','"+bean.getResearch()+"','"+bean.getPublication()+"' )");
			result=pst.executeUpdate();
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
