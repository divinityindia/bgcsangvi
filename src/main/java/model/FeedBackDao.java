package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.NamingException;

import com.DBConnection;
import com.dateParse;

import bean.EventBean;
import bean.FB_employer_employer_bean;
import bean.FB_parants_college_bean;
import bean.FB_student_alumni_bean;
import bean.FB_student_college_bean;
import bean.FB_student_teaching_bean;
import bean.FB_teacher_college_bean;
import contriller.Home.FB_student_college;

public class FeedBackDao {

	public String addFB_student_college(FB_student_college_bean bean) throws NamingException, SQLException
    {
        Connection con = null;
        PreparedStatement stmt3=null;
        con = DBConnection.createConnection();

        con.setAutoCommit(false);
        try
        {
            int ID=0;


            String sql1 = "insert into fb_student_college values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement stmt1 = con.prepareStatement(sql1,Statement.RETURN_GENERATED_KEYS);
            stmt1.setString(1, "0");
            stmt1.setString(2, bean.getR1());
            stmt1.setString(3, bean.getR2());
            stmt1.setString(4, bean.getR3());
            stmt1.setString(5, bean.getR4());
            stmt1.setString(6, bean.getR5());
            stmt1.setString(7, bean.getR6());
            stmt1.setString(8, bean.getR7());
            stmt1.setString(9, bean.getR8());
            stmt1.setString(10, bean.getR9());
            stmt1.setString(11, bean.getR10());
            stmt1.setString(12, bean.getR11());
            stmt1.setString(13, bean.getR12());
            stmt1.setString(14, bean.getR13());
            stmt1.setString(15, bean.getR14());
            stmt1.setString(16, bean.getR15());
            stmt1.setString(17, bean.getR16());
            stmt1.setString(18, bean.getCourse());
            stmt1.setString(19, bean.getAcademic_year());
            stmt1.setString(20, bean.getSuggestions());

            stmt1.executeUpdate();
            ResultSet rs=stmt1.getGeneratedKeys();
            while (rs.next())
            {
                ID=rs.getInt(1);
            }
            rs.close();
            System.out.println("ID= "+ID);

            stmt1.close();
            con.commit();
            con.close();
            return "SUCCESS";
        }
        catch(Exception e)
        {
        	con.rollback();
             try{ con.close();}catch(Exception e1){}
             System.out.println(e);
             e.printStackTrace();
            return "ERROR";
        }
    }


	public String addFB_student_teaching(FB_student_teaching_bean bean) throws NamingException, SQLException
    {
        Connection con = null;
        PreparedStatement stmt3=null;
        con = DBConnection.createConnection();

        con.setAutoCommit(false);
        try
        {
            int ID=0;


            String sql1 = "insert into fb_student_teaching values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement stmt1 = con.prepareStatement(sql1,Statement.RETURN_GENERATED_KEYS);
            stmt1.setString(1, "0");
            stmt1.setString(2, bean.getR1());
            stmt1.setString(3, bean.getR2());
            stmt1.setString(4, bean.getR3());
            stmt1.setString(5, bean.getR4());
            stmt1.setString(6, bean.getR5());
            stmt1.setString(7, bean.getR6());
            stmt1.setString(8, bean.getR7());
            stmt1.setString(9, bean.getR8());
            stmt1.setString(10, bean.getR9());
            stmt1.setString(11, bean.getR10());
            stmt1.setString(12, bean.getR11());
            stmt1.setString(13, bean.getR12());
            stmt1.setString(14, bean.getCourse());
            stmt1.setString(15, bean.getAcademic_year());
            stmt1.setString(16, bean.getSuggestions());

            stmt1.executeUpdate();
            ResultSet rs=stmt1.getGeneratedKeys();
            while (rs.next())
            {
                ID=rs.getInt(1);
            }
            rs.close();
            System.out.println("ID= "+ID);

            stmt1.close();
            con.commit();
            con.close();
            return "SUCCESS";
        }
        catch(Exception e)
        {
        	con.rollback();
             try{ con.close();}catch(Exception e1){}
             System.out.println(e);
             e.printStackTrace();
            return "ERROR";
        }
    }


