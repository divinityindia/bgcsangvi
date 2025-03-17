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

import bean.EventBean;
import bean.NewsBean;

public class EventDao {

	public int addEvent(EventBean bean) throws NamingException, SQLException
    {
        Connection con = null;
        PreparedStatement stmt3=null;
        con = DBConnection.createConnection();

        con.setAutoCommit(false);
        try
        {
            int EID=0;


            String sql1 = "insert into event values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
//                + "('0','"+bean.getDID()+"','"+bean.getNewstitle()+"','"+bean.getDetails()+"','"+bean.getDocumentname()+"','"+dateParse.getMysqlDate(bean.getStartdate())+"','"+bean.getStatus()+"','"+bean.getLink()+"')";
            PreparedStatement stmt1 = con.prepareStatement(sql1,Statement.RETURN_GENERATED_KEYS);
            stmt1.setString(1, "0");
            stmt1.setString(2, bean.getDID());
            stmt1.setString(3, bean.getCategory());
            stmt1.setString(4, bean.getEventtitle());
            stmt1.setString(5, bean.getOrganizedby());
            stmt1.setString(6, bean.getOrganizedfor());
            stmt1.setString(7, bean.getVenue());
            stmt1.setString(8, bean.getDetails());
            stmt1.setString(9, bean.getInstructions());
            stmt1.setString(10, bean.getDocumentname());
            stmt1.setString(11, bean.getUrl());
            stmt1.setString(12, bean.getContactperson());
            stmt1.setString(13, dateParse.getMysqlDate(bean.getStartdate()));
            stmt1.setString(14, bean.getStarttime());
            stmt1.setString(15, dateParse.getMysqlDate(bean.getEnddate()));
            stmt1.setString(16, bean.getEndtime());
            stmt1.setString(17, bean.getStatus());
            stmt1.setString(18,bean.getActive());
            stmt1.executeUpdate();
            ResultSet rs=stmt1.getGeneratedKeys();
            while (rs.next())
            {
                EID=rs.getInt(1);
            }
            rs.close();
            System.out.println("NID= "+EID);

            stmt1.close();
            con.commit();
            con.close();
            return EID;
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

	public LinkedHashMap<String, String[]> getAllEvents() {

		LinkedHashMap<String, String[]> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        String[] arr=null;
       try{
            String sql="select e.*, d.deptname from event e, department d where e.DID=d.deptid;";
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
            	arr=new String[19];
            	arr[0]=rs.getString("DID");
            	arr[1]=rs.getString("deptname");
            	arr[2]=rs.getString("category");
            	arr[3]=rs.getString("eventtitle");
            	arr[4]=rs.getString("documentname");
            	arr[5]=rs.getString("organizedby");
            	arr[6]=rs.getString("organizedfor");
            	arr[7]=rs.getString("venue");
            	arr[8]=rs.getString("details");
            	arr[9]=rs.getString("instructions");
            	arr[10]=rs.getString("documentname");
            	arr[11]=rs.getString("url");
            	arr[12]=rs.getString("contactperson");
            	arr[13]=dateParse.getLocalDate(rs.getString("startdate"));
            	arr[14]=rs.getString("starttime");
            	arr[15]=dateParse.getLocalDate(rs.getString("enddate"));
            	arr[16]=rs.getString("endtime");
            	arr[17]=rs.getString("status");
            	arr[18]=rs.getString("active");

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
	public LinkedHashMap<String, String[]> getAllEventsBYDate() {

		LinkedHashMap<String, String[]> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        String[] arr=null;
       try{
            String sql="select e.*, d.deptname from event e, department d where e.DID=d.deptid and e.enddate >=CURRENT_DATE()";
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
            	arr=new String[19];
            	arr[0]=rs.getString("DID");
            	arr[1]=rs.getString("deptname");
            	arr[2]=rs.getString("category");
            	arr[3]=rs.getString("eventtitle");
            	arr[4]=rs.getString("documentname");
            	arr[5]=rs.getString("organizedby");
            	arr[6]=rs.getString("organizedfor");
            	arr[7]=rs.getString("venue");
            	arr[8]=rs.getString("details");
            	arr[9]=rs.getString("instructions");
            	arr[10]=rs.getString("documentname");
            	arr[11]=rs.getString("url");
            	arr[12]=rs.getString("contactperson");
            	arr[13]=dateParse.getLocalDate(rs.getString("startdate"));
            	arr[14]=rs.getString("starttime");
            	arr[15]=dateParse.getLocalDate(rs.getString("enddate"));
            	arr[16]=rs.getString("endtime");
            	arr[17]=rs.getString("status");
            	arr[18]=rs.getString("active");

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
	
	public LinkedHashMap<String, String[]> getAllShotrsEvents() {

		LinkedHashMap<String, String[]> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        String[] arr=null;
       try{
            String sql="select e.*, d.deptname from event e, department d where e.DID=d.deptid AND CURDATE() between e.startdate and e.enddate;";
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
            	arr=new String[19];
            	arr[0]=rs.getString("DID");
            	arr[1]=rs.getString("deptname");
            	arr[2]=rs.getString("category");
            	arr[3]=rs.getString("eventtitle");
            	arr[4]=rs.getString("documentname");
            	arr[5]=rs.getString("organizedby");
            	arr[6]=rs.getString("organizedfor");
            	arr[7]=rs.getString("venue");
            	arr[8]=rs.getString("details");
            	arr[9]=rs.getString("instructions");
            	arr[10]=rs.getString("documentname");
            	arr[11]=rs.getString("url");
            	arr[12]=rs.getString("contactperson");
            	arr[13]=dateParse.getLocalDate(rs.getString("startdate"));
            	arr[14]=rs.getString("starttime");
            	arr[15]=dateParse.getLocalDate(rs.getString("enddate"));
            	arr[16]=rs.getString("endtime");
            	arr[17]=rs.getString("status");
            	arr[18]=rs.getString("active");

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

	public int deleteEvent(String[] EIDs) {
		PreparedStatement pst=null;
		int result=0;
		Connection con=null;
		try {

			con = DBConnection.createConnection();

			pst=con.prepareStatement("delete from event where EID=?");

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


	public String[] getAEvent(String EID) {

		LinkedHashMap<String, String[]> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        String[] arr=null;
       try{
            String sql="select e.*, d.deptname from event e, department d where e.DID=d.deptid and EID='"+EID+"' ";
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
            	arr=new String[18];
            	arr[0]=rs.getString("DID");
            	arr[1]=rs.getString("deptname");
            	arr[2]=rs.getString("category");
            	arr[3]=rs.getString("eventtitle");
            	arr[4]=rs.getString("documentname");
            	arr[5]=rs.getString("organizedby");
            	arr[6]=rs.getString("organizedfor");
            	arr[7]=rs.getString("venue");
            	arr[8]=rs.getString("details");
            	arr[9]=rs.getString("instructions");
            	arr[10]=rs.getString("documentname");
            	arr[11]=rs.getString("url");
            	arr[12]=rs.getString("contactperson");
            	arr[13]=dateParse.getLocalDate(rs.getString("startdate"));
            	arr[14]=rs.getString("starttime");
            	arr[15]=dateParse.getLocalDate(rs.getString("enddate"));
            	arr[16]=rs.getString("endtime");
            	arr[17]=rs.getString("status");

                m.put(rs.getString("EID"),arr );
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
