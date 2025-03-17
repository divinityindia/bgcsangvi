package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.DBConnection;

import bean.ResearchCenterBean;

public class ResearchCenterDao 
{
	// Research Center Detalis Methods
	public void addResCenterDtls(String dpnm,String dtls) 
	{
	   try 
	   {
		Connection con=DBConnection.createConnection();
		PreparedStatement pst=con.prepareStatement("INSERT INTO `ResearchCenterDtls`(`deptname`,`dtls`)VALUES(?,?)");
		pst.setString(1, dpnm);
		pst.setString(2, dtls);
		
		pst.executeUpdate();
		
		pst.close();
		con.close();
	   }
	   catch (Exception e) 
	   {
		   e.printStackTrace();
	   }	
	}
	
	public List<ResearchCenterBean> getAllResCentDtls() 
	{
	   List<ResearchCenterBean> beans=new ArrayList<ResearchCenterBean>();
	   try 
	   {
		 Connection con=DBConnection.createConnection();
		 PreparedStatement pst=con.prepareStatement("SELECT * FROM ResearchCenterDtls");
		 ResultSet rs=pst.executeQuery();
		 while (rs.next())
		 {
			 ResearchCenterBean bean=new ResearchCenterBean();
			 bean.setRcid(rs.getInt(1));
			 bean.setDeptname(rs.getString(2));
			 bean.setDetls(rs.getString(3));
			 
			 beans.add(bean);
		 }
		 rs.close();
		 pst.close();
		 con.close();
	   }
	   catch (Exception e) 
	   {
		   e.printStackTrace();
	   }
	   return beans;
	}
	
	public void deleteResCenDtls(int crid) 
	{
	    try 
	    {
			Connection con=DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("DELETE FROM `ResearchCenterDtls` WHERE rcid=?");
			pst.setInt(1, crid);
			
			pst.executeUpdate();
			
			pst.close();
			con.close();
		}
	    catch (Exception e) 
	    {
	    	e.printStackTrace();
		}	
	}
	
	public ResearchCenterBean getResCenDtlsByDpnm(String dpnm) 
	{
	    ResearchCenterBean	bean=new ResearchCenterBean();
	    try 
	    {
			Connection con=DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("select * from ResearchCenterDtls where deptname=?");
			pst.setString(1, dpnm);
			ResultSet rs=pst.executeQuery();
			while (rs.next())
			{
				bean.setRcid(rs.getInt(1));
				bean.setDeptname(rs.getString(2));
				bean.setDetls(rs.getString(3));
			}
			rs.close();
			pst.close();
			con.close();
		}
	    catch (Exception e) 
	    {
	    	e.printStackTrace();
		}
	    return bean;
	}
	
	// Research Center Committee Methods
		public void addResCenterCmt(String dpnm,String dtls) 
		{
		   try 
		   {
			Connection con=DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("INSERT INTO `ResearchCenterCmt`(`deptname`,`dtls`)VALUES(?,?)");
			pst.setString(1, dpnm);
			pst.setString(2, dtls);
			
			pst.executeUpdate();
			
			pst.close();
			con.close();
		   }
		   catch (Exception e) 
		   {
			   e.printStackTrace();
		   }	
		}
		
		public List<ResearchCenterBean> getAllResCentCmt() 
		{
		   List<ResearchCenterBean> beans=new ArrayList<ResearchCenterBean>();
		   try 
		   {
			 Connection con=DBConnection.createConnection();
			 PreparedStatement pst=con.prepareStatement("SELECT * FROM ResearchCenterCmt");
			 ResultSet rs=pst.executeQuery();
			 while (rs.next())
			 {
				 ResearchCenterBean bean=new ResearchCenterBean();
				 bean.setRcid(rs.getInt(1));
				 bean.setDeptname(rs.getString(2));
				 bean.setDetls(rs.getString(3));
				 
				 beans.add(bean);
			 }
			 rs.close();
			 pst.close();
			 con.close();
		   }
		   catch (Exception e) 
		   {
			   e.printStackTrace();
		   }
		   return beans;
		}
		
		public void deleteResCenCmt(int crid) 
		{
		    try 
		    {
				Connection con=DBConnection.createConnection();
				PreparedStatement pst=con.prepareStatement("DELETE FROM `ResearchCenterCmt` WHERE rcid=?");
				pst.setInt(1, crid);
				
				pst.executeUpdate();
				
				pst.close();
				con.close();
			}
		    catch (Exception e) 
		    {
		    	e.printStackTrace();
			}	
		}
		