	public String addFB_student_alumni(FB_student_alumni_bean bean) throws NamingException, SQLException
    {
        Connection con = null;
        PreparedStatement stmt3=null;
        con = DBConnection.createConnection();

        con.setAutoCommit(false);
        try
        {
            int ID=0;


            String sql1 = "insert into fb_student_alumni values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement stmt1 = con.prepareStatement(sql1,Statement.RETURN_GENERATED_KEYS);
            stmt1.setString(1, "0");
            stmt1.setString(2, bean.getT1());
            stmt1.setString(3, bean.getT2());
            stmt1.setString(4, bean.getT3());
            stmt1.setString(5, bean.getT4());
            stmt1.setString(6, bean.getT5());
            stmt1.setString(7, bean.getT6());
            stmt1.setString(8, bean.getT7());
            stmt1.setString(9, bean.getR1());
            stmt1.setString(10, bean.getR2());
            stmt1.setString(11, bean.getR3());
            stmt1.setString(12, bean.getR4());
            stmt1.setString(13, bean.getR5());
            stmt1.setString(14, bean.getR6());
            stmt1.setString(15, bean.getR7());
            stmt1.setString(16, bean.getR8());
            stmt1.setString(17, bean.getR9());
            stmt1.setString(18, bean.getR10());
            stmt1.setString(19, bean.getR11());
            stmt1.setString(20, bean.getR12());
            stmt1.setString(21, bean.getR13());
            stmt1.setString(22, bean.getR14());
            stmt1.setString(23, bean.getT8());
            stmt1.setString(24, bean.getT9());
            stmt1.setString(25, bean.getT10());
            stmt1.setString(26, bean.getT11());


            stmt1.executeUpdate();
            ResultSet rs=stmt1.getGeneratedKeys();
            while (rs.next())
            {
                ID=rs.getInt(1);
            }
            rs.close();
            System.out.println("ID= "+ID);

            stmt1.close();
            con.commit();
            con.close();
            return "SUCCESS";
        }
        catch(Exception e)
        {
        	con.rollback();
             try{ con.close();}catch(Exception e1){}
             System.out.println(e);
             e.printStackTrace();
            return "ERROR";
        }
    }


	public String addFB_parants_college(FB_parants_college_bean bean) throws NamingException, SQLException
    {
        Connection con = null;
        PreparedStatement stmt3=null;
        con = DBConnection.createConnection();

        con.setAutoCommit(false);
        try
        {
            int ID=0;


            String sql1 = "insert into fb_parants_college values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement stmt1 = con.prepareStatement(sql1,Statement.RETURN_GENERATED_KEYS);
            stmt1.setString(1, "0");
            stmt1.setString(2, bean.getT1());
            stmt1.setString(3, bean.getT2());
            stmt1.setString(4, bean.getT3());
            stmt1.setString(5, bean.getT4());
            stmt1.setString(6, bean.getT5());
            stmt1.setString(7, bean.getT6());

            stmt1.setString(8, bean.getR1());
            stmt1.setString(9, bean.getR2());
            stmt1.setString(10, bean.getR3());
            stmt1.setString(11, bean.getR4());
            stmt1.setString(12, bean.getR5());
            stmt1.setString(13, bean.getR6());
            stmt1.setString(14, bean.getR7());
            stmt1.setString(15, bean.getR8());
            stmt1.setString(16, bean.getR9());
            stmt1.setString(17, bean.getR10());
            stmt1.setString(18, bean.getR11());
            stmt1.setString(19, bean.getR12());
            stmt1.setString(20, bean.getR13());
            stmt1.setString(21, bean.getR14());
            stmt1.setString(22, bean.getR15());

            stmt1.setString(23, bean.getT7());


            stmt1.executeUpdate();
            ResultSet rs=stmt1.getGeneratedKeys();
            while (rs.next())
            {
                ID=rs.getInt(1);
            }
            rs.close();
            System.out.println("ID= "+ID);

            stmt1.close();
            con.commit();
            con.close();
            return "SUCCESS";
        }
        catch(Exception e)
        {
        	con.rollback();
             try{ con.close();}catch(Exception e1){}
             System.out.println(e);
             e.printStackTrace();
            return "ERROR";
        }
    }


