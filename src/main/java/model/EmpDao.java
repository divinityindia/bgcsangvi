package model;

import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Properties;

import javax.naming.NamingException;

import com.DBConnection;
import com.MD5;
import com.dateParse;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.services.s3.model.ObjectMetadata;

import bean.Employee;
import bean.EmployeeExp;
import bean.EmpBean;
import bean.NewsBean;

public class EmpDao {


	public LinkedHashMap<String, String> getAllDesignations() {

		LinkedHashMap<String, String> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        String[] arr=null;
       try{
            String sql="select * from designations";
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
                m.put(rs.getString("DID"),rs.getString("Dname") );
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


	public int addEmp(EmpBean bean) throws NamingException, SQLException
    {
        Connection con = null;
        PreparedStatement stmt3=null;
        con = DBConnection.createConnection();

        con.setAutoCommit(false);
        try
        {
            int EID=0;


            String sql1 = "replace into emp values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement stmt1 = con.prepareStatement(sql1,Statement.RETURN_GENERATED_KEYS);
            stmt1.setString(1, bean.getEID());
            stmt1.setString(2, bean.getSal());
            stmt1.setString(3, bean.getFname());
            stmt1.setString(4, bean.getMname());
            stmt1.setString(5, bean.getLname());
            stmt1.setString(6, bean.getBcudid());
            stmt1.setString(7, bean.getPdeaid());
            stmt1.setString(8, bean.getPanno());
            stmt1.setString(9, bean.getAdharno());
            stmt1.setString(10, dateParse.getMysqlDate(bean.getDob()));
            stmt1.setString(11, bean.getGender());
            stmt1.setString(12, bean.getReligion());
            stmt1.setString(13, bean.getCategory());
            stmt1.setString(14, bean.getCaste());
            stmt1.setString(15, bean.getMstatus());
            stmt1.setString(16, bean.getContact1());
            stmt1.setString(17, bean.getContact2());
            stmt1.setString(18, bean.getMail());
            stmt1.setString(19, bean.getCurraddress());
            stmt1.setString(20, bean.getPeraddress());
            stmt1.setString(21, bean.getCstate());
            stmt1.setString(22, bean.getPstate());
            stmt1.setString(23, bean.getCcity());
            stmt1.setString(24, bean.getPcity());
            stmt1.setString(25, bean.getCpincode());
            stmt1.setString(26, bean.getPpincode());
            stmt1.setString(27, bean.getAppdept());
            stmt1.setString(28, bean.getDesignation());
            stmt1.setString(29, bean.getExtrapost());
            stmt1.setString(30, dateParse.getMysqlDate(bean.getDoj()));
            stmt1.setString(31, bean.getNoa());
            stmt1.setString(32, bean.getNoj());
            stmt1.setString(33, bean.getSqual());
            stmt1.setString(34, bean.getTexp());
            stmt1.setString(35, bean.getIexp());
            stmt1.setString(36, bean.getAoi());
            stmt1.setString(37, bean.getSub());
            stmt1.setString(38, bean.getJpub());
            stmt1.setString(39, bean.getBpub());
            stmt1.setString(40, bean.getResearch());
            stmt1.setString(41, bean.getMemberships());
            stmt1.setString(42, bean.getPetants());
            stmt1.setString(43, bean.getResearchguidesub());
            stmt1.setString(44, bean.getUniversity());
            stmt1.executeUpdate();
            ResultSet rs=stmt1.getGeneratedKeys();
            while (rs.next())
            {
                EID=rs.getInt(1);
            }
            rs.close();
            System.out.println("EID= "+EID);


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

	public int addEmpPhoto(String eid, String photo) throws NamingException, SQLException
    {
        Connection con = null;
        PreparedStatement stmt3=null;
        con = DBConnection.createConnection();

        con.setAutoCommit(false);
        try
        {

            String sql1 = "replace into emp_photo values (?,?)";
            PreparedStatement stmt1 = con.prepareStatement(sql1);
            stmt1.setString(1, eid);
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

	public int addEmpResume(String eid, String resume) throws NamingException, SQLException
    {
        Connection con = null;
        PreparedStatement stmt3=null;
        con = DBConnection.createConnection();

        con.setAutoCommit(false);
        try
        {

            String sql1 = "replace into emp_resume values (?,?)";
            PreparedStatement stmt1 = con.prepareStatement(sql1);
            stmt1.setString(1, eid);
            stmt1.setString(2, resume);
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


	public ArrayList<EmpBean> getDeptWiseEmp(String deptID) {

		ArrayList<EmpBean> al=new ArrayList<>();
        Connection con = null;
        Statement statement = null;
        PreparedStatement stmt2 = null;
        ResultSet rs=null;
        ResultSet rs2=null;
        PreparedStatement stmt3 = null;
        ResultSet rs3=null;
        PreparedStatement stmt4 = null;
        ResultSet rs4=null;

        EmpBean b=null;
       try{
    	   String sql2="select * from emp_photo where EID=?";
    	   String sql3="select * from employeequal where fid=?"; String qual="";
    	   String sql4="select * from emp_resume where EID=?";

            String sql="SELECT e.*,d.Dname,dept.deptname FROM emp e, designations d, department dept where e.appdept='"+deptID+"' and e.designation=d.DID and e.appdept=dept.deptid order by e.designation,e.texp desc";
            
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
            	qual="";
            	b=new EmpBean();
            	b.setEID(rs.getString("EID"));
            	b.setSal(rs.getString("sal"));
            	b.setFname(rs.getString("fname"));
            	b.setMname(rs.getString("mname"));
            	b.setLname(rs.getString("lname"));
            	b.setDesigname(rs.getString("Dname"));
            	b.setDoj(dateParse.getLocalDate(rs.getString("doj")));
            	b.setNoj(rs.getString("noj"));
            	b.setNoa(rs.getString("noa"));
            	b.setDeptname(rs.getString("deptname"));
            	b.setContact1(rs.getString("contact1"));
            	b.setMail(rs.getString("mail"));
            	b.setTexp(rs.getString("texp"));
            	b.setBpub(rs.getString("bpub"));
            	b.setAoi(rs.getString("aoi"));
            	b.setResearch(rs.getString("research"));
            	b.setSub(rs.getString("sub"));
            	b.setMemberships(rs.getString("memberships"));
            	b.setJpub(rs.getString("jpub"));
            	b.setPetants(rs.getString("petants"));


            	stmt2=con.prepareStatement(sql2);
            	stmt2.setString(1, rs.getString("EID"));
            	rs2=stmt2.executeQuery();
            	while (rs2.next()) {
            		b.setPhoto(rs2.getString("photo"));
				}
            	rs2.close();
            	stmt2.close();

            	stmt3=con.prepareStatement(sql3);
            	stmt3.setString(1, rs.getString("EID"));
            	rs3=stmt3.executeQuery();
            	while (rs3.next()) {
            		qual += rs3.getString("degree")+" - "+rs3.getString("specialization")+", &nbsp;";
				}
            	rs3.close();stmt3.close();
            	b.setQuali(qual);

            	stmt4=con.prepareStatement(sql4);
            	stmt4.setString(1, rs.getString("EID"));
            	rs4=stmt4.executeQuery();
            	while (rs4.next()) {
            		b.setResume(rs4.getString("resume"));
				}
            	rs4.close();stmt4.close();

            	al.add(b);
            }
            
            rs.close();
            statement.close();
            con.close();
            return al;
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


	public EmpBean getEmpProfileInfo(String EID) {

		EmpBean b=new EmpBean();
        Connection con = null;
        Statement statement = null;
        PreparedStatement stmt2 = null;
        PreparedStatement stmt3 = null;
        ResultSet rs=null;
        ResultSet rs2=null;
        ResultSet rs3=null;
       try{
    	   	String sql2="select * from emp_photo where EID=?";
    	   	String sql3="select * from emp_resume where EID=?";
            String sql="SELECT e.*,d.Dname,dept.deptname FROM emp e, designations d, department dept where e.EID='"+EID+"' and e.designation=d.DID and e.appdept=dept.deptid order by e.designation";
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
            	b.setEID(rs.getString("EID"));
            	b.setSal(rs.getString("sal"));
            	b.setFname(rs.getString("fname"));
            	b.setMname(rs.getString("mname"));
            	b.setLname(rs.getString("lname"));
            	b.setBcudid(rs.getString("bcudid"));
            	b.setPdeaid(rs.getString("pdeaid"));
            	b.setPanno(rs.getString("panno"));
            	b.setAdharno(rs.getString("adharno"));
            	b.setDob(dateParse.getLocalDate(rs.getString("dob")));
            	b.setGender(rs.getString("gender"));
            	b.setReligion(rs.getString("religion"));
            	b.setCategory(rs.getString("category"));
            	b.setCaste(rs.getString("caste"));
            	b.setMstatus(rs.getString("mstatus"));
            	b.setContact1(rs.getString("contact1"));
            	b.setContact2(rs.getString("contact2"));
            	b.setMail(rs.getString("mail"));
            	b.setCurraddress(rs.getString("curraddress"));
            	b.setPeraddress(rs.getString("peraddress"));
            	b.setCstate(rs.getString("cstate"));
            	b.setPstate(rs.getString("pstate"));
            	b.setCcity(rs.getString("ccity"));
            	b.setPcity(rs.getString("pcity"));
            	b.setCpincode(rs.getString("cpincode"));
            	b.setPpincode(rs.getString("ppincode"));
            	b.setAppdept(rs.getString("appdept"));
            	b.setDesignation(rs.getString("designation"));
            	b.setExtrapost(rs.getString("extrapost"));
            	b.setDoj(dateParse.getLocalDate(rs.getString("doj")));
            	b.setNoa(rs.getString("noa"));
            	b.setNoj(rs.getString("noj"));
            	b.setSqual(rs.getString("squal"));
            	b.setTexp(rs.getString("texp"));
            	b.setIexp(rs.getString("iexp"));
            	b.setAoi(rs.getString("aoi"));
            	b.setSub(rs.getString("sub"));
            	b.setJpub(rs.getString("jpub"));
            	b.setBpub(rs.getString("bpub"));
            	b.setResearch(rs.getString("research"));
            	b.setMemberships(rs.getString("memberships"));
            	b.setPetants(rs.getString("petants"));

            	b.setResearchguidesub(rs.getString("researchguidesub"));
            	b.setUniversity(rs.getString("university"));

            	b.setDeptname(rs.getString("deptname"));

            	stmt2=con.prepareStatement(sql2);
            	stmt2.setString(1, rs.getString("EID"));
            	rs2=stmt2.executeQuery();
            	while (rs2.next()) {
            		b.setPhoto(rs2.getString("photo"));
				}
            	rs2.close();
            	stmt2.close();

            	stmt3=con.prepareStatement(sql3);
            	stmt3.setString(1, rs.getString("EID"));
            	rs3=stmt3.executeQuery();
            	while (rs3.next()) {
            		b.setResume(rs3.getString("resume"));
				}
            	rs3.close();
            	stmt3.close();

            }
            
            rs.close();
            statement.close();
            con.close();
            return b;
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

	public ArrayList<HashMap<String, String>> getQual(int fid) {
		Connection con = null;
	    PreparedStatement pst = null;
	    ResultSet rs = null;
	    ArrayList<HashMap<String, String>> list=new ArrayList<>();
	    HashMap<String, String> m=null;
	    try {

	        con = DBConnection.createConnection();
	        pst = con.prepareStatement("select * from employeequal where fid=?");
	        pst.setInt(1, fid);
	        rs = pst.executeQuery();
	        while(rs.next()){

	        	m=new HashMap<>();
	        	m.put("qid", rs.getInt("qid")+"");
	        	m.put("fid", rs.getInt("fid")+"");
	        	m.put("qname", rs.getString("qname"));
	        	m.put("qdegree", rs.getString("degree"));
	        	m.put("qspecialization", rs.getString("specialization"));
	        	m.put("qinstitute", rs.getString("institute"));
	        	m.put("quniversity", rs.getString("university"));
	        	m.put("qpassyr", rs.getString("passyr"));
	        	m.put("qper", rs.getString("per"));
	        	list.add(m);

	        }
	        
	        rs.close();
	        pst.close();
	        con.close();
	        return list;
	    }
	    catch(Exception e)
	    {
	    	e.printStackTrace();
	    }
	    finally {

	    	try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	    return list;
	}


	public ArrayList<HashMap<String, String>> getCert(int fid) {
		Connection con = null;
	    PreparedStatement pst = null;
	    ResultSet rs = null;
	    ArrayList<HashMap<String, String>> list=new ArrayList<>();
	    HashMap<String, String> m=null;
	    try {

	        con = DBConnection.createConnection();
	        pst = con.prepareStatement("select * from employeecert where fid=?");
	        pst.setInt(1, fid);
	        rs = pst.executeQuery();
	        while(rs.next()){

	        	m=new HashMap<>();
	        	m.put("cid", rs.getInt("cid")+"");
	        	m.put("fid", rs.getInt("fid")+"");
	        	m.put("ccoursename", rs.getString("coursename"));
	        	m.put("cinstitute", rs.getString("institute"));
	        	m.put("cduration", rs.getString("duration"));
	        	m.put("ccontent", rs.getString("content"));
	        	list.add(m);

	        }
	       
	        rs.close();
	        pst.close();
	        con.close();
	        return list;
	    }
	    catch(Exception e)
	    {
	    	e.printStackTrace();
	    }
	    finally {

	    	try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	    return list;
	}

	public int[] addQual(ArrayList<HashMap<String, String>> qual) {
		int result[] = null;
		Connection con=null;
		PreparedStatement pst=null;
		try {

			con = DBConnection.createConnection();

			pst=con.prepareStatement("insert into employeequal(fid,qname,degree,specialization,institute,university,passyr,per)values(?,?,?,?,?,?,?,?)");

			for (HashMap<String, String> q : qual) {
				pst.setInt(1, Integer.parseInt(q.get("fid")));
				pst.setString(2, q.get("qname"));
				pst.setString(3, q.get("degree"));
				pst.setString(4, q.get("spl"));
				pst.setString(5, q.get("inst"));
				pst.setString(6, q.get("univ"));
				pst.setString(7, q.get("pyr"));
				pst.setString(8, q.get("per"));
				pst.addBatch();
			}


			result=pst.executeBatch();
			pst.close();
			con.close();
			return result;

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (NamingException e) {
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

	public int[] addCert(ArrayList<HashMap<String, String>> cert) {
		int result[] = null;
		Connection con=null;
		PreparedStatement pst=null;
		try {

			con = DBConnection.createConnection();

			pst=con.prepareStatement("insert into employeecert(fid,coursename,institute,duration,content)values(?,?,?,?,?)");

			for (HashMap<String, String> c : cert) {
				pst.setInt(1, Integer.parseInt(c.get("fid")));
				pst.setString(2, c.get("crsname"));
				pst.setString(3, c.get("cinst"));
				pst.setString(4, c.get("cduration"));
				pst.setString(5, c.get("ccontent"));

				pst.addBatch();
			}


			result=pst.executeBatch();
			pst.close();
			con.close();
			return result;

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (NamingException e) {
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

public int deleteQual(int qid) {

		int result=0;
		Connection con=null;

		try {
			con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("delete from employeequal where qid=?");
			pst.setInt(1, qid);
			result=pst.executeUpdate();
			pst.close();
			con.close();
			return result;

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

public int deleteCert(int cid) {

	int result=0;
	Connection con=null;

	try {
		con = DBConnection.createConnection();
		PreparedStatement pst=con.prepareStatement("delete from employeecert where cid=?");
		pst.setInt(1, cid);
		result=pst.executeUpdate();
		pst.close();
		con.close();
		return result;

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

	public ArrayList<EmployeeExp> getExp(int fid) {
		Connection con = null;
	    PreparedStatement pst = null;
	    ResultSet rs = null;
	    ArrayList<EmployeeExp> list=new ArrayList<>();

	    try {

	        con = DBConnection.createConnection();
	        pst = con.prepareStatement("select * from employeeexp where fid=?");
	        pst.setInt(1, fid);
	        rs = pst.executeQuery();
	        while(rs.next()){

	        	list.add(new EmployeeExp(rs.getString("eorg"),rs.getString("eurl"),rs.getString("edesignation"),rs.getString("jobprofile"),rs.getDate("fromdate"),rs.getDate("todate"),rs.getString("achievement"),rs.getInt("expid")));
	        }

	        rs.close();
	        pst.close();
	        con.close();
	        return list;
	    }
	    catch(Exception e)
	    {
	    	e.printStackTrace();
	    }
	    finally {

	    	try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	    return list;
	}


	public int addExp(EmployeeExp emp) {
		int result=0;
		Connection con=null;
		try {

			con = DBConnection.createConnection();

			PreparedStatement pst=con.prepareStatement("insert into employeeexp (fid,eorg, eurl,edesignation,jobprofile,fromdate,todate,achievement)values(?,?,?,?,?,?,?,?)");
			pst.setInt(1, emp.getFacultyId());
			pst.setString(2, emp.getEorg());
			pst.setString(3, emp.getEurl());
			pst.setString(4, emp.getDesignation());
			pst.setString(5, emp.getJobprofile());
			pst.setDate(6,emp.getFromDate());
			pst.setDate(7, emp.getToDate());
			pst.setString(8, emp.getAchievement());
			result=pst.executeUpdate();

			pst.close();
			con.close();
			return result;

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (NamingException e) {
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


public int deleteExp(int expid) {

		int result=0;
		Connection con=null;

		try {
			con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("delete from employeeexp where expid=?");
			pst.setInt(1, expid);
			result=pst.executeUpdate();
			pst.close();
			con.close();
			return result;

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

public int deleteKr(int krid) {

	int result=0;
	Connection con=null;

	try {
		con = DBConnection.createConnection();
		PreparedStatement pst=con.prepareStatement("delete from employeekr where krid=?");
		pst.setInt(1, krid);
		result=pst.executeUpdate();
		pst.close();
		con.close();
		return result;

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


		public ArrayList<HashMap<String, String>> getKr(int fid) {
			Connection con = null;
		    PreparedStatement pst = null;
		    ResultSet rs = null;
		    ArrayList<HashMap<String, String>> list=new ArrayList<>();
		    HashMap<String, String> m=null;
		    try {

		        con = DBConnection.createConnection();
		        pst = con.prepareStatement("select k.krid,k.fid,e.mname,e.lname,e.fname,e.sal,k.headline,k.krcategory,k.publication,k.author,k.krdate,k.krurl,k.documentName,k.keywords,k.content,k.notes,k.priority,k.guide,k.coguide,k.teamsize FROM employeekr AS k INNER JOIN emp AS e ON k.fid = e.EID where k.fid=?");
		        pst.setInt(1, fid);
		        rs = pst.executeQuery();
		        while(rs.next()){

		        	m=new HashMap<>();
		        	m.put("krid", rs.getInt("krid")+"");
		        	m.put("fid", rs.getInt("fid")+"");
		        	m.put("manme", rs.getString("mname"));
		        	m.put("lname", rs.getString("lname"));
		        	m.put("fname", rs.getString("fname"));
		        	m.put("sal", rs.getString("sal"));
		        	m.put("headline", rs.getString("headline"));
		        	m.put("krcategory", rs.getString("krcategory"));
		        	m.put("publication", rs.getString("publication"));
		        	m.put("author", rs.getString("author"));
		        	m.put("krdate", rs.getString("krdate"));
		        	m.put("krurl", rs.getString("krurl"));
		        	m.put("documentName", rs.getString("documentName"));
		        	m.put("keywords", rs.getString("keywords"));
		        	m.put("content", rs.getString("content"));
		        	m.put("notes", rs.getString("notes"));
		        	m.put("priority", rs.getString("priority"));
		        	m.put("guide", rs.getString("guide"));
		        	m.put("coguide", rs.getString("coguide"));
		        	m.put("teamsize", rs.getString("teamsize"));
		        	list.add(m);

		        }

		        rs.close();
		        pst.close();
		        con.close();
		        return list;
		    }
		    catch(Exception e)
		    {
		    	e.printStackTrace();
		    }
		    finally {

		    	try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		    return list;
		}

		public int addEmployeeKr(Employee emp) {
			int result=0;
			Connection con=null;
			try {

				con = DBConnection.createConnection();

				PreparedStatement pst=con.prepareStatement("insert into employeekr (fid,headline,krcategory,publication,author,krdate,krurl,article,documentName,documentType,documentLength,keywords,content,notes,priority,guide,coguide,teamsize)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
				pst.setInt(1, emp.getFacultyId());
				pst.setString(2, emp.getHeadline());
				pst.setString(3, emp.getKrCategory());
				pst.setString(4, emp.getPublication());
				pst.setString(5, emp.getAuthor());
				pst.setDate(6, emp.getDate());
				pst.setString(7, emp.getUrl());
				pst.setBlob(8, emp.getArticle());
				pst.setString(9, emp.getDocumentName());
				pst.setString(10, emp.getDocumentType());
				pst.setLong(11, emp.getDocumentLength());
				pst.setString(12, emp.getKeywords());
				pst.setString(13, emp.getContent());
				pst.setString(14, emp.getNotes());
				pst.setString(15, emp.getPriority());
				pst.setString(16, emp.getGuide());
				pst.setString(17, emp.getCoguide());
				pst.setString(18, emp.getTeamsize());

				result=pst.executeUpdate();

				pst.close();
				con.close();
				return result;

			} catch (SQLException e) {
				e.printStackTrace();
			} catch (NamingException e) {
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


		public HashMap<String, Object> getDocument(int krid) {

			HashMap<String, Object> m=new HashMap<>();
			Connection con=null;
			PreparedStatement pst=null;
			ResultSet rs=null;
			try {

				con = DBConnection.createConnection();
				pst=con.prepareStatement("select article,documentName,documentType from employeekr where krid=?");
				pst.setInt(1, krid);
				rs=pst.executeQuery();
				if(rs.next())
				{
					m.put("article", rs.getBinaryStream("article"));
					m.put("documentName", rs.getString("documentName"));
		        	m.put("documentType", rs.getString("documentType"));
				}
				rs.close();
		        pst.close();
		        con.close();
				return m;

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
			return m;
		}


		public int deleteEmp(String EID) throws NamingException, SQLException
	    {
	        Connection con = null;
	        PreparedStatement stmt3=null;
	        con = DBConnection.createConnection();

	        con.setAutoCommit(false);
	        try
	        {
	        	System.out.println("Eid Dao=="+EID);

	            String sql1 = "Delete from emp where EID=?";
	            PreparedStatement stmt1 = con.prepareStatement(sql1);
	            stmt1.setString(1, EID);
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


		public int addOtherQuali(String ID,String name) {
			PreparedStatement pst=null;
			int result=0;
			Connection con=null;
			try {

				con = DBConnection.createConnection();
				pst=con.prepareStatement("replace into other_quali values('"+ID+"','"+name+"')");
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

		public LinkedHashMap<String, String[]> getAllOtherQualifications() {

			LinkedHashMap<String, String[]> m=new LinkedHashMap<>();
	        Connection con = null;
	        Statement statement = null;
	        ResultSet rs=null;
	        String[] arr=null;
	       try{
	            String sql="select * from other_quali";
	            con = DBConnection.createConnection();
	            statement = con.createStatement();
	            rs=statement.executeQuery(sql);
	            while(rs.next())
	            {
	            	arr=new String[1];
	            	arr[0]=rs.getString("name");
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

		public int deleteOtherQualifications(String[] IDs) {
			PreparedStatement pst=null;
			int result=0;
			Connection con=null;
			try {

				con = DBConnection.createConnection();

				pst=con.prepareStatement("delete from other_quali where ID=?");

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