		public ResearchCenterBean getResCenCmtByDpnm(String dpnm) 
		{
		    ResearchCenterBean	bean=new ResearchCenterBean();
		    try 
		    {
				Connection con=DBConnection.createConnection();
				PreparedStatement pst=con.prepareStatement("select * from ResearchCenterCmt where deptname=?");
				pst.setString(1, dpnm);
				ResultSet rs=pst.executeQuery();
				while (rs.next())
				{
					bean.setRcid(rs.getInt(1));
					bean.setDeptname(rs.getString(2));
					bean.setDetls(rs.getString(3));
				}
				rs.close();
				pst.close();
				con.close();
			}
		    catch (Exception e) 
		    {
		    	e.printStackTrace();
			}
		    return bean;
		}

		// Research Center Areas Methods
				public void addResCenterAreas(String dpnm,String dtls) 
				{
				   try 
				   {
					Connection con=DBConnection.createConnection();
					PreparedStatement pst=con.prepareStatement("INSERT INTO `ResearchCenterAreas`(`deptname`,`dtls`)VALUES(?,?)");
					pst.setString(1, dpnm);
					pst.setString(2, dtls);
					
					pst.executeUpdate();
					
					pst.close();
					con.close();
				   }
				   catch (Exception e) 
				   {
					   e.printStackTrace();
				   }	
				}
				
				public List<ResearchCenterBean> getAllResCentAreas() 
				{
				   List<ResearchCenterBean> beans=new ArrayList<ResearchCenterBean>();
				   try 
				   {
					 Connection con=DBConnection.createConnection();
					 PreparedStatement pst=con.prepareStatement("SELECT * FROM ResearchCenterAreas");
					 ResultSet rs=pst.executeQuery();
					 while (rs.next())
					 {
						 ResearchCenterBean bean=new ResearchCenterBean();
						 bean.setRcid(rs.getInt(1));
						 bean.setDeptname(rs.getString(2));
						 bean.setDetls(rs.getString(3));
						 
						 beans.add(bean);
					 }
					 rs.close();
					 pst.close();
					 con.close();
				   }
				   catch (Exception e) 
				   {
					   e.printStackTrace();
				   }
				   return beans;
				}
				
				public void deleteResCenAreas(int crid) 
				{
				    try 
				    {
						Connection con=DBConnection.createConnection();
						PreparedStatement pst=con.prepareStatement("DELETE FROM `ResearchCenterAreas` WHERE rcid=?");
						pst.setInt(1, crid);
						
						pst.executeUpdate();
						
						pst.close();
						con.close();
					}
				    catch (Exception e) 
				    {
				    	e.printStackTrace();
					}	
				}
				
				public ResearchCenterBean getResCenAreasByDpnm(String dpnm) 
				{
				    ResearchCenterBean	bean=new ResearchCenterBean();
				    try 
				    {
						Connection con=DBConnection.createConnection();
						PreparedStatement pst=con.prepareStatement("select * from ResearchCenterAreas where deptname=?");
						pst.setString(1, dpnm);
						ResultSet rs=pst.executeQuery();
						while (rs.next())
						{
							bean.setRcid(rs.getInt(1));
							bean.setDeptname(rs.getString(2));
							bean.setDetls(rs.getString(3));
						}
						rs.close();
						pst.close();
						con.close();
					}
				    catch (Exception e) 
				    {
				    	e.printStackTrace();
					}
				    return bean;
				}
				
				// Research Center Course Work Methods
				public void addResCenterCouWork(String dpnm,String dtls) 
				{
				   try 
				   {
					Connection con=DBConnection.createConnection();
					PreparedStatement pst=con.prepareStatement("INSERT INTO `ResearchCenterCourseWork`(`deptname`,`dtls`)VALUES(?,?)");
					pst.setString(1, dpnm);
					pst.setString(2, dtls);
					
					pst.executeUpdate();
					
					pst.close();
					con.close();
				   }
				   catch (Exception e) 
				   {
					   e.printStackTrace();
				   }	
				}
				
				public List<ResearchCenterBean> getAllResCentCouWork() 
				{
				   List<ResearchCenterBean> beans=new ArrayList<ResearchCenterBean>();
				   try 
				   {
					 Connection con=DBConnection.createConnection();
					 PreparedStatement pst=con.prepareStatement("SELECT * FROM ResearchCenterCourseWork");
					 ResultSet rs=pst.executeQuery();
					 while (rs.next())
					 {
						 ResearchCenterBean bean=new ResearchCenterBean();
						 bean.setRcid(rs.getInt(1));
						 bean.setDeptname(rs.getString(2));
						 bean.setDetls(rs.getString(3));
						 
						 beans.add(bean);
					 }
					 rs.close();
					 pst.close();
					 con.close();
				   }
				   catch (Exception e) 
				   {
					   e.printStackTrace();
				   }
				   return beans;
				}
				
