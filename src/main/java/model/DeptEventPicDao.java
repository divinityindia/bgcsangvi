package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import javax.naming.NamingException;

import com.DBConnection;
import com.dateParse;

import bean.DeptEventBean;
import bean.DeptEventPic;
import bean.SubGalleryBean;

public class DeptEventPicDao 
{
	public int addDeptPic(DeptEventPic bean) 
	{
		int result=0;
		
		Connection con=null;
		try {
			 con = DBConnection.createConnection();
			String sql="INSERT INTO depteventpic(cid,deptid,image)VALUES(?,?,?)";
			 PreparedStatement pst=con.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
			
			 pst.setInt(1, bean.getMid());
			pst.setInt(2, bean.getDeptid());
			pst.setString(3,bean.getImage());
			
			
			pst.executeUpdate();
			
			ResultSet rs=pst.getGeneratedKeys();
			while(rs.next())
			{
				result=rs.getInt(1);
				
				System.out.println(result);
			}
			rs.close();
			pst.close();
			con.close();
			
		} catch (SQLException | NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				con.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
		}
		return result;
		
	}
	
	public List<DeptEventPic> getAllDepPic1(int did)
	  {
		  List<DeptEventPic>  beans =new ArrayList<DeptEventPic>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
//			  PreparedStatement pst=con.prepareStatement("SELECT sr.*,de.caption,dn.deptname FROM depteventpic sr,department dn left join deptevent as de on sr.cid=de.eid where sr.deptid=dn.deptid");
			  PreparedStatement pst=con.prepareStatement("select pic.*,evnt.caption,dept.deptname from depteventpic pic, deptevent evnt, department dept where pic.cid = evnt.eid and pic.deptid= dept.deptid and pic.deptid='"+did+"'");
			  
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  DeptEventPic bean=new DeptEventPic();
				  
				  bean.setSid(rs.getInt(1));
				  bean.setMid(rs.getInt(2));
				  bean.setDeptid(rs.getInt(3));
				  bean.setImage(rs.getString(4));
				  bean.setCaption(rs.getString(5));
				  bean.setDeptname(rs.getString(6));
				  
				 beans.add(bean);
				
			  }
			  rs.close();
				pst.close();
				con.close();
			  System.out.println("in side getAllTprogramDao :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return beans;
		
	  }

	public List<DeptEventPic> getAllDepPic()
	  {
		  List<DeptEventPic>  beans =new ArrayList<DeptEventPic>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
//			  PreparedStatement pst=con.prepareStatement("SELECT sr.*,de.caption,dn.deptname FROM depteventpic sr,department dn left join deptevent as de on sr.cid=de.eid where sr.deptid=dn.deptid");
			  PreparedStatement pst=con.prepareStatement("select pic.*,evnt.caption,dept.deptname from depteventpic pic, deptevent evnt, department dept where pic.cid = evnt.eid and pic.deptid= dept.deptid");
			  
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  DeptEventPic bean=new DeptEventPic();
				  
				  bean.setSid(rs.getInt(1));
				  bean.setMid(rs.getInt(2));
				  bean.setDeptid(rs.getInt(3));
				  bean.setImage(rs.getString(4));
				  bean.setCaption(rs.getString(5));
				  bean.setDeptname(rs.getString(6));
				  
				 beans.add(bean);
				
			  }
			  rs.close();
				pst.close();
				con.close();
			  System.out.println("in side getAllTprogramDao :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return beans;
		
	  }
	public List<DeptEventBean> getAllDeptPic(int did)
	  {
		  List<DeptEventBean> beans=new ArrayList<DeptEventBean>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("select * from deptevent where deptid=? ");
			  pst.setInt(1, did);
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  DeptEventBean bean=new DeptEventBean();
				  
				  bean.setEid(rs.getInt(1));
				  bean.setDeptid(rs.getInt(2));
				  bean.setCaption(rs.getString(3));
				  
				  beans.add(bean);
				
			  }
			  rs.close();
				pst.close();
				con.close();
			  System.out.println("in side getAllcourseStr-- :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return beans;
		
	  }
	public LinkedHashMap<String, String[]> getAllDeptPics(int subgalID) {

		LinkedHashMap<String, String[]> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        String[] arr=null;
        System.out.println("In Dooooooooooo");
       try{
            String sql="select * from depteventpic where cid='"+subgalID+"'";
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
            	arr=new String[3];
            	arr[0]=rs.getString("cid");
            	arr[1]=rs.getString("deptid");
            	arr[2]=rs.getString("image");
                m.put(rs.getString("sid"), arr);
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
	
	public DeptEventBean getCaption(int eid) {

		DeptEventBean bean=new DeptEventBean();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
       try{
            String sql="select * from deptevent where eid='"+eid+"'";
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
            	bean.setEid(eid);
            	bean.setDeptid(rs.getInt("deptid"));
            	bean.setCaption(rs.getString("caption"));
            	
            }
            rs.close();
            statement.close();
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
	
	public List<DeptEventBean> getAllMaster(int did)
	  {
		  List<DeptEventBean> beans=new ArrayList<DeptEventBean>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("select * from deptevent where deptid=? ");
			  pst.setInt(1, did);
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  DeptEventBean bean=new DeptEventBean();
				  
				  bean.setEid(rs.getInt(1));
				  bean.setDeptid(rs.getInt(2));
				  bean.setCaption(rs.getString(3));
				  
				  beans.add(bean);
				
			  }
			  rs.close();
			  pst.close();
			  con.close();
			  System.out.println("in side getAllcourseStr-- :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return beans;
		
	  }
}
