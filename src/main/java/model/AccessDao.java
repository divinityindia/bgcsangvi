package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.naming.NamingException;

import bean.AccessBean;
import com.DBConnection;

public class AccessDao {

	public int updateAccessRights(AccessBean bean) {
		int result=0;
		Connection con=null;
		try {
			con = DBConnection.createConnection();
			PreparedStatement pst=con.prepareStatement("replace into accessrights values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pst.setInt(1, bean.getUserid());
			pst.setBoolean(2, bean.isAddstudent());
			pst.setBoolean(3, bean.isSearchstudent());
			pst.setBoolean(4, bean.isUpdatestudent());
			pst.setBoolean(5, bean.isAddemployee());
			pst.setBoolean(6, bean.isSearchemployee());
			pst.setBoolean(7, bean.isUpdateemployee());
			pst.setBoolean(8, bean.isNews());
			pst.setBoolean(9, bean.isEvent());
			pst.setBoolean(10, bean.isRoutine());
			pst.setBoolean(11, bean.isGallery());
			pst.setBoolean(12, bean.isUser());
			pst.setBoolean(13, bean.isAccess());
			pst.setBoolean(14, bean.isCourse());
			pst.setBoolean(15, bean.isBranch());
			pst.setBoolean(16, bean.isClass1());
			pst.setBoolean(17, bean.isSection());
			pst.setBoolean(18, bean.isSubject());
			pst.setBoolean(19, bean.isMiscphoto());
			pst.setBoolean(20, bean.isNewspapergallery());
			pst.setBoolean(21, bean.isTandp());
			pst.setBoolean(22, bean.isQpaper());
			pst.setBoolean(23, bean.isBrochure());
			pst.setBoolean(24, bean.isHd());
			pst.setBoolean(25, bean.isExamattendance());
			pst.setBoolean(26, bean.isExam());
			pst.setBoolean(27, bean.isExamschedule());
			pst.setBoolean(28, bean.isMark());
			pst.setBoolean(29, bean.isLmember());
			pst.setBoolean(30, bean.isLbook());
			pst.setBoolean(31, bean.isLissue());
			pst.setBoolean(32, bean.isLfine());
			pst.setBoolean(33, bean.isMailsms());
			pst.setBoolean(34, bean.isExamc());
			pst.setBoolean(35, bean.isAluminintf());
			pst.setBoolean(36, bean.isAluminiregistration());
			pst.setBoolean(37, bean.isAluminiforum());
			pst.setBoolean(38, bean.isManddis());
			pst.setBoolean(39, bean.isStudentassociation());
			pst.setBoolean(40, bean.isResearchcons());
			pst.setBoolean(41, bean.isLabphotos());
			pst.setBoolean(42, bean.isAcademiccalender());
			pst.setBoolean(43, bean.isChangepassword());
			pst.setBoolean(44, bean.isResearch());
			pst.setBoolean(45, bean.isWelfare());
			pst.setBoolean(46, bean.isFeestructure());
			pst.setBoolean(47, bean.isResult());
			pst.setBoolean(48, bean.isTopper());

			pst.setBoolean(49, bean.isAssignment());
			pst.setBoolean(50, bean.isEligibilityno());
			pst.setBoolean(51, bean.isPlacement());
			pst.setBoolean(52, bean.isLibrary());
			pst.setBoolean(53, bean.isInfrastructure());
			pst.setBoolean(54, bean.isIQAC_Committee());
			pst.setBoolean(55, bean.isAQAR_Reports());
			pst.setBoolean(56, bean.isIQAC_Minutes_and_Action());
			pst.setBoolean(57, bean.isUGC_CPE());
			pst.setBoolean(58, bean.isDBT_STAR());
			pst.setBoolean(59, bean.isDST_FIST());
			pst.setBoolean(60, bean.isUGC_BSR());
			pst.setBoolean(61, bean.isUGC_Community_College());
			pst.setBoolean(62, bean.isDaily_Report());

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


	public AccessBean getAccessRights(int userid) {
		AccessBean bean=new AccessBean();
		Connection con = null;
        PreparedStatement pst= null;
        ResultSet rs=null;
        try{
            con = DBConnection.createConnection();
            pst=con.prepareStatement("SELECT * from accessrights where userid=?");
            pst.setInt(1, userid);
            rs=pst.executeQuery();
            if(rs.next())
            {
                bean.setUserid(rs.getInt(1));
                bean.setAddstudent(rs.getBoolean(2));
                bean.setSearchstudent(rs.getBoolean(3));
                bean.setUpdatestudent(rs.getBoolean(4));
                bean.setAddemployee(rs.getBoolean(5));
                bean.setSearchemployee(rs.getBoolean(6));
                bean.setUpdateemployee(rs.getBoolean(7));
                bean.setNews(rs.getBoolean(8));
                bean.setEvent(rs.getBoolean(9));
                bean.setRoutine(rs.getBoolean(10));
                bean.setGallery(rs.getBoolean(11));
                bean.setUser(rs.getBoolean(12));
                bean.setAccess(rs.getBoolean(13));
                bean.setCourse(rs.getBoolean(14));
                bean.setBranch(rs.getBoolean(15));
                bean.setClass1(rs.getBoolean(16));
                bean.setSection(rs.getBoolean(17));
                bean.setSubject(rs.getBoolean(18));
                bean.setMiscphoto(rs.getBoolean(19));
                bean.setNewspapergallery(rs.getBoolean(20));
                bean.setTandp(rs.getBoolean(21));
                bean.setQpaper(rs.getBoolean(22));
                bean.setBrochure(rs.getBoolean(23));
                bean.setHd(rs.getBoolean(24));
                bean.setExamattendance(rs.getBoolean(25));
                bean.setExam(rs.getBoolean(26));
                bean.setExamschedule(rs.getBoolean(27));
                bean.setMark(rs.getBoolean(28));
                bean.setLmember(rs.getBoolean(29));
                bean.setLbook(rs.getBoolean(30));
                bean.setLissue(rs.getBoolean(31));
                bean.setLfine(rs.getBoolean(32));
                bean.setMailsms(rs.getBoolean(33));
                bean.setExamc(rs.getBoolean(34));
                bean.setAluminintf(rs.getBoolean(35));
                bean.setAluminiregistration(rs.getBoolean(36));
                bean.setAluminiforum(rs.getBoolean(37));
                bean.setManddis(rs.getBoolean(38));
                bean.setStudentassociation(rs.getBoolean(39));
                bean.setResearchcons(rs.getBoolean(40));
                bean.setLabphotos(rs.getBoolean(41));
                bean.setAcademiccalender(rs.getBoolean(42));
                bean.setChangepassword(rs.getBoolean(43));
                bean.setResearch(rs.getBoolean(44));
                bean.setWelfare(rs.getBoolean(45));
                bean.setFeestructure(rs.getBoolean(46));
                bean.setResult(rs.getBoolean(47));
                bean.setTopper(rs.getBoolean(48));


                bean.setAssignment(rs.getBoolean(49));
                bean.setEligibilityno(rs.getBoolean(50));
                bean.setPlacement(rs.getBoolean(51));
                bean.setLibrary(rs.getBoolean(52));
                bean.setInfrastructure(rs.getBoolean(53));
                bean.setIQAC_Committee(rs.getBoolean(54));
                bean.setAQAR_Reports(rs.getBoolean(55));
                bean.setIQAC_Minutes_and_Action(rs.getBoolean(56));
                bean.setUGC_CPE(rs.getBoolean(57));
                bean.setDBT_STAR(rs.getBoolean(58));
                bean.setDST_FIST(rs.getBoolean(59));
                bean.setUGC_BSR(rs.getBoolean(60));
                bean.setUGC_Community_College(rs.getBoolean(61));
                bean.setDaily_Report(rs.getBoolean(62));
            }
            pst.close();
            rs.close();
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
        return bean;
	}

//	public AccessBean[] getAccessRights(int userid,int cuserId) {
//		AccessBean bean=new AccessBean();
//		AccessBean cbean=new AccessBean();
//		AccessBean [] ab=new AccessBean[2];
//		Connection con = null;
//        PreparedStatement pst= null;
//        ResultSet rs=null;
//        try{
//            con = DBConnection.createconnection();
//            pst=con.prepareStatement("SELECT * from accessrights where userid=?");
//            pst.setInt(1, cuserId);
//            rs=pst.executeQuery();
//            if(rs.next())
//            {
//
//                cbean.setAccessid(rs.getInt(1));
//                cbean.setUserid(rs.getInt(2));
//                cbean.setAddstudent(rs.getBoolean(3));
//                cbean.setSearchstudent(rs.getBoolean(4));
//                cbean.setUpdatestudent(rs.getBoolean(5));
//                cbean.setAddemployee(rs.getBoolean(6));
//                cbean.setSearchemployee(rs.getBoolean(7));
//                cbean.setUpdateemployee(rs.getBoolean(8));
//                cbean.setNews(rs.getBoolean(9));
//                cbean.setEvent(rs.getBoolean(10));
//                cbean.setRoutine(rs.getBoolean(11));
//                cbean.setGallery(rs.getBoolean(12));
//                cbean.setUser(rs.getBoolean(13));
//                cbean.setAccess(rs.getBoolean(14));
//                cbean.setCourse(rs.getBoolean(15));
//                cbean.setBranch(rs.getBoolean(16));
//                cbean.setClass1(rs.getBoolean(17));
//                cbean.setSection(rs.getBoolean(18));
//                cbean.setSubject(rs.getBoolean(19));
//                cbean.setMiscphoto(rs.getBoolean(20));
//                cbean.setNewspapergallery(rs.getBoolean(21));
//                cbean.setTandp(rs.getBoolean(22));
//                cbean.setQpaper(rs.getBoolean(23));
//                cbean.setBrochure(rs.getBoolean(24));
//                cbean.setHd(rs.getBoolean(25));
//                cbean.setExamattendance(rs.getBoolean(26));
//                cbean.setExam(rs.getBoolean(27));
//                cbean.setExamschedule(rs.getBoolean(28));
//                cbean.setMark(rs.getBoolean(29));
//                cbean.setLmember(rs.getBoolean(30));
//                cbean.setLbook(rs.getBoolean(31));
//                cbean.setLissue(rs.getBoolean(32));
//                cbean.setLfine(rs.getBoolean(33));
//                cbean.setMailsms(rs.getBoolean(34));
//                cbean.setExamc(rs.getBoolean(35));
//                cbean.setAluminintf(rs.getBoolean(36));
//                cbean.setAluminiregistration(rs.getBoolean(37));
//                cbean.setAluminiforum(rs.getBoolean(38));
//                cbean.setManddis(rs.getBoolean(39));
//                cbean.setStudentassociation(rs.getBoolean(40));
//                cbean.setResearchcons(rs.getBoolean(41));
//                cbean.setLabphotos(rs.getBoolean(42));
//                cbean.setAcademiccalender(rs.getBoolean(43));
//                cbean.setChangepassword(rs.getBoolean(44));
//                cbean.setResearch(rs.getBoolean(45));
//                cbean.setWelfare(rs.getBoolean(46));
//                cbean.setFeestructure(rs.getBoolean(47));
//                cbean.setResult(rs.getBoolean(48));
//                cbean.setTopper(rs.getBoolean(49));
//                ab[0]=cbean;
//            }
//
//            pst=con.prepareStatement("SELECT * from accessrights where userid=?");
//            pst.setInt(1, userid);
//            rs=pst.executeQuery();
//            if(rs.next())
//            {
//
//            	bean.setAccessid(rs.getInt(1));
//                bean.setUserid(rs.getInt(2));
//                bean.setAddstudent(rs.getBoolean(3));
//                bean.setSearchstudent(rs.getBoolean(4));
//                bean.setUpdatestudent(rs.getBoolean(5));
//                bean.setAddemployee(rs.getBoolean(6));
//                bean.setSearchemployee(rs.getBoolean(7));
//                bean.setUpdateemployee(rs.getBoolean(8));
//                bean.setNews(rs.getBoolean(9));
//                bean.setEvent(rs.getBoolean(10));
//                bean.setRoutine(rs.getBoolean(11));
//                bean.setGallery(rs.getBoolean(12));
//                bean.setUser(rs.getBoolean(13));
//                bean.setAccess(rs.getBoolean(14));
//                bean.setCourse(rs.getBoolean(15));
//                bean.setBranch(rs.getBoolean(16));
//                bean.setClass1(rs.getBoolean(17));
//                bean.setSection(rs.getBoolean(18));
//                bean.setSubject(rs.getBoolean(19));
//                bean.setMiscphoto(rs.getBoolean(20));
//                bean.setNewspapergallery(rs.getBoolean(21));
//                bean.setTandp(rs.getBoolean(22));
//                bean.setQpaper(rs.getBoolean(23));
//                bean.setBrochure(rs.getBoolean(24));
//                bean.setHd(rs.getBoolean(25));
//                bean.setExamattendance(rs.getBoolean(26));
//                bean.setExam(rs.getBoolean(27));
//                bean.setExamschedule(rs.getBoolean(28));
//                bean.setMark(rs.getBoolean(29));
//                bean.setLmember(rs.getBoolean(30));
//                bean.setLbook(rs.getBoolean(31));
//                bean.setLissue(rs.getBoolean(32));
//                bean.setLfine(rs.getBoolean(33));
//                bean.setMailsms(rs.getBoolean(34));
//                bean.setExamc(rs.getBoolean(35));
//                bean.setAluminintf(rs.getBoolean(36));
//                bean.setAluminiregistration(rs.getBoolean(37));
//                bean.setAluminiforum(rs.getBoolean(38));
//                bean.setManddis(rs.getBoolean(39));
//                bean.setStudentassociation(rs.getBoolean(40));
//                bean.setResearchcons(rs.getBoolean(41));
//                bean.setLabphotos(rs.getBoolean(42));
//                bean.setAcademiccalender(rs.getBoolean(43));
//                bean.setChangepassword(rs.getBoolean(44));
//                bean.setResearch(rs.getBoolean(45));
//                bean.setWelfare(rs.getBoolean(46));
//                bean.setFeestructure(rs.getBoolean(47));
//                bean.setResult(rs.getBoolean(48));
//                bean.setTopper(rs.getBoolean(49));
//                ab[1]=bean;
//            }
//            pst.close();
//            rs.close();
//            con.close();
//            return ab;
//        }
//        catch(Exception e)
//        {
//        	e.printStackTrace();
//        }
//        finally {
//        	try{
//                con.close();
//               }catch(Exception e1){
//            	   e1.printStackTrace();
//               }
//		}
//        return ab;
//	}
}