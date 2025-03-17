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

public class NewsDao {

	public int addNews(NewsBean bean) throws NamingException, SQLException
    {
        Connection con = null;
        PreparedStatement stmt3=null;
        con = DBConnection.createConnection();

        con.setAutoCommit(false);
        try
        {
            int NID=0;


            String sql1 = "insert into news values"
                + "('0','"+bean.getDID()+"','"+bean.getNewstitle()+"','"+bean.getDetails()+"','"+bean.getDocumentname()+"','"+dateParse.getMysqlDate(bean.getStartdate())+"','"+bean.getStatus()+"','"+bean.getLink()+"','"+bean.getAcative()+"','"+dateParse.getMysqlDate(bean.getEnddate())+"')";
            PreparedStatement stmt1 = con.prepareStatement(sql1,Statement.RETURN_GENERATED_KEYS);
            stmt1.executeUpdate();
            ResultSet rs=stmt1.getGeneratedKeys();
            while (rs.next())
            {
                NID=rs.getInt(1);
            }
            rs.close();
            System.out.println("NID= "+NID);





            stmt1.close();
            con.commit();
            con.close();
            return NID;
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


	public int addNotice(NewsBean bean) throws NamingException, SQLException
    {
        Connection con = null;
        PreparedStatement stmt3=null;
        con = DBConnection.createConnection();

        con.setAutoCommit(false);
        try
        {
            int NID=0;


            String sql1 = "insert into notice values"
                + "('0','"+bean.getDID()+"','"+bean.getNewstitle()+"','"+bean.getDetails()+"','"+bean.getDocumentname()+"','"+dateParse.getMysqlDate(bean.getStartdate())+"','"+bean.getStatus()+"','"+bean.getLink()+"','"+bean.getAcative()+"','"+dateParse.getMysqlDate(bean.getEnddate())+"')";
            PreparedStatement stmt1 = con.prepareStatement(sql1,Statement.RETURN_GENERATED_KEYS);
            stmt1.executeUpdate();
            ResultSet rs=stmt1.getGeneratedKeys();
            while (rs.next())
            {
                NID=rs.getInt(1);
            }
            rs.close();
            System.out.println("NID= "+NID);





            stmt1.close();
            con.commit();
            con.close();
            return NID;
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



	public LinkedHashMap<String, String[]> getAllShortNews() {

		LinkedHashMap<String, String[]> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        String[] arr=null;
       try{
            String sql="select n.*, d.deptname from news n, department d where n.DID=d.deptid AND CURDATE() between n.startdate and n.enddate;";
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
            	arr=new String[10];
            	arr[0]=rs.getString("DID");
            	arr[1]=rs.getString("deptname");
            	arr[2]=rs.getString("newstitle");
            	arr[3]=rs.getString("details");
            	arr[4]=rs.getString("documentname");
            	arr[5]=dateParse.getLocalDate(rs.getString("startdate"));
            	arr[6]=rs.getString("status");
            	arr[7]=rs.getString("link");
            	arr[8]=rs.getString("active");
                arr[9]=dateParse.getLocalDate(rs.getString("enddate"));
                m.put(rs.getString("NID"),arr );
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
	public LinkedHashMap<String, String[]> getAllNews() {

		LinkedHashMap<String, String[]> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        String[] arr=null;
       try{
            String sql="select n.*, d.deptname from news n, department d where n.DID=d.deptid";
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
            	arr=new String[10];
            	arr[0]=rs.getString("DID");
            	arr[1]=rs.getString("deptname");
            	arr[2]=rs.getString("newstitle");
            	arr[3]=rs.getString("details");
            	arr[4]=rs.getString("documentname");
            	arr[5]=dateParse.getLocalDate(rs.getString("startdate"));
            	arr[6]=rs.getString("status");
            	arr[7]=rs.getString("link");
            	arr[8]=rs.getString("active");
                arr[9]=dateParse.getLocalDate(rs.getString("enddate"));
                m.put(rs.getString("NID"),arr );
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


	public int updateNews(NewsBean bean) throws NamingException, SQLException
    {
        Connection con = null;
        PreparedStatement stmt3=null;
        con = DBConnection.createConnection();

        con.setAutoCommit(false);
        try
        {
            int NID=0;


            String sql1 = "replace into news values"
                + "('"+bean.getNID()+"','"+bean.getDID()+"','"+bean.getNewstitle()+"','"+bean.getDetails()+"','"+bean.getDocumentname()+"','"+dateParse.getMysqlDate(bean.getStartdate())+"','"+bean.getStatus()+"','"+bean.getLink()+"','"+bean.getAcative()+"','"+dateParse.getMysqlDate(bean.getEnddate())+"')";
            PreparedStatement stmt1 = con.prepareStatement(sql1);
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


	public int deleteNews(String[] NIDs) {
		PreparedStatement pst=null;
		int result=0;
		Connection con=null;
		try {

			con = DBConnection.createConnection();

			pst=con.prepareStatement("delete from news where NID=?");

			for(int i=0;i<NIDs.length;i++){
				pst.setString(1, NIDs[i]);
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


	public String[] getANews(String NID) {

		LinkedHashMap<String, String[]> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        String[] arr=null;
       try{
            String sql="select n.*, d.deptname from news n, department d where n.DID=d.deptid and n.NID='"+NID+"' ";
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
            	arr=new String[10];
            	arr[0]=rs.getString("DID");
            	arr[1]=rs.getString("deptname");
            	arr[2]=rs.getString("newstitle");
            	arr[3]=rs.getString("details");
            	arr[4]=rs.getString("documentname");
            	arr[5]=dateParse.getLocalDate(rs.getString("startdate"));
            	arr[6]=rs.getString("status");
            	arr[7]=rs.getString("link");
            	arr[8]=rs.getString("active");
                arr[9]=dateParse.getLocalDate(rs.getString("enddate"));
                m.put(rs.getString("NID"),arr );
            }
            
            rs.close();
            statement.close();
            con.close();
            return arr;
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

	public LinkedHashMap<String, String[]> getAllNotic() {

		LinkedHashMap<String, String[]> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        String[] arr=null;
       try{
            String sql="select n.*, d.deptname from notice n, department d where n.DID=d.deptid;";
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
            	arr=new String[10];
            	arr[0]=rs.getString("DID");
            	arr[1]=rs.getString("deptname");
            	arr[2]=rs.getString("newstitle");
            	arr[3]=rs.getString("details");
            	arr[4]=rs.getString("documentname");
            	arr[5]=dateParse.getLocalDate(rs.getString("startdate"));
            	arr[6]=rs.getString("status");
            	arr[7]=rs.getString("link");
            	arr[8]=rs.getString("active");
                arr[9]=dateParse.getLocalDate(rs.getString("enddate"));
                m.put(rs.getString("NID"),arr );
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
	public LinkedHashMap<String, String[]> getAllShortNotic() {

		LinkedHashMap<String, String[]> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        String[] arr=null;
       try{
            String sql="select n.*, d.deptname from notice n, department d where n.DID=d.deptid AND CURDATE() between n.startdate and n.enddate;";
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
            	arr=new String[10];
            	arr[0]=rs.getString("DID");
            	arr[1]=rs.getString("deptname");
            	arr[2]=rs.getString("newstitle");
            	arr[3]=rs.getString("details");
            	arr[4]=rs.getString("documentname");
            	arr[5]=dateParse.getLocalDate(rs.getString("startdate"));
            	arr[6]=rs.getString("status");
            	arr[7]=rs.getString("link");
            	arr[8]=rs.getString("active");
                arr[9]=dateParse.getLocalDate(rs.getString("enddate"));
                m.put(rs.getString("NID"),arr );
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

	public int updateNotice(NewsBean bean) throws NamingException, SQLException
    {
        Connection con = null;
        PreparedStatement stmt3=null;
        con = DBConnection.createConnection();

        con.setAutoCommit(false);
        try
        {
            int NID=0;


            String sql1 = "replace into notice values"
                + "('"+bean.getNID()+"','"+bean.getDID()+"','"+bean.getNewstitle()+"','"+bean.getDetails()+"','"+bean.getDocumentname()+"','"+dateParse.getMysqlDate(bean.getStartdate())+"','"+bean.getStatus()+"','"+bean.getLink()+"','"+bean.getAcative()+"','"+dateParse.getMysqlDate(bean.getEnddate())+"')";
            PreparedStatement stmt1 = con.prepareStatement(sql1);
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

	public int deleteNotice(String[] NIDs) {
		PreparedStatement pst=null;
		int result=0;
		Connection con=null;
		try {

			con = DBConnection.createConnection();

			pst=con.prepareStatement("delete from notice where NID=?");

			for(int i=0;i<NIDs.length;i++){
				pst.setString(1, NIDs[i]);
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

	public String[] getANotice(String NID) {

		LinkedHashMap<String, String[]> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        String[] arr=null;
       try{
            String sql="select n.*, d.deptname from notice n, department d where n.DID=d.deptid and n.NID='"+NID+"' ";
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
            	arr=new String[8];
            	arr[0]=rs.getString("DID");
            	arr[1]=rs.getString("deptname");
            	arr[2]=rs.getString("newstitle");
            	arr[3]=rs.getString("details");
            	arr[4]=rs.getString("documentname");
            	arr[5]=dateParse.getLocalDate(rs.getString("startdate"));
            	arr[6]=rs.getString("status");
            	arr[7]=rs.getString("link");

                m.put(rs.getString("NID"),arr );
            }
            
            rs.close();
            statement.close();
            con.close();
            return arr;
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