				public void deleteResCenCouWork(int crid) 
				{
				    try 
				    {
						Connection con=DBConnection.createConnection();
						PreparedStatement pst=con.prepareStatement("DELETE FROM `ResearchCenterCourseWork` WHERE rcid=?");
						pst.setInt(1, crid);
						
						pst.executeUpdate();
						
						pst.close();
						con.close();
					}
				    catch (Exception e) 
				    {
				    	e.printStackTrace();
					}	
				}
				
				public ResearchCenterBean getResCenCouWorkByDpnm(String dpnm) 
				{
				    ResearchCenterBean	bean=new ResearchCenterBean();
				    try 
				    {
						Connection con=DBConnection.createConnection();
						PreparedStatement pst=con.prepareStatement("select * from ResearchCenterCourseWork where deptname=?");
						pst.setString(1, dpnm);
						ResultSet rs=pst.executeQuery();
						while (rs.next())
						{
							bean.setRcid(rs.getInt(1));
							bean.setDeptname(rs.getString(2));
							bean.setDetls(rs.getString(3));
						}
						rs.close();
						pst.close();
						con.close();
					}
				    catch (Exception e) 
				    {
				    	e.printStackTrace();
					}
				    return bean;
				}

				// Research Center Plagiarism Methods
				public void addResCenterPlagiarism(String dpnm,String dtls) 
				{
				   try 
				   {
					Connection con=DBConnection.createConnection();
					PreparedStatement pst=con.prepareStatement("INSERT INTO `ResearchCenterPlagiarism`(`deptname`,`dtls`)VALUES(?,?)");
					pst.setString(1, dpnm);
					pst.setString(2, dtls);
					
					pst.executeUpdate();
					
					pst.close();
					con.close();
				   }
				   catch (Exception e) 
				   {
					   e.printStackTrace();
				   }	
				}
				
				public List<ResearchCenterBean> getAllResCentPlagiarism() 
				{
				   List<ResearchCenterBean> beans=new ArrayList<ResearchCenterBean>();
				   try 
				   {
					 Connection con=DBConnection.createConnection();
					 PreparedStatement pst=con.prepareStatement("SELECT * FROM ResearchCenterPlagiarism");
					 ResultSet rs=pst.executeQuery();
					 while (rs.next())
					 {
						 ResearchCenterBean bean=new ResearchCenterBean();
						 bean.setRcid(rs.getInt(1));
						 bean.setDeptname(rs.getString(2));
						 bean.setDetls(rs.getString(3));
						 
						 beans.add(bean);
					 }
					 rs.close();
					 pst.close();
					 con.close();
				   }
				   catch (Exception e) 
				   {
					   e.printStackTrace();
				   }
				   return beans;
				}
				
				public void deleteResCenPlagiarism(int crid) 
				{
				    try 
				    {
						Connection con=DBConnection.createConnection();
						PreparedStatement pst=con.prepareStatement("DELETE FROM `ResearchCenterPlagiarism` WHERE rcid=?");
						pst.setInt(1, crid);
						
						pst.executeUpdate();
						
						pst.close();
						con.close();
					}
				    catch (Exception e) 
				    {
				    	e.printStackTrace();
					}	
				}
				
				public ResearchCenterBean getResCenPlagiarismByDpnm(String dpnm) 
				{
				    ResearchCenterBean	bean=new ResearchCenterBean();
				    try 
				    {
						Connection con=DBConnection.createConnection();
						PreparedStatement pst=con.prepareStatement("select * from ResearchCenterPlagiarism where deptname=?");
						pst.setString(1, dpnm);
						ResultSet rs=pst.executeQuery();
						while (rs.next())
						{
							bean.setRcid(rs.getInt(1));
							bean.setDeptname(rs.getString(2));
							bean.setDetls(rs.getString(3));
						}
						rs.close();
						pst.close();
						con.close();
					}
				    catch (Exception e) 
				    {
				    	e.printStackTrace();
					}
				    return bean;
				}

				// Research Center Recognized Guides Methods
				public void addResCenterRecognizedGuides(String dpnm,String dtls) 
				{
				   try 
				   {
					Connection con=DBConnection.createConnection();
					PreparedStatement pst=con.prepareStatement("INSERT INTO `ResearchCenterRecognizedGuides`(`deptname`,`dtls`)VALUES(?,?)");
					pst.setString(1, dpnm);
					pst.setString(2, dtls);
					
					pst.executeUpdate();
					
					pst.close();
					con.close();
				   }
				   catch (Exception e) 
				   {
					   e.printStackTrace();
				   }	
				}
				
