package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.naming.NamingException;

import com.DBConnection;

import bean.FEmployerEmployeeBean;
import bean.FParentCollegeBean;
import bean.FStudentCollegeBean;
import bean.FStudentTeachingBean;
import bean.FTeacherCollegeBean;
import bean.FeedbackBean;
import bean.FeedbackReportBean;
import bean.FeedbackSystem;

public class FeedbackDao2 {

	public int addFeedback(FeedbackBean bean) {

		int result=0;
		Connection con=null;
		try {
			con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("insert into feedback(name,duration,active)values(?,?,?)");
			pst.setString(1, bean.getName());
			pst.setString(2, bean.getDuration());
			pst.setBoolean(3, bean.isActive());
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

	public int updateFeedback(FeedbackBean bean) {

		int result=0;
		Connection con=null;
		try {
			con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("update feedback set name=?, duration=? where fid=?");
			pst.setString(1, bean.getName());
			pst.setString(2, bean.getDuration());
			pst.setInt(3, bean.getFid());
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

	public int deleteFeedback(int fid) {

		int result=0;
		Connection con=null;
		try {
			con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("delete from feedback where fid=?");
			pst.setInt(1, fid);
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

	public FeedbackBean getCurrentFeedback() {

		Connection con=null;
		ResultSet rs=null;
		FeedbackBean feedback=null;
		try {
			con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("select * from feedback where active=?");
			pst.setBoolean(1, true);
			rs=pst.executeQuery();
			if (rs.next()) {
				feedback=new FeedbackBean(rs.getInt("fid"), rs.getString("name"), rs.getString("duration"));
			}
            rs.close();
			pst.close();
			con.close();
			return feedback;
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
		return feedback;

	}

	public FeedbackBean getFeedback(int fid) {

		Connection con=null;
		ResultSet rs=null;
		FeedbackBean feedback=null;
		try {
			con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("select * from feedback where fid=?");
			pst.setInt(1, fid);
			rs=pst.executeQuery();
			if (rs.next()) {
				feedback=new FeedbackBean(rs.getInt("fid"), rs.getString("name"), rs.getString("duration"));
			}
            rs.close();
			pst.close();
			con.close();
			return feedback;
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
		return feedback;

	}

	public ArrayList<FeedbackBean> getFeedbackList() {
		ArrayList<FeedbackBean> list=new ArrayList<>();
		Connection con = null;
        PreparedStatement pst=null;
        ResultSet rs=null;
        try{
            con = DBConnection.createConnection();
            pst=con.prepareStatement("select * from feedback");
            rs=pst.executeQuery();
            while(rs.next())
            {
            	list.add(new FeedbackBean(rs.getInt("fid"), rs.getString("name"), rs.getString("duration"), rs.getBoolean("active")));
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
        	try{
                con.close();
               }catch(Exception e1){
            	   e1.printStackTrace();
               }
		}
        return list;
	}

	public int makeFeedbackActive(int fid) {
		int result=0;
		int result1=0;
		Connection con=null;
		try {
			con = DBConnection.createConnection();
			con.setAutoCommit(false);
			PreparedStatement pst=con.prepareStatement("update feedback set active=? where fid=?");
			pst.setBoolean(1, true);
			pst.setInt(2, fid);
			result=pst.executeUpdate();

			pst=con.prepareStatement("update feedback set active=? where fid!=?");
			pst.setBoolean(1, false);
			pst.setInt(2, fid);
			result1=pst.executeUpdate();

			con.commit();
			pst.close();
			con.close();
			return 1;

		} catch (SQLException | NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}

		}
		finally {
			try {
				con.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}

		}
		return 0;
	}

	public int enableDisableFeedback() {
		int result=0;
		Connection con=null;
		ResultSet rs=null;
		boolean status=false;
		try {
			con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("select * from feedbacksystem");
			rs=pst.executeQuery();
			if(rs.next()){
				status=rs.getBoolean("status");
			}

			pst=con.prepareStatement("update feedbacksystem set status=?");
			pst.setBoolean(1, !status);
			result=pst.executeUpdate();
			rs.close();
			pst.close();
			con.close();
			return 1;
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
		return 0;
	}

	public FeedbackSystem getFeedbackSystemStatus() {
		Connection con=null;
		ResultSet rs=null;
		FeedbackSystem system=null;
		try {
			con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("select * from feedbacksystem");
			rs=pst.executeQuery();
			if(rs.next()){
				system=new FeedbackSystem(rs.getBoolean(1),rs.getBoolean(2),rs.getBoolean(3),rs.getBoolean(4),rs.getBoolean(5),rs.getBoolean(6),rs.getBoolean(7),rs.getBoolean(8),rs.getBoolean(9));
			}

			rs.close();
            pst.close();
            con.close();
			return system;
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
		return system;
	}

	public int updateFeedbackSystem(FeedbackSystem bean) {

		int result=0;
		Connection con=null;
		try {
			con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("update feedbacksystem set studentcollege=?, studentteaching=?, studentlibrary=?, studentalumini=?, studentsports=?, parentcollege=?, employeremployee=?, teachercollege=?");
			pst.setBoolean(1, bean.isStudentcollege());
			pst.setBoolean(2, bean.isStudentteaching());
			pst.setBoolean(3, bean.isStudentlibrary());
			pst.setBoolean(4, bean.isStudentalumini());
			pst.setBoolean(5, bean.isStudentsports());
			pst.setBoolean(6, bean.isParentcollege());
			pst.setBoolean(7, bean.isEmployeremployee());
			pst.setBoolean(8, bean.isTeachercollege());
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
	public int submitStudentCollegeFeedbackNew(FStudentCollegeBean bean) {
		int result=0;
		Connection con=null;
		try {
			con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("INSERT INTO `fstudentcollege`(`fid`,`q1`,`q2`,`q3`,`q4`,`q5`,`q6`,`q7`,`q8`,`q9`,`q10`,`q11`,`q12`,`q13`,`q14`,`q15`,`q16`,`q17`,`q18`,`q19`,`q20`,`flag`,`gender`,`deg`,`subject`,`age`,`suggestions`)VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);");
			pst.setInt(1, bean.getFid());
			pst.setString(2, bean.getQ1());
			pst.setString(3, bean.getQ2());
			pst.setString(4, bean.getQ3());
			pst.setString(5, bean.getQ4());
			pst.setString(6, bean.getQ5());
			pst.setString(7, bean.getQ6());
			pst.setString(8, bean.getQ7());
			pst.setString(9, bean.getQ8());
			pst.setString(10, bean.getQ9());
			pst.setString(11, bean.getQ10());
			pst.setString(12, bean.getQ11());
			pst.setString(13, bean.getQ12());
			pst.setString(14, bean.getQ13());
			pst.setString(15, bean.getQ14());
			pst.setString(16, bean.getQ15());
			pst.setString(17, bean.getQ16());
			pst.setString(18, bean.getQ17());
			pst.setString(19, bean.getQ18());
			pst.setString(20, bean.getQ19());
			pst.setString(21, bean.getQ20());
			
			pst.setString(22, bean.getFlag());
			pst.setString(23, bean.getGender());
			pst.setString(24, bean.getDeg());
			pst.setString(25, bean.getCourse());
			pst.setString(26, bean.getAge());
			pst.setString(27, bean.getSuggestions());
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


	public int submitStudentCollegeFeedback(FStudentCollegeBean bean) {
		int result=0;
		Connection con=null;
		try {
			con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("insert into fstudentcollege(fid,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15,q16,course,academicyear,suggestions)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pst.setInt(1, bean.getFid());
			pst.setString(2, bean.getQ1());
			pst.setString(3, bean.getQ2());
			pst.setString(4, bean.getQ3());
			pst.setString(5, bean.getQ4());
			pst.setString(6, bean.getQ5());
			pst.setString(7, bean.getQ6());
			pst.setString(8, bean.getQ7());
			pst.setString(9, bean.getQ8());
			pst.setString(10, bean.getQ9());
			pst.setString(11, bean.getQ10());
			pst.setString(12, bean.getQ11());
			pst.setString(13, bean.getQ12());
			pst.setString(14, bean.getQ13());
			pst.setString(15, bean.getQ14());
			pst.setString(16, bean.getQ15());
			pst.setString(17, bean.getQ16());
			pst.setString(18, bean.getCourse());
			pst.setString(19, bean.getAcademicyear());
			pst.setString(20, bean.getSuggestions());
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

	public int submitStudentTeachingFeedback(FStudentTeachingBean bean) {
		int result=0;
		Connection con=null;
		try {
			con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("insert into fstudentteaching(fid,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11)values(?,?,?,?,?,?,?,?,?,?,?,?)");
			pst.setInt(1, bean.getFid());
			pst.setString(2, bean.getQ1());
			pst.setString(3, bean.getQ2());
			pst.setString(4, bean.getQ3());
			pst.setString(5, bean.getQ4());
			pst.setString(6, bean.getQ5());
			pst.setString(7, bean.getQ6());
			pst.setString(8, bean.getQ7());
			pst.setString(9, bean.getQ8());
			pst.setString(10, bean.getQ9());
			pst.setString(11, bean.getQ10());
			pst.setString(12, bean.getQ11());
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

	public int submitParentCollegeFeedback(FParentCollegeBean bean) {
		int result=0;
		Connection con=null;
		try {
			con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("insert into fparentcollege(fid,parentname,contact,wardname,department,academicyear,course,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pst.setInt(1, bean.getFid());
			pst.setString(2, bean.getParentname());
			pst.setString(3, bean.getContact());
			pst.setString(4, bean.getWardname());
			pst.setString(5, bean.getDepartment());
			pst.setString(6, bean.getAcademicyear());
			pst.setString(7, bean.getCourse());

			pst.setString(8, bean.getQ1());
			pst.setString(9, bean.getQ2());
			pst.setString(10, bean.getQ3());
			pst.setString(11, bean.getQ4());
			pst.setString(12, bean.getQ5());
			pst.setString(13, bean.getQ6());
			pst.setString(14, bean.getQ7());
			pst.setString(15, bean.getQ8());
			pst.setString(16, bean.getQ9());
			pst.setString(17, bean.getQ10());
//			pst.setString(18, bean.getQ11());
//			pst.setString(19, bean.getQ12());
//			pst.setString(20, bean.getQ13());
//			pst.setString(21, bean.getQ14());
//			pst.setString(22, bean.getQ15());
//			pst.setString(23, bean.getSuggestions());

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
//Changes By Sanket add 3Ques & 5 text
	public int submitEmployerEmployeeFeedback(FEmployerEmployeeBean bean) {
		int result=0;
		Connection con=null;
		try {
			con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("insert into femployeremployee(fid,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,conm,addr,degs,eml,cont)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pst.setInt(1, bean.getFid());
			pst.setString(2, bean.getQ1());
			pst.setString(3, bean.getQ2());
			pst.setString(4, bean.getQ3());
			pst.setString(5, bean.getQ4());
			pst.setString(6, bean.getQ5());
			pst.setString(7, bean.getQ6());
			pst.setString(8, bean.getQ7());
			pst.setString(9, bean.getQ8());
			pst.setString(10, bean.getQ9());
			pst.setString(11, bean.getQ10());
			pst.setString(12, bean.getQ11());
			pst.setString(13, bean.getQ12());
			pst.setString(14, bean.getQ13());
			pst.setString(15, bean.getCompanyname());
			pst.setString(16, bean.getAddress());
			pst.setString(17, bean.getNamedesig());
			pst.setString(18, bean.getSuggestions()); // As Email
			pst.setString(19, bean.getContact());
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

	public int submitTeacherCollegeFeedback(FTeacherCollegeBean bean) {
		int result=0;
		Connection con=null;
		try {
			con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("insert into fteachercollege(fid,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15,q16,q17,q18,q19,q20,q21,q22,q23,q24,q25)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pst.setInt(1, bean.getFid());
			pst.setString(2, bean.getQ1());
			pst.setString(3, bean.getQ2());
			pst.setString(4, bean.getQ3());
			pst.setString(5, bean.getQ4());
			pst.setString(6, bean.getQ5());
			pst.setString(7, bean.getQ6());
			pst.setString(8, bean.getQ7());
			pst.setString(9, bean.getQ8());
			pst.setString(10, bean.getQ9());
			pst.setString(11, bean.getQ10());
			pst.setString(12, bean.getQ11());
			pst.setString(13, bean.getQ12());
			pst.setString(14, bean.getQ13());
			pst.setString(15, bean.getQ14());
			pst.setString(16, bean.getQ15());
			pst.setString(17, bean.getQ16());
			pst.setString(18, bean.getQ17());
			pst.setString(19, bean.getQ18());
			pst.setString(20, bean.getQ19());
			pst.setString(21, bean.getQ20());
			pst.setString(22, bean.getQ21());
			pst.setString(23, bean.getQ22());
			pst.setString(24, bean.getQ23());
			pst.setString(25, bean.getQ24());
			pst.setString(26, bean.getQ25());
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

	public HashMap<Integer, FeedbackReportBean> getStudentCollegeReport(int fid) {
		System.out.println(fid);
		Connection con=null;
		PreparedStatement pst=null;
		ResultSet rs=null;
		HashMap<Integer, FeedbackReportBean> m=new HashMap<>();
		int total=0;
		int a1=0;
		int a2=0;
		int a3=0;
		int a4=0;
		int a5=0;
		try {
			con = DBConnection.createConnection();
			pst=con.prepareStatement("select count(*) from fstudentcollege where fid=?");

			pst.setInt(1, fid);
			rs=pst.executeQuery();
			if(rs.next()){
				total=rs.getInt(1);
			}
			rs.close();
			pst.close();

			String query="select count(*) from fstudentcollege where fid=? and q? = ?";

			// Make Change 16 to 20
			for(int i=1;i<=20;i++){
				a1=a2=a3=a4=a5=0;
				pst=con.prepareStatement(query);
				pst.setInt(1, fid);
				pst.setInt(2, i);
				pst.setString(3, "Strongly Agree");
				rs=pst.executeQuery();
				if(rs.next()){
					a1=rs.getInt(1);
					System.out.println("a1: "+a1);
				}
				rs.close();

				pst.close();
				pst=con.prepareStatement(query);

				pst.setInt(1, fid);
				pst.setInt(2, i);
				pst.setString(3, "Agree");
				rs=pst.executeQuery();
				if(rs.next()){
					a2=rs.getInt(1);
					System.out.println("a2: "+a2);
				}
				rs.close();
				pst.close();
				pst=con.prepareStatement(query);
				pst.setInt(1, fid);
				pst.setInt(2, i);
				pst.setString(3, "Not Sure");
				rs=pst.executeQuery();
				if(rs.next()){
					a3=rs.getInt(1);
					System.out.println("a3: "+a3);
				}
				rs.close();
				pst.close();
				pst=con.prepareStatement(query);
				pst.setInt(1, fid);
				pst.setInt(2, i);
				pst.setString(3, "Disagree");
				rs=pst.executeQuery();
				if(rs.next()){
					a4=rs.getInt(1);
					System.out.println("a4: "+a4);
				}
				rs.close();
				pst.close();
				pst=con.prepareStatement(query);
				pst.setInt(1, fid);
				pst.setInt(2, i);
				pst.setString(3, "Strongly Disagree");
				rs=pst.executeQuery();
				if(rs.next()){
					a5=rs.getInt(1);
					System.out.println("a5: "+a5);
				}
				rs.close();
				pst.close();
				m.put(i, new FeedbackReportBean(fid, i, total, a1, a2, a3, a4, a5));
			}

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

	public HashMap<Integer, FeedbackReportBean> getStudentTeachingReport(int fid) {
		System.out.println(fid);
		Connection con=null;
		PreparedStatement pst=null;
		ResultSet rs=null;
		HashMap<Integer, FeedbackReportBean> m=new HashMap<>();
		int total=0;
		int a1=0;
		int a2=0;
		int a3=0;
		int a4=0;
		int a5=0;
		try {
			con = DBConnection.createConnection();
			pst=con.prepareStatement("select count(*) from fstudentteaching where fid=?");

			pst.setInt(1, fid);
			rs=pst.executeQuery();
			if(rs.next()){
				total=rs.getInt(1);
			}
			rs.close();
			pst.close();

			String query="select count(*) from fstudentteaching where fid=? and q? = ?";

			for(int i=1;i<=11;i++){
				a1=a2=a3=a4=a5=0;
				pst=con.prepareStatement(query);
				pst.setInt(1, fid);
				pst.setInt(2, i);
				pst.setString(3, "Strongly Disagree");
				rs=pst.executeQuery();
				if(rs.next()){
					a1=rs.getInt(1);
					System.out.println("a1: "+a1);
				}
				rs.close();

				pst.close();
				pst=con.prepareStatement(query);

				pst.setInt(1, fid);
				pst.setInt(2, i);
				pst.setString(3, "Disagree");
				rs=pst.executeQuery();
				if(rs.next()){
					a2=rs.getInt(1);
					System.out.println("a2: "+a2);
				}
				rs.close();
				pst.close();
				pst=con.prepareStatement(query);
				pst.setInt(1, fid);
				pst.setInt(2, i);
				pst.setString(3, "Not Sure");
				rs=pst.executeQuery();
				if(rs.next()){
					a3=rs.getInt(1);
					System.out.println("a3: "+a3);
				}
				rs.close();
				pst.close();
				pst=con.prepareStatement(query);
				pst.setInt(1, fid);
				pst.setInt(2, i);
				pst.setString(3, "Agree");
				rs=pst.executeQuery();
				if(rs.next()){
					a4=rs.getInt(1);
					System.out.println("a4: "+a4);
				}
				rs.close();
				pst.close();
				pst=con.prepareStatement(query);
				pst.setInt(1, fid);
				pst.setInt(2, i);
				pst.setString(3, "Strongly Agree");
				rs=pst.executeQuery();
				if(rs.next()){
					a5=rs.getInt(1);
					System.out.println("a5: "+a5);
				}
				rs.close();
				pst.close();
				m.put(i, new FeedbackReportBean(fid, i, total, a1, a2, a3, a4, a5));
			}

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

	public HashMap<Integer, FeedbackReportBean> getParentCollegeReport(int fid) {
		System.out.println(fid);
		Connection con=null;
		PreparedStatement pst=null;
		ResultSet rs=null;
		HashMap<Integer, FeedbackReportBean> m=new HashMap<>();
		int total=0;
		int a1=0;
		int a2=0;
		int a3=0;
		int a4=0;
		int a5=0;
		try {
			con = DBConnection.createConnection();
			pst=con.prepareStatement("select count(*) from fparentcollege where fid=?");

			pst.setInt(1, fid);
			rs=pst.executeQuery();
			if(rs.next()){
				total=rs.getInt(1);
			}
			rs.close();
			pst.close();

			String query="select count(*) from fparentcollege where fid=? and q? = ?";

			for(int i=1;i<=10;i++){
				a1=a2=a3=a4=a5=0;
				pst=con.prepareStatement(query);
				pst.setInt(1, fid);
				pst.setInt(2, i);
				pst.setString(3, "Excellent");
				rs=pst.executeQuery();
				if(rs.next()){
					a1=rs.getInt(1);
					System.out.println("a1: "+a1);
				}
				rs.close();

				pst.close();
				pst=con.prepareStatement(query);

				pst.setInt(1, fid);
				pst.setInt(2, i);
				pst.setString(3, "Very Good");
				rs=pst.executeQuery();
				if(rs.next()){
					a2=rs.getInt(1);
					System.out.println("a2: "+a2);
				}
				rs.close();
				pst.close();
				pst=con.prepareStatement(query);
				pst.setInt(1, fid);
				pst.setInt(2, i);
				pst.setString(3, "Good");
				rs=pst.executeQuery();
				if(rs.next()){
					a3=rs.getInt(1);
					System.out.println("a3: "+a3);
				}
				rs.close();
				pst.close();
				pst=con.prepareStatement(query);
				pst.setInt(1, fid);
				pst.setInt(2, i);
				pst.setString(3, "Average");
				rs=pst.executeQuery();
				if(rs.next()){
					a4=rs.getInt(1);
					System.out.println("a4: "+a4);
				}
				rs.close();
				pst.close();
				pst=con.prepareStatement(query);
				pst.setInt(1, fid);
				pst.setInt(2, i);
				pst.setString(3, "Poor");
				rs=pst.executeQuery();
				if(rs.next()){
					a5=rs.getInt(1);
					System.out.println("a5: "+a5);
				}
				rs.close();
				pst.close();
				m.put(i, new FeedbackReportBean(fid, i, total, a1, a2, a3, a4, a5));
			}

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

	public HashMap<Integer, FeedbackReportBean> getEmployerEmployeeReport(int fid) {
		System.out.println(fid);
		Connection con=null;
		PreparedStatement pst=null;
		ResultSet rs=null;
		HashMap<Integer, FeedbackReportBean> m=new HashMap<>();
		int total=0;
		int a1=0;
		int a2=0;
		int a3=0;
		int a4=0;
		int a5=0;
		try {
			con = DBConnection.createConnection();
			pst=con.prepareStatement("select count(*) from femployeremployee where fid=?");

			pst.setInt(1, fid);
			rs=pst.executeQuery();
			if(rs.next()){
				total=rs.getInt(1);
			}
			rs.close();
			pst.close();

			String query="select count(*) from femployeremployee where fid=? and q? = ?";

			for(int i=1;i<=13;i++){
				a1=a2=a3=a4=a5=0;
				pst=con.prepareStatement(query);
				pst.setInt(1, fid);
				pst.setInt(2, i);
				pst.setString(3, "Far from Satisfied");
				rs=pst.executeQuery();
				if(rs.next()){
					a1=rs.getInt(1);
					System.out.println("a1: "+a1);
				}
				rs.close();

				pst.close();
				pst=con.prepareStatement(query);

				pst.setInt(1, fid);
				pst.setInt(2, i);
				pst.setString(3, "Not Satisfied");
				rs=pst.executeQuery();
				if(rs.next()){
					a2=rs.getInt(1);
					System.out.println("a2: "+a2);
				}
				rs.close();
				pst.close();
				pst=con.prepareStatement(query);
				pst.setInt(1, fid);
				pst.setInt(2, i);
				pst.setString(3, "Satisfied");
				rs=pst.executeQuery();
				if(rs.next()){
					a3=rs.getInt(1);
					System.out.println("a3: "+a3);
				}
				rs.close();
				pst.close();
				pst=con.prepareStatement(query);
				pst.setInt(1, fid);
				pst.setInt(2, i);
				pst.setString(3, "Happy");
				rs=pst.executeQuery();
				if(rs.next()){
					a4=rs.getInt(1);
					System.out.println("a4: "+a4);
				}
				rs.close();
				pst.close();
				pst=con.prepareStatement(query);
				pst.setInt(1, fid);
				pst.setInt(2, i);
				pst.setString(3, "Very Happy");
				rs=pst.executeQuery();
				if(rs.next()){
					a5=rs.getInt(1);
					System.out.println("a5: "+a5);
				}
				rs.close();
				pst.close();
				m.put(i, new FeedbackReportBean(fid, i, total, a1, a2, a3, a4, a5));
			}

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

	public HashMap<Integer, FeedbackReportBean> getTeacherCollegeReport(int fid) {
		System.out.println(fid);
		Connection con=null;
		PreparedStatement pst=null;
		ResultSet rs=null;
		HashMap<Integer, FeedbackReportBean> m=new HashMap<>();
		int total=0;
		int a1=0;
		int a2=0;
		int a3=0;
		int a4=0;
		int a5=0;
		try {
			con = DBConnection.createConnection();
			pst=con.prepareStatement("select count(*) from fteachercollege where fid=?");

			pst.setInt(1, fid);
			rs=pst.executeQuery();
			if(rs.next()){
				total=rs.getInt(1);
			}
			rs.close();
			pst.close();

			String query="select count(*) from fteachercollege where fid=? and q? = ?";

			for(int i=1;i<=25;i++){
				a1=a2=a3=a4=a5=0;
				pst=con.prepareStatement(query);
				pst.setInt(1, fid);
				pst.setInt(2, i);
				pst.setString(3, "Strongly Disagree");
				rs=pst.executeQuery();
				if(rs.next()){
					a1=rs.getInt(1);
					System.out.println("a1: "+a1);
				}
				rs.close();

				pst.close();
				pst=con.prepareStatement(query);

				pst.setInt(1, fid);
				pst.setInt(2, i);
				pst.setString(3, "Disagree");
				rs=pst.executeQuery();
				if(rs.next()){
					a2=rs.getInt(1);
					System.out.println("a2: "+a2);
				}
				rs.close();
				pst.close();
				pst=con.prepareStatement(query);
				pst.setInt(1, fid);
				pst.setInt(2, i);
				pst.setString(3, "Neither Agree nor Disagree");
				rs=pst.executeQuery();
				if(rs.next()){
					a3=rs.getInt(1);
					System.out.println("a3: "+a3);
				}
				rs.close();
				pst.close();
				pst=con.prepareStatement(query);
				pst.setInt(1, fid);
				pst.setInt(2, i);
				pst.setString(3, "Agree");
				rs=pst.executeQuery();
				if(rs.next()){
					a4=rs.getInt(1);
					System.out.println("a4: "+a4);
				}
				rs.close();
				pst.close();
				pst=con.prepareStatement(query);
				pst.setInt(1, fid);
				pst.setInt(2, i);
				pst.setString(3, "Strongly Agree");
				rs=pst.executeQuery();
				if(rs.next()){
					a5=rs.getInt(1);
					System.out.println("a5: "+a5);
				}
				rs.close();
				pst.close();
				m.put(i, new FeedbackReportBean(fid, i, total, a1, a2, a3, a4, a5));
			}

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
    // 20 Que
	public ArrayList<FStudentCollegeBean> getStudentCollegeDetailReport(int fid) {
		Connection con=null;
		PreparedStatement pst=null;
		ResultSet rs=null;
		ArrayList<FStudentCollegeBean> list=new ArrayList<>();
		try {
			con = DBConnection.createConnection();
			pst=con.prepareStatement("select * from fstudentcollege where fid=?");

			pst.setInt(1, fid);
			rs=pst.executeQuery();
			while(rs.next()){
				list.add(new FStudentCollegeBean(rs.getInt("rid"), rs.getInt("fid"), rs.getString("q1"), rs.getString("q2"), rs.getString("q3"), rs.getString("q4"), rs.getString("q5"), rs.getString("q6"), rs.getString("q7"), rs.getString("q8"), rs.getString("q9"), rs.getString("q10"), rs.getString("q11"), rs.getString("q12"), rs.getString("q13"), rs.getString("q14"), rs.getString("q15"), rs.getString("q16"),rs.getString("subject"),rs.getString("suggestions"),rs.getString("q17"),rs.getString("q18"),rs.getString("q19"),rs.getString("q20"), rs.getString("flag"), rs.getString("age"), rs.getString("gender"),rs.getString("deg")));
				
			}
			rs.close();
			pst.close();
			con.close();
			return list;
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
		return list;
	}
// 11 Que
	public ArrayList<FStudentTeachingBean> getStudentTeachingDetailReport(int fid) {
		Connection con=null;
		PreparedStatement pst=null;
		ResultSet rs=null;
		ArrayList<FStudentTeachingBean> list=new ArrayList<>();
		try {
			con = DBConnection.createConnection();
			pst=con.prepareStatement("select * from fstudentteaching where fid=?");

			pst.setInt(1, fid);
			rs=pst.executeQuery();
			while(rs.next()){
				list.add(new FStudentTeachingBean(rs.getInt("rid"), rs.getInt("fid"), rs.getString("q1"), rs.getString("q2"), rs.getString("q3"), rs.getString("q4"), rs.getString("q5"), rs.getString("q6"), rs.getString("q7"), rs.getString("q8"), rs.getString("q9"), rs.getString("q10"), rs.getString("q11")));
			}
			rs.close();
			pst.close();
			con.close();
			return list;
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
		return list;
	}
    // 10 Que Parent College Dtl Report
	public ArrayList<FParentCollegeBean> getParentCollegeDetailReport(int fid) {
		Connection con=null;
		PreparedStatement pst=null;
		ResultSet rs=null;
		ArrayList<FParentCollegeBean> list=new ArrayList<>();
		try {
			con = DBConnection.createConnection();
			pst=con.prepareStatement("select * from fparentcollege where fid=?");

			pst.setInt(1, fid);
			rs=pst.executeQuery();
			while(rs.next()){
				list.add(new FParentCollegeBean(rs.getInt("rid"), rs.getInt("fid"), rs.getString("parentname"), rs.getString("contact"), rs.getString("wardname"), rs.getString("department"), rs.getString("academicyear"), rs.getString("course"), rs.getString("q1"), rs.getString("q2"), rs.getString("q3"), rs.getString("q4"), rs.getString("q5"), rs.getString("q6"), rs.getString("q7"), rs.getString("q8"), rs.getString("q9"), rs.getString("q10")));
			}
			rs.close();
			pst.close();
			con.close();
			return list;
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
		return list;
	}
	//By Sanket 13 Que and 5 texts
   // 10 que
	public ArrayList<FEmployerEmployeeBean> getEmployerEmployeeDetailReport(int fid) {
		Connection con=null;
		PreparedStatement pst=null;
		ResultSet rs=null;
		ArrayList<FEmployerEmployeeBean> list=new ArrayList<>();
		try {
			con = DBConnection.createConnection();
			pst=con.prepareStatement("select * from femployeremployee where fid=?");

			pst.setInt(1, fid);
			rs=pst.executeQuery();
			while(rs.next()){
				list.add(new FEmployerEmployeeBean(rs.getInt("rid"),  rs.getString("q1"), rs.getString("q2"), rs.getString("q3"), rs.getString("q4"), rs.getString("q5"), rs.getString("q6"), rs.getString("q7"), rs.getString("q8"), rs.getString("q9"), rs.getString("q10"), rs.getString("q11"), rs.getString("q12"), rs.getString("q13")));
			}
			System.out.println("List:--"+list);
			rs.close();
			pst.close();
			con.close();
			return list;
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
		return list;
	}
	
	public ArrayList<FEmployerEmployeeBean> getEmployerEmployeeDetails(int fid) {
		Connection con=null;
		PreparedStatement pst=null;
		ResultSet rs=null;
		ArrayList<FEmployerEmployeeBean> list=new ArrayList<>();
		try {
			con = DBConnection.createConnection();
			pst=con.prepareStatement("select fid,conm,addr,degs,eml,cont from femployeremployee where fid=?");

			pst.setInt(1, fid);
			rs=pst.executeQuery();
			while(rs.next()){
				FEmployerEmployeeBean bean=new FEmployerEmployeeBean();
				bean.setFid(rs.getInt(1));
				bean.setCompanyname(rs.getString(2));
				bean.setAddress(rs.getString(3));
				bean.setNamedesig(rs.getString(4));
				bean.setEml(rs.getString(5));
				bean.setContact(rs.getString(6));
				
				list.add(bean);
			}
			System.out.println("List:--"+list);
			rs.close();
			pst.close();
			con.close();
			return list;
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
		return list;
	}
    // 25 que Teacher College Detail Report
	public ArrayList<FTeacherCollegeBean> getTeacherCollegeDetailReport(int fid) {
		Connection con=null;
		PreparedStatement pst=null;
		ResultSet rs=null;
		ArrayList<FTeacherCollegeBean> list=new ArrayList<>();
		try {
			con = DBConnection.createConnection();
			pst=con.prepareStatement("select * from fteachercollege where fid=?");

			pst.setInt(1, fid);
			rs=pst.executeQuery();
			while(rs.next()){
				list.add(new FTeacherCollegeBean(rs.getInt("rid"), rs.getInt("fid"), rs.getString("q1"), rs.getString("q2"), rs.getString("q3"), rs.getString("q4"), rs.getString("q5"), rs.getString("q6"), rs.getString("q7"), rs.getString("q8"), rs.getString("q9"), rs.getString("q10"), rs.getString("q11"), rs.getString("q12"), rs.getString("q13"), rs.getString("q14"), rs.getString("q15"), rs.getString("q16"),rs.getString("q17"),rs.getString("q18"),rs.getString("q19"),rs.getString("q20"),rs.getString("q21"),rs.getString("q22"),rs.getString("q23"),rs.getString("q24"),rs.getString("q25")));
			}
			rs.close();
			pst.close();
			con.close();
			return list;
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
		return list;
	}



}
