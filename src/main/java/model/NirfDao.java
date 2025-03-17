package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import com.DBConnection;

import bean.NirfBean;

public class NirfDao 
{
	public int addNirfMaster(String nmtitle)
	{
		
		Connection con=null;
		int result=0;
		try {
			con = DBConnection.createConnection();
			PreparedStatement pst=null;
			String sql=	"INSERT INTO `nirfmaster`(`nmtitle`)VALUES(?)";
			
			 pst = con.prepareStatement(sql,pst.RETURN_GENERATED_KEYS);
			 pst.setString(1,nmtitle);
			
				
               pst.executeUpdate();
	            ResultSet rs=pst.getGeneratedKeys();
	            while (rs.next())
	            {
	            	result=rs.getInt(1);
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
	
	public List<NirfBean> getAllNirfMaster() throws NamingException, SQLException 
    {
		Connection con=null;
		con = DBConnection.createConnection();
 	   List<NirfBean> beans=new ArrayList<NirfBean>();
 	   try
 	   {
 	   PreparedStatement statement=con.prepareStatement("select * from nirfmaster");
        ResultSet rs=statement.executeQuery();
        while(rs.next())
        {
        	
        	NirfBean bean=new NirfBean();
           bean.setNmid(rs.getInt(1));
           bean.setNmtitle(rs.getString(2));
           beans.add(bean);
        }
        rs.close();
        statement.close();
        con.close();
 	   }
 	   catch (Exception e)
 	   {
 		e.printStackTrace();
 	   }
 	   return beans;
    }
	/*public List<ExtraCurricularBean> getAllExtraCrlById(String type) throws NamingException, SQLException 
    {
		Connection con=null;
		con = DBConnection.createconnection();
 	   List<ExtraCurricularBean> beans=new ArrayList<ExtraCurricularBean>();
 	   try
 	   {
 	   PreparedStatement statement=con.prepareStatement("select * from extracurl where dropid='"+type+"'");
        ResultSet rs=statement.executeQuery();
        while(rs.next())
        {
        	
        	ExtraCurricularBean bean=new ExtraCurricularBean();
           bean.setEcid(rs.getInt(1));
           bean.setDropid(rs.getString(2));
           bean.setTitle(rs.getString(3));
           bean.setDetails(rs.getString(4));
           bean.setDocument(rs.getString(5));
           beans.add(bean);
        }
        rs.close();
        statement.close();
        con.close();
 	   }
 	   catch (Exception e)
 	   {
 		e.printStackTrace();
 	   }
 	   return beans;
    }
	*/
	public void deleteNrifMaster(int nrid) {
		PreparedStatement pst=null;
		
		Connection con=null;
		try {

			con = DBConnection.createConnection();

			pst=con.prepareStatement("delete from nirfmaster where nfid='"+nrid+"'");

			
			pst.executeUpdate();
			pst.close();
			con.close();
		

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

		
	}
	public void updateNirfMaster(int nrid,String nmtitle ) 
	 {
			
			Connection con=null;
			try {
				
				con = DBConnection.createConnection();
				PreparedStatement pst=con.prepareStatement("UPDATE `nirfmaster` SET `nmtitle` = ? WHERE `nfid` = ?;");
             
               pst.setString(1,nmtitle);
               pst.setInt(2,nrid);
				
				pst.executeUpdate();
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
			
			
		}
	
	public int addNirfReport(int nmid,String nrtitle,String document)
	{
		
		Connection con=null;
		int result=0;
		try {
			con = DBConnection.createConnection();
			PreparedStatement pst=null;
			String sql=	"INSERT INTO `nirfreport`(`nmid`,`nrname`,`document`)VALUES(?,?,?)";
			
			 pst = con.prepareStatement(sql,pst.RETURN_GENERATED_KEYS);
			 pst.setInt(1,nmid);
			 pst.setString(2,nrtitle);
			 pst.setString(3,document);
				
               pst.executeUpdate();
	            ResultSet rs=pst.getGeneratedKeys();
	            while (rs.next())
	            {
	            	result=rs.getInt(1);
	            }
	            rs.close();
	            System.out.println("NID= "+result);

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
	
	public List<NirfBean> getAllNirfReport() throws NamingException, SQLException 
    {
		Connection con=null;
		con = DBConnection.createConnection();
 	   List<NirfBean> beans=new ArrayList<NirfBean>();
 	   try
 	   {
 	   PreparedStatement statement=con.prepareStatement("select nr.*,nm.nmtitle from nirfreport nr,nirfmaster nm where nr.nmid=nm.nfid;");
        ResultSet rs=statement.executeQuery();
        while(rs.next())
        {
        	
        	NirfBean bean=new NirfBean();
            bean.setNrid(rs.getInt(1));
            bean.setNmid(rs.getInt(2));
            bean.setNrtitle(rs.getString(3));
            bean.setDocument(rs.getString(4));
            bean.setNmtitle(rs.getString(5));
           beans.add(bean);
        }
        rs.close();
        statement.close();
        con.close();
 	   }
 	   catch (Exception e)
 	   {
 		e.printStackTrace();
 	   }
 	   return beans;
    }
	public List<NirfBean> getAllNirfReportsById(int nmid) throws NamingException, SQLException 
    {
		Connection con=null;
		con = DBConnection.createConnection();
 	   List<NirfBean> beans=new ArrayList<NirfBean>();
 	   try
 	   {
 	   PreparedStatement statement=con.prepareStatement("select * from nirfreport where nmid=?");
 	    statement.setInt(1,nmid);
        ResultSet rs=statement.executeQuery();
        while(rs.next())
        {
        	
        	NirfBean bean=new NirfBean();
            bean.setNrid(rs.getInt(1));
            bean.setNmid(rs.getInt(2));
            bean.setNrtitle(rs.getString(3));
            bean.setDocument(rs.getString(4));
           beans.add(bean);
        }
        rs.close();
        statement.close();
        con.close();
 	   }
 	   catch (Exception e)
 	   {
 		e.printStackTrace();
 	   }
 	   return beans;
    }
	
	public void deleteNirfReport(int id) {
		PreparedStatement pst=null;
		
		Connection con=null;
		try {

			con = DBConnection.createConnection();

			pst=con.prepareStatement("delete from nirfreport where nrid='"+id+"'");

			
			pst.executeUpdate();
			pst.close();
			con.close();
		

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

		
	}
	public void updateNirfReportDoc(int nrid,int mrid,String title,String doc) 
	 {
			
			Connection con=null;
			try {
				
				con = DBConnection.createConnection();
				PreparedStatement pst=con.prepareStatement("UPDATE `nirfreport` SET `nmid` = ?,`nrname` = ?,`document` = ? WHERE `nrid` = ?");
            
                 pst.setInt(1,mrid);
                 pst.setString(2,title);
                 pst.setString(3,doc);
                 pst.setInt(4,nrid);
				
				pst.executeUpdate();
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
			
			
		}
	public void updateNirfReport(int nrid,int mrid,String title) 
	 {
			
			Connection con=null;
			try {
				
				con = DBConnection.createConnection();
				PreparedStatement pst=con.prepareStatement("UPDATE `nirfreport` SET `nmid` = ?,`nrname` = ? WHERE `nrid` = ?");
           
                pst.setInt(1,mrid);
                pst.setString(2,title);
              
                pst.setInt(3,nrid);
				
				pst.executeUpdate();
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
			
			
		}
}