				public List<ResearchCenterBean> getAllResCentRecognizedGuides() 
				{
				   List<ResearchCenterBean> beans=new ArrayList<ResearchCenterBean>();
				   try 
				   {
					 Connection con=DBConnection.createConnection();
					 PreparedStatement pst=con.prepareStatement("SELECT * FROM ResearchCenterRecognizedGuides");
					 ResultSet rs=pst.executeQuery();
					 while (rs.next())
					 {
						 ResearchCenterBean bean=new ResearchCenterBean();
						 bean.setRcid(rs.getInt(1));
						 bean.setDeptname(rs.getString(2));
						 bean.setDetls(rs.getString(3));
						 
						 beans.add(bean);
					 }
					 rs.close();
					 pst.close();
					 con.close();
				   }
				   catch (Exception e) 
				   {
					   e.printStackTrace();
				   }
				   return beans;
				}
				
				public void deleteResCenRecognizedGuides(int crid) 
				{
				    try 
				    {
						Connection con=DBConnection.createConnection();
						PreparedStatement pst=con.prepareStatement("DELETE FROM `ResearchCenterRecognizedGuides` WHERE rcid=?");
						pst.setInt(1, crid);
						
						pst.executeUpdate();
						
						pst.close();
						con.close();
					}
				    catch (Exception e) 
				    {
				    	e.printStackTrace();
					}	
				}
				
				public ResearchCenterBean getResCenRecognizedGuidesByDpnm(String dpnm) 
				{
				    ResearchCenterBean	bean=new ResearchCenterBean();
				    try 
				    {
						Connection con=DBConnection.createConnection();
						PreparedStatement pst=con.prepareStatement("select * from ResearchCenterRecognizedGuides where deptname=?");
						pst.setString(1, dpnm);
						ResultSet rs=pst.executeQuery();
						while (rs.next())
						{
							bean.setRcid(rs.getInt(1));
							bean.setDeptname(rs.getString(2));
							bean.setDetls(rs.getString(3));
						}
						rs.close();
						pst.close();
						con.close();
					}
				    catch (Exception e) 
				    {
				    	e.printStackTrace();
					}
				    return bean;
				}

				// Research Center Citation Index Methods
				public void addResCenterCitationIndex(String dpnm,String dtls) 
				{
				   try 
				   {
					Connection con=DBConnection.createConnection();
					PreparedStatement pst=con.prepareStatement("INSERT INTO `ResearchCenterCitationIndex`(`deptname`,`dtls`)VALUES(?,?)");
					pst.setString(1, dpnm);
					pst.setString(2, dtls);
					
					pst.executeUpdate();
					
					pst.close();
					con.close();
				   }
				   catch (Exception e) 
				   {
					   e.printStackTrace();
				   }	
				}
				
				public List<ResearchCenterBean> getAllResCentCitationIndex() 
				{
				   List<ResearchCenterBean> beans=new ArrayList<ResearchCenterBean>();
				   try 
				   {
					 Connection con=DBConnection.createConnection();
					 PreparedStatement pst=con.prepareStatement("SELECT * FROM ResearchCenterCitationIndex");
					 ResultSet rs=pst.executeQuery();
					 while (rs.next())
					 {
						 ResearchCenterBean bean=new ResearchCenterBean();
						 bean.setRcid(rs.getInt(1));
						 bean.setDeptname(rs.getString(2));
						 bean.setDetls(rs.getString(3));
						 
						 beans.add(bean);
					 }
					 rs.close();
					 pst.close();
					 con.close();
				   }
				   catch (Exception e) 
				   {
					   e.printStackTrace();
				   }
				   return beans;
				}
				
				public void deleteResCenCitationIndex(int crid) 
				{
				    try 
				    {
						Connection con=DBConnection.createConnection();
						PreparedStatement pst=con.prepareStatement("DELETE FROM `ResearchCenterCitationIndex` WHERE rcid=?");
						pst.setInt(1, crid);
						
						pst.executeUpdate();
						
						pst.close();
						con.close();
					}
				    catch (Exception e) 
				    {
				    	e.printStackTrace();
					}	
				}
				
				public ResearchCenterBean getResCenCitationIndexByDpnm(String dpnm) 
				{
				    ResearchCenterBean	bean=new ResearchCenterBean();
				    try 
				    {
						Connection con=DBConnection.createConnection();
						PreparedStatement pst=con.prepareStatement("select * from ResearchCenterCitationIndex where deptname=?");
						pst.setString(1, dpnm);
						ResultSet rs=pst.executeQuery();
						while (rs.next())
						{
							bean.setRcid(rs.getInt(1));
							bean.setDeptname(rs.getString(2));
							bean.setDetls(rs.getString(3));
						}
						rs.close();
						pst.close();
						con.close();
					}
				    catch (Exception e) 
				    {
				    	e.printStackTrace();
					}
				    return bean;
				}