	public String addFB_employer_employer(FB_employer_employer_bean bean) throws NamingException, SQLException
    {
        Connection con = null;
        PreparedStatement stmt3=null;
        con = DBConnection.createConnection();

        con.setAutoCommit(false);
        try
        {
            int ID=0;


            String sql1 = "insert into fb_employer_employer values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement stmt1 = con.prepareStatement(sql1,Statement.RETURN_GENERATED_KEYS);
            stmt1.setString(1, "0");
            stmt1.setString(2, bean.getT1());
            stmt1.setString(3, bean.getT2());
            stmt1.setString(4, bean.getT3());
            stmt1.setString(5, bean.getT4());

            stmt1.setString(6, bean.getR1());
            stmt1.setString(7, bean.getR2());
            stmt1.setString(8, bean.getR3());
            stmt1.setString(9, bean.getR4());
            stmt1.setString(10, bean.getR5());
            stmt1.setString(11, bean.getR6());
            stmt1.setString(12, bean.getR7());
            stmt1.setString(13, bean.getR8());
            stmt1.setString(14, bean.getR9());
            stmt1.setString(15, bean.getR10());
            stmt1.setString(16, bean.getR11());
            stmt1.setString(17, bean.getR12());
            stmt1.setString(18, bean.getR13());

            stmt1.setString(19, bean.getT5());


            stmt1.executeUpdate();
            ResultSet rs=stmt1.getGeneratedKeys();
            while (rs.next())
            {
                ID=rs.getInt(1);
            }
            rs.close();
            System.out.println("ID= "+ID);

            stmt1.close();
            con.commit();
            con.close();
            return "SUCCESS";
        }
        catch(Exception e)
        {
        	con.rollback();
             try{ con.close();}catch(Exception e1){}
             System.out.println(e);
             e.printStackTrace();
            return "ERROR";
        }
    }


	public String addFB_teacher_college(FB_teacher_college_bean bean) throws NamingException, SQLException
    {
        Connection con = null;
        PreparedStatement stmt3=null;
        con = DBConnection.createConnection();

        con.setAutoCommit(false);
        try
        {
            int ID=0;


            String sql1 = "insert into fb_teacher_college values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement stmt1 = con.prepareStatement(sql1,Statement.RETURN_GENERATED_KEYS);
            stmt1.setString(1, "0");
            stmt1.setString(2, bean.getR1());
            stmt1.setString(3, bean.getR2());
            stmt1.setString(4, bean.getR3());
            stmt1.setString(5, bean.getR4());
            stmt1.setString(6, bean.getR5());
            stmt1.setString(7, bean.getR6());
            stmt1.setString(8, bean.getR7());
            stmt1.setString(9, bean.getR8());
            stmt1.setString(10, bean.getR9());
            stmt1.setString(11, bean.getR10());
            stmt1.setString(12, bean.getR11());
            stmt1.setString(13, bean.getR12());
            stmt1.setString(14, bean.getR13());
            stmt1.setString(15, bean.getR14());
            stmt1.setString(16, bean.getR15());
            stmt1.setString(17, bean.getT1());

            stmt1.executeUpdate();
            ResultSet rs=stmt1.getGeneratedKeys();
            while (rs.next())
            {
                ID=rs.getInt(1);
            }
            rs.close();
            System.out.println("ID= "+ID);

            stmt1.close();
            con.commit();
            con.close();
            return "SUCCESS";
        }
        catch(Exception e)
        {
        	con.rollback();
             try{ con.close();}catch(Exception e1){}
             System.out.println(e);
             e.printStackTrace();
            return "ERROR";
        }
    }

}
