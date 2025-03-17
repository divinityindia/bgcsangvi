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

import bean.PolicyProcedureBean;

public class PolicyProcedureDao 
{

	public int addPolicyProcedure(PolicyProcedureBean bean,String title) 
	{
		int id=0;
	
		Connection con=null;
		try {
			 con = DBConnection.createConnection();
			 
				PreparedStatement pst=con.prepareStatement("SELECT document FROM policyprocedure where dpmenu='"+title+"'");
				
				  boolean result=false;
				
				 ResultSet rs = pst.executeQuery();
				 
				  
				 if (!rs.next())
				 {
		                result = false; 
		                pst=con.prepareStatement("INSERT INTO policyprocedure(dpmenu,document)VALUES(?,?)",Statement.RETURN_GENERATED_KEYS);

		    			pst.setString(1,bean.getDpmenu() );
		    			pst.setString(2,bean.getDocument());
		    			
		    			pst.executeUpdate();
		    			 ResultSet rs1=pst.getGeneratedKeys();
		    	            while (rs1.next())
		    	            {
		    	                id=rs1.getInt(1);
		    	            }
		                System.out.println("Inside INsert");
		               rs1.close();
		               
		            } else {
		                result = true; 
		                pst=con.prepareStatement("SELECT ppid FROM policyprocedure where dpmenu='"+title+"'");
		                ResultSet rs3=pst.executeQuery();
		                while (rs3.next())
		                {
							id =rs3.getInt(1);
							
						}
		                rs3.close();
	                   pst=con.prepareStatement("update policyprocedure set dpmenu=?, document=? where dpmenu='"+title+"'");
	                   
	                   pst.setString(1,bean.getDpmenu() );
		    			pst.setString(2,bean.getDocument());
		    			
		    			pst.executeUpdate();
		    			 System.out.println("Inside Update");
		    			
		    			
						
		                
		            }
		/*	PreparedStatement pst=con.prepareStatement("INSERT INTO policyprocedure(dpmenu,document)VALUES(?,?)",Statement.RETURN_GENERATED_KEYS);

			pst.setString(1,bean.getDpmenu() );
			pst.setString(2,bean.getDocument());
			
			pst.executeUpdate();
			 ResultSet rs=pst.getGeneratedKeys();
	            while (rs.next())
	            {
	                result=rs.getInt(1);
	            }*/
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
			return id;
		}
		
	}
	
	public List<PolicyProcedureBean> getAllPolicyProcedure()
	  {
		  List<PolicyProcedureBean> beans =new ArrayList<PolicyProcedureBean>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT * FROM policyprocedure");
			  
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  PolicyProcedureBean bean=new PolicyProcedureBean();
				  bean.setPpid(rs.getInt(1));
				  bean.setDpmenu(rs.getString(2));
				  bean.setDocument(rs.getString(3));
                  beans.add(bean);				 
				
			  }
			  rs.close();
			  pst.close();
			  con.close();
			  System.out.println("in side getAllPolicyProcedure :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return beans;
		
	  }

	public List<PolicyProcedureBean> getAllPolicyProcedure(String dpmenu)
	  {
		  List<PolicyProcedureBean> beans=new ArrayList<PolicyProcedureBean>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("select * from policyprocedure where dpmenu='"+dpmenu+"' ");
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  PolicyProcedureBean bean=new PolicyProcedureBean();
				  bean.setPpid(rs.getInt(1));
				  bean.setDpmenu(rs.getString(2));
				  bean.setDocument(rs.getString(3));
				  System.out.println("Dao="+bean.getPpid()+" "+bean.getDocument());
				  beans.add(bean);
				
			  }
			  rs.close();
			  pst.close();
			  con.close();
			  System.out.println("in side getAllPolicyProcedure-- :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return beans;
		
	  }
	
	public PolicyProcedureBean getPolicyProcedure(String dpmenu)
	  {
		 PolicyProcedureBean bean=new PolicyProcedureBean();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("select * from policyprocedure where dpmenu='"+dpmenu+"' ");
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				 
				  bean.setPpid(rs.getInt(1));
				  bean.setDpmenu(rs.getString(2));
				  bean.setDocument(rs.getString(3));
				  System.out.println("Dao="+bean.getPpid()+" "+bean.getDocument());
				  
				
			  }
			  rs.close();
			  pst.close();
			  con.close();
			  System.out.println("in side getAllPolicyProcedure-- :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return bean;
		
	  }
	
	public void deletePolicyProcedure(int id) throws NamingException 
    {
    	try {
    		  Connection con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("delete from policyprocedure where ppid=?");
		
			     pst.setInt(1,id);
			     pst.executeUpdate();
			     System.out.println("inside Dao");
			     pst.close();
			     con.close();
    	    } 
    	catch (SQLException e) 
    	    {
			
			    e.printStackTrace();
		     }
		
		
	}
	
	////////////////////////////////////////////////////////////
	public int addAdmission(PolicyProcedureBean bean) 
	{
		int result=0;
		Connection con=null;
		try {
			 con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("INSERT INTO admission(dpmenu,document)VALUES(?,?)",Statement.RETURN_GENERATED_KEYS);

			pst.setString(1,bean.getDpmenu() );
			pst.setString(2,bean.getDocument());
			
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
			return result;
		}
		
	}
	
	public List<PolicyProcedureBean> getAllAddAdmission()
	  {
		  List<PolicyProcedureBean> beans =new ArrayList<PolicyProcedureBean>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("SELECT * FROM admission");
			  
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  PolicyProcedureBean bean=new PolicyProcedureBean();
				  bean.setAdid(rs.getInt(1));
				  bean.setDpmenu(rs.getString(2));
				  bean.setDocument(rs.getString(3));
                  beans.add(bean);				 
				
			  }
			  rs.close();
			  pst.close();
			  con.close();
			  System.out.println("in side getAllAddAdmission :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return beans;
		
	  }

	public List<PolicyProcedureBean> getAllAddAdmission(String dpmenu)
	  {
		  List<PolicyProcedureBean> beans=new ArrayList<PolicyProcedureBean>();
		  try 
		     {
			  Connection con = DBConnection.createConnection();
			  System.out.println(con);
			  PreparedStatement pst=con.prepareStatement("select * from admission where dpmenu='"+dpmenu+"' ");
			  ResultSet rs=pst.executeQuery();
			 
			  while(rs.next())
			  {
				  PolicyProcedureBean bean=new PolicyProcedureBean();
				  bean.setAdid(rs.getInt(1));
				  bean.setDpmenu(rs.getString(2));
				  bean.setDocument(rs.getString(3));
				 
				  beans.add(bean);
				
			  }
			  rs.close();
			  pst.close();
			  con.close();
			  System.out.println("in side getAllAddAdmission-- :)");
		     } 
		  catch (SQLException | NamingException e)
		     {
			    e.printStackTrace();
		     }
		return beans;
		
	  }
	
	
	public void deleteAddAdmission(int id) throws NamingException 
    {
    	try {
    		  Connection con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("delete from admission where adid=?");
		
			     pst.setInt(1,id);
			     pst.executeUpdate();
			     System.out.println("inside Dao");
			     
			     pst.close();
			     con.close();
    	    } 
    	catch (SQLException e) 
    	    {
			
			    e.printStackTrace();
		     }
		
		
	}


}