				// Research Center Scholars Methods
				public void addResCenterScholars(String dpnm,String dtls) 
				{
				   try 
				   {
					Connection con=DBConnection.createConnection();
					PreparedStatement pst=con.prepareStatement("INSERT INTO `ResearchCenterScholars`(`deptname`,`dtls`)VALUES(?,?)");
					pst.setString(1, dpnm);
					pst.setString(2, dtls);
					
					pst.executeUpdate();
					
					pst.close();
					con.close();
				   }
				   catch (Exception e) 
				   {
					   e.printStackTrace();
				   }	
				}
				
				public List<ResearchCenterBean> getAllResCentScholars() 
				{
				   List<ResearchCenterBean> beans=new ArrayList<ResearchCenterBean>();
				   try 
				   {
					 Connection con=DBConnection.createConnection();
					 PreparedStatement pst=con.prepareStatement("SELECT * FROM ResearchCenterScholars");
					 ResultSet rs=pst.executeQuery();
					 while (rs.next())
					 {
						 ResearchCenterBean bean=new ResearchCenterBean();
						 bean.setRcid(rs.getInt(1));
						 bean.setDeptname(rs.getString(2));
						 bean.setDetls(rs.getString(3));
						 
						 beans.add(bean);
					 }
					 rs.close();
					 pst.close();
					 con.close();
				   }
				   catch (Exception e) 
				   {
					   e.printStackTrace();
				   }
				   return beans;
				}
				
				public void deleteResCenScholars(int crid) 
				{
				    try 
				    {
						Connection con=DBConnection.createConnection();
						PreparedStatement pst=con.prepareStatement("DELETE FROM `ResearchCenterScholars` WHERE rcid=?");
						pst.setInt(1, crid);
						
						pst.executeUpdate();
						
						pst.close();
						con.close();
					}
				    catch (Exception e) 
				    {
				    	e.printStackTrace();
					}	
				}
				
				public ResearchCenterBean getResCenScholarsByDpnm(String dpnm) 
				{
				    ResearchCenterBean	bean=new ResearchCenterBean();
				    try 
				    {
						Connection con=DBConnection.createConnection();
						PreparedStatement pst=con.prepareStatement("select * from ResearchCenterScholars where deptname=?");
						pst.setString(1, dpnm);
						ResultSet rs=pst.executeQuery();
						while (rs.next())
						{
							bean.setRcid(rs.getInt(1));
							bean.setDeptname(rs.getString(2));
							bean.setDetls(rs.getString(3));
						}
						rs.close();
						pst.close();
						con.close();
					}
				    catch (Exception e) 
				    {
				    	e.printStackTrace();
					}
				    return bean;
				}
				// Research Center Facilities Methods
				public void addResCenterFacilities(String dpnm,String dtls) 
				{
				   try 
				   {
					Connection con=DBConnection.createConnection();
					PreparedStatement pst=con.prepareStatement("INSERT INTO `ResearchCenterFacilities`(`deptname`,`dtls`)VALUES(?,?)");
					pst.setString(1, dpnm);
					pst.setString(2, dtls);
					
					pst.executeUpdate();
					
					pst.close();
					con.close();
				   }
				   catch (Exception e) 
				   {
					   e.printStackTrace();
				   }	
				}
				
				public List<ResearchCenterBean> getAllResCentFacilities() 
				{
				   List<ResearchCenterBean> beans=new ArrayList<ResearchCenterBean>();
				   try 
				   {
					 Connection con=DBConnection.createConnection();
					 PreparedStatement pst=con.prepareStatement("SELECT * FROM ResearchCenterFacilities");
					 ResultSet rs=pst.executeQuery();
					 while (rs.next())
					 {
						 ResearchCenterBean bean=new ResearchCenterBean();
						 bean.setRcid(rs.getInt(1));
						 bean.setDeptname(rs.getString(2));
						 bean.setDetls(rs.getString(3));
						 
						 beans.add(bean);
					 }
					 rs.close();
					 pst.close();
					 con.close();
				   }
				   catch (Exception e) 
				   {
					   e.printStackTrace();
				   }
				   return beans;
				}
				
				public void deleteResCenFacilities(int crid) 
				{
				    try 
				    {
						Connection con=DBConnection.createConnection();
						PreparedStatement pst=con.prepareStatement("DELETE FROM `ResearchCenterFacilities` WHERE rcid=?");
						pst.setInt(1, crid);
						
						pst.executeUpdate();
						
						pst.close();
						con.close();
					}
				    catch (Exception e) 
				    {
				    	e.printStackTrace();
					}	
				}
				
				public ResearchCenterBean getResCenFacilitiesByDpnm(String dpnm) 
				{
				    ResearchCenterBean	bean=new ResearchCenterBean();
				    try 
				    {
						Connection con=DBConnection.createConnection();
						PreparedStatement pst=con.prepareStatement("select * from ResearchCenterFacilities where deptname=?");
						pst.setString(1, dpnm);
						ResultSet rs=pst.executeQuery();
						while (rs.next())
						{
							bean.setRcid(rs.getInt(1));
							bean.setDeptname(rs.getString(2));
							bean.setDetls(rs.getString(3));
						}
						rs.close();
						pst.close();
						con.close();
					}
				    catch (Exception e) 
				    {
				    	e.printStackTrace();
					}
				    return bean;
				}

				// Research Center Publication Methods
				public void addResCenterPublication(String dpnm,String dtls) 
				{
				   try 
				   {
					Connection con=DBConnection.createConnection();
					PreparedStatement pst=con.prepareStatement("INSERT INTO `ResearchCenterPublication`(`deptname`,`dtls`)VALUES(?,?)");
					pst.setString(1, dpnm);
					pst.setString(2, dtls);
					
					pst.executeUpdate();
					
					pst.close();
					con.close();
				   }
				   catch (Exception e) 
				   {
					   e.printStackTrace();
				   }	
				}
				
				public List<ResearchCenterBean> getAllResCentPublication() 
				{
				   List<ResearchCenterBean> beans=new ArrayList<ResearchCenterBean>();
				   try 
				   {
					 Connection con=DBConnection.createConnection();
					 PreparedStatement pst=con.prepareStatement("SELECT * FROM ResearchCenterPublication");
					 ResultSet rs=pst.executeQuery();
					 while (rs.next())
					 {
						 ResearchCenterBean bean=new ResearchCenterBean();
						 bean.setRcid(rs.getInt(1));
						 bean.setDeptname(rs.getString(2));
						 bean.setDetls(rs.getString(3));
						 
						 beans.add(bean);
					 }
					 rs.close();
					 pst.close();
					 con.close();
				   }
				   catch (Exception e) 
				   {
					   e.printStackTrace();
				   }
				   return beans;
				}
				
				public void deleteResCenPublication(int crid) 
				{
				    try 
				    {
						Connection con=DBConnection.createConnection();
						PreparedStatement pst=con.prepareStatement("DELETE FROM `ResearchCenterPublication` WHERE rcid=?");
						pst.setInt(1, crid);
						
						pst.executeUpdate();
						
						pst.close();
						con.close();
					}
				    catch (Exception e) 
				    {
				    	e.printStackTrace();
					}	
				}
				
				public ResearchCenterBean getResCenPublicationByDpnm(String dpnm) 
				{
				    ResearchCenterBean	bean=new ResearchCenterBean();
				    try 
				    {
						Connection con=DBConnection.createConnection();
						PreparedStatement pst=con.prepareStatement("select * from ResearchCenterPublication where deptname=?");
						pst.setString(1, dpnm);
						ResultSet rs=pst.executeQuery();
						while (rs.next())
						{
							bean.setRcid(rs.getInt(1));
							bean.setDeptname(rs.getString(2));
							bean.setDetls(rs.getString(3));
						}
						rs.close();
						pst.close();
						con.close();
					}
				    catch (Exception e) 
				    {
				    	e.printStackTrace();
					}
				    return bean;
				}
				
				// Research Center Project Methods
				public void addResCenterProject(String dpnm,String dtls) 
				{
				   try 
				   {
					Connection con=DBConnection.createConnection();
					PreparedStatement pst=con.prepareStatement("INSERT INTO `ResearchCenterProject`(`deptname`,`dtls`)VALUES(?,?)");
					pst.setString(1, dpnm);
					pst.setString(2, dtls);
					
					pst.executeUpdate();
					
					pst.close();
					con.close();
				   }
				   catch (Exception e) 
				   {
					   e.printStackTrace();
				   }	
				}
				
				public List<ResearchCenterBean> getAllResCentProject() 
				{
				   List<ResearchCenterBean> beans=new ArrayList<ResearchCenterBean>();
				   try 
				   {
					 Connection con=DBConnection.createConnection();
					 PreparedStatement pst=con.prepareStatement("SELECT * FROM ResearchCenterProject");
					 ResultSet rs=pst.executeQuery();
					 while (rs.next())
					 {
						 ResearchCenterBean bean=new ResearchCenterBean();
						 bean.setRcid(rs.getInt(1));
						 bean.setDeptname(rs.getString(2));
						 bean.setDetls(rs.getString(3));
						 
						 beans.add(bean);
					 }
					 rs.close();
					 pst.close();
					 con.close();
				   }
				   catch (Exception e) 
				   {
					   e.printStackTrace();
				   }
				   return beans;
				}
				
				public void deleteResCenProject(int crid) 
				{
				    try 
				    {
						Connection con=DBConnection.createConnection();
						PreparedStatement pst=con.prepareStatement("DELETE FROM `ResearchCenterProject` WHERE rcid=?");
						pst.setInt(1, crid);
						
						pst.executeUpdate();
						
						pst.close();
						con.close();
					}
				    catch (Exception e) 
				    {
				    	e.printStackTrace();
					}	
				}
				
				public ResearchCenterBean getResCenProjectByDpnm(String dpnm) 
				{
				    ResearchCenterBean	bean=new ResearchCenterBean();
				    try 
				    {
						Connection con=DBConnection.createConnection();
						PreparedStatement pst=con.prepareStatement("select * from ResearchCenterProject where deptname=?");
						pst.setString(1, dpnm);
						ResultSet rs=pst.executeQuery();
						while (rs.next())
						{
							bean.setRcid(rs.getInt(1));
							bean.setDeptname(rs.getString(2));
							bean.setDetls(rs.getString(3));
						}
						rs.close();
						pst.close();
						con.close();
					}
				    catch (Exception e) 
				    {
				    	e.printStackTrace();
					}
				    return bean;
				}

				// Research Center Awards Methods
				public void addResCenterAwards(String dpnm,String dtls) 
				{
				   try 
				   {
					Connection con=DBConnection.createConnection();
					PreparedStatement pst=con.prepareStatement("INSERT INTO `ResearchCenterAwards`(`deptname`,`dtls`)VALUES(?,?)");
					pst.setString(1, dpnm);
					pst.setString(2, dtls);
					
					pst.executeUpdate();
					
					pst.close();
					con.close();
				   }
				   catch (Exception e) 
				   {
					   e.printStackTrace();
				   }	
				}
				
				public List<ResearchCenterBean> getAllResCentAwards() 
				{
				   List<ResearchCenterBean> beans=new ArrayList<ResearchCenterBean>();
				   try 
				   {
					 Connection con=DBConnection.createConnection();
					 PreparedStatement pst=con.prepareStatement("SELECT * FROM ResearchCenterAwards");
					 ResultSet rs=pst.executeQuery();
					 while (rs.next())
					 {
						 ResearchCenterBean bean=new ResearchCenterBean();
						 bean.setRcid(rs.getInt(1));
						 bean.setDeptname(rs.getString(2));
						 bean.setDetls(rs.getString(3));
						 
						 beans.add(bean);
					 }
					 rs.close();
					 pst.close();
					 con.close();
				   }
				   catch (Exception e) 
				   {
					   e.printStackTrace();
				   }
				   return beans;
				}
				
				public void deleteResCenAwards(int crid) 
				{
				    try 
				    {
						Connection con=DBConnection.createConnection();
						PreparedStatement pst=con.prepareStatement("DELETE FROM `ResearchCenterAwards` WHERE rcid=?");
						pst.setInt(1, crid);
						
						pst.executeUpdate();
						
						pst.close();
						con.close();
					}
				    catch (Exception e) 
				    {
				    	e.printStackTrace();
					}	
				}
				
				public ResearchCenterBean getResCenAwardsByDpnm(String dpnm) 
				{
				    ResearchCenterBean	bean=new ResearchCenterBean();
				    try 
				    {
						Connection con=DBConnection.createConnection();
						PreparedStatement pst=con.prepareStatement("select * from ResearchCenterAwards where deptname=?");
						pst.setString(1, dpnm);
						ResultSet rs=pst.executeQuery();
						while (rs.next())
						{
							bean.setRcid(rs.getInt(1));
							bean.setDeptname(rs.getString(2));
							bean.setDetls(rs.getString(3));
						}
						rs.close();
						pst.close();
						con.close();
					}
				    catch (Exception e) 
				    {
				    	e.printStackTrace();
					}
				    return bean;
				}
				// Research Center Activities Methods
				public void addResCenterActivities(String dpnm,String dtls) 
				{
				   try 
				   {
					Connection con=DBConnection.createConnection();
					PreparedStatement pst=con.prepareStatement("INSERT INTO `ResearchCenterActivities`(`deptname`,`dtls`)VALUES(?,?)");
					pst.setString(1, dpnm);
					pst.setString(2, dtls);
					
					pst.executeUpdate();
					
					pst.close();
					con.close();
				   }
				   catch (Exception e) 
				   {
					   e.printStackTrace();
				   }	
				}
				
				public List<ResearchCenterBean> getAllResCentActivities() 
				{
				   List<ResearchCenterBean> beans=new ArrayList<ResearchCenterBean>();
				   try 
				   {
					 Connection con=DBConnection.createConnection();
					 PreparedStatement pst=con.prepareStatement("SELECT * FROM ResearchCenterActivities");
					 ResultSet rs=pst.executeQuery();
					 while (rs.next())
					 {
						 ResearchCenterBean bean=new ResearchCenterBean();
						 bean.setRcid(rs.getInt(1));
						 bean.setDeptname(rs.getString(2));
						 bean.setDetls(rs.getString(3));
						 
						 beans.add(bean);
					 }
					 rs.close();
					 pst.close();
					 con.close();
				   }
				   catch (Exception e) 
				   {
					   e.printStackTrace();
				   }
				   return beans;
				}
				
				public void deleteResCenActivities(int crid) 
				{
				    try 
				    {
						Connection con=DBConnection.createConnection();
						PreparedStatement pst=con.prepareStatement("DELETE FROM `ResearchCenterActivities` WHERE rcid=?");
						pst.setInt(1, crid);
						
						pst.executeUpdate();
						
						pst.close();
						con.close();
					}
				    catch (Exception e) 
				    {
				    	e.printStackTrace();
					}	
				}
				
				public ResearchCenterBean getResCenActivitiesByDpnm(String dpnm) 
				{
				    ResearchCenterBean	bean=new ResearchCenterBean();
				    try 
				    {
						Connection con=DBConnection.createConnection();
						PreparedStatement pst=con.prepareStatement("select * from ResearchCenterActivities where deptname=?");
						pst.setString(1, dpnm);
						ResultSet rs=pst.executeQuery();
						while (rs.next())
						{
							bean.setRcid(rs.getInt(1));
							bean.setDeptname(rs.getString(2));
							bean.setDetls(rs.getString(3));
						}
						rs.close();
						pst.close();
						con.close();
					}
				    catch (Exception e) 
				    {
				    	e.printStackTrace();
					}
				    return bean;
				}
				// Research Center Collaboration and linkages Methods
				public void addResCenterCollink(String dpnm,String dtls) 
				{
				   try 
				   {
					Connection con=DBConnection.createConnection();
					PreparedStatement pst=con.prepareStatement("INSERT INTO `ResearchCenterCollink`(`deptname`,`dtls`)VALUES(?,?)");
					pst.setString(1, dpnm);
					pst.setString(2, dtls);
					
					pst.executeUpdate();
					
					pst.close();
					con.close();
				   }
				   catch (Exception e) 
				   {
					   e.printStackTrace();
				   }	
				}
				
				public List<ResearchCenterBean> getAllResCentCollink() 
				{
				   List<ResearchCenterBean> beans=new ArrayList<ResearchCenterBean>();
				   try 
				   {
					 Connection con=DBConnection.createConnection();
					 PreparedStatement pst=con.prepareStatement("SELECT * FROM ResearchCenterCollink");
					 ResultSet rs=pst.executeQuery();
					 while (rs.next())
					 {
						 ResearchCenterBean bean=new ResearchCenterBean();
						 bean.setRcid(rs.getInt(1));
						 bean.setDeptname(rs.getString(2));
						 bean.setDetls(rs.getString(3));
						 
						 beans.add(bean);
					 }
					 rs.close();
					 pst.close();
					 con.close();
				   }
				   catch (Exception e) 
				   {
					   e.printStackTrace();
				   }
				   return beans;
				}
				
				public void deleteResCenCollink(int crid) 
				{
				    try 
				    {
						Connection con=DBConnection.createConnection();
						PreparedStatement pst=con.prepareStatement("DELETE FROM `ResearchCenterCollink` WHERE rcid=?");
						pst.setInt(1, crid);
						
						pst.executeUpdate();
						
						pst.close();
						con.close();
					}
				    catch (Exception e) 
				    {
				    	e.printStackTrace();
					}	
				}
				
				public ResearchCenterBean getResCenCollinkByDpnm(String dpnm) 
				{
				    ResearchCenterBean	bean=new ResearchCenterBean();
				    try 
				    {
						Connection con=DBConnection.createConnection();
						PreparedStatement pst=con.prepareStatement("select * from ResearchCenterCollink where deptname=?");
						pst.setString(1, dpnm);
						ResultSet rs=pst.executeQuery();
						while (rs.next())
						{
							bean.setRcid(rs.getInt(1));
							bean.setDeptname(rs.getString(2));
							bean.setDetls(rs.getString(3));
						}
						rs.close();
						pst.close();
						con.close();
					}
				    catch (Exception e) 
				    {
				    	e.printStackTrace();
					}
				    return bean;
				}
}
