package model;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;

import javax.naming.NamingException;

import com.DBConnection;
import com.dateParse;

import bean.NewsBean;
import bean.SubGalleryBean;
import net.sf.jasperreports.engine.ReturnValue;

public class GalleryDao {

	public int addCaption(String ID, String caption) throws NamingException, SQLException
    {
        Connection con = null;
        PreparedStatement stmt3=null;
        con = DBConnection.createConnection();

        con.setAutoCommit(false);
        try
        {
            int id=0;


            String sql1 = "replace into gallerymaster values"
                + "('"+ID+"','"+caption+"')";
            PreparedStatement stmt1 = con.prepareStatement(sql1,Statement.RETURN_GENERATED_KEYS);
            stmt1.executeUpdate();
            ResultSet rs=stmt1.getGeneratedKeys();
            while (rs.next())
            {
                id=rs.getInt(1);
            }
            rs.close();
            System.out.println("id= "+id);

            stmt1.close();
            con.commit();
            con.close();
            return id;
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

	public LinkedHashMap<String, String> getAllGalleryMasters() {

		LinkedHashMap<String, String> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
       try{
            String sql="SELECT * from gallerymaster order by ID";
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
                m.put(rs.getString(1), rs.getString(2));
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

	public int deleteGalleryMaster(String[] IDs) {
		PreparedStatement pst=null;
		int result=0;
		Connection con=null;
		try {

			con = DBConnection.createConnection();

			pst=con.prepareStatement("delete from gallerymaster where ID=?");

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


	public int addSubGallery(SubGalleryBean bean) throws NamingException, SQLException
    {
        Connection con = null;
        PreparedStatement stmt3=null;
        con = DBConnection.createConnection();

        con.setAutoCommit(false);
        try
        {
            int id=0;


            String sql1 = "replace into subgallery values"
                + "('"+bean.getSubgId()+"','"+bean.getGalleryId()+"','"+bean.getCaption()+"','"+bean.getDetails()+"','"+bean.getVenue()+"','"+dateParse.getMysqlDate(bean.getDate())+"')";
            PreparedStatement stmt1 = con.prepareStatement(sql1,Statement.RETURN_GENERATED_KEYS);
            stmt1.executeUpdate();
            ResultSet rs=stmt1.getGeneratedKeys();
            while (rs.next())
            {
                id=rs.getInt(1);
            }
            rs.close();
            System.out.println("id= "+id);

            stmt1.close();
            con.commit();
            con.close();
            return id;
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

	public LinkedHashMap<String, String[]> getAllSubGalleries() {

		LinkedHashMap<String, String[]> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        String[] arr=null;
       try{
            String sql="SELECT sg.*,g.caption gCap from subgallery sg,gallerymaster g where sg.galleryid=g.ID";
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
            	arr=new String[6];
            	arr[0]=rs.getString("galleryid");
            	arr[1]=rs.getString("gCap");
            	arr[2]=rs.getString("caption");
            	arr[3]=rs.getString("details");
            	arr[4]=rs.getString("venue");
            	arr[5]=dateParse.getLocalDate(rs.getString("date"));
                m.put(rs.getString("ID"), arr);
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

	public int deleteSubGallery(String[] IDs) {
		PreparedStatement pst=null;
		int result=0;
		Connection con=null;
		try {

			con = DBConnection.createConnection();

			pst=con.prepareStatement("delete from subgallery where ID=?");

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

	public LinkedHashMap<String, String[]> getSubGalleries(String GalID) {

		LinkedHashMap<String, String[]> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        String[] arr=null;
       try{
            String sql="SELECT sg.*,g.caption gCap from subgallery sg,gallerymaster g where sg.galleryid=g.ID and g.ID='"+GalID+"'";
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
            	arr=new String[6];
            	arr[0]=rs.getString("galleryid");
            	arr[1]=rs.getString("gCap");
            	arr[2]=rs.getString("caption");
            	arr[3]=rs.getString("details");
            	arr[4]=rs.getString("venue");
            	arr[5]=dateParse.getLocalDate(rs.getString("date"));
                m.put(rs.getString("ID"), arr);
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

	public int addGallPics(String galID,String subGalID,ArrayList<String> pics,ArrayList<InputStream>isps){
		Connection con=null;
		try{
			int retVal=0;
			con=DBConnection.createConnection();
			PreparedStatement pst=null;
			String sql1="insert into gallery_pics values(?,?,?,?)";
			pst=con.prepareStatement(sql1);
			for(int i=0;i<pics.size();i++){

				pst.setString(1, "0");
				pst.setString(2, galID);
				pst.setString(3, subGalID);
				pst.setString(4, pics.get(i));
				pst.addBatch();
			}

			pst.executeBatch();
			pst.close();
			con.close();

			return 1;
		}
		catch(Exception e)
		{
			try{
				con.close();
			}
			catch(Exception e1){}
			e.printStackTrace();
			return 0;
		}
	}

	public LinkedHashMap<String, String> getGalleryPics(String GalID, String SubGalID) {

		LinkedHashMap<String, String> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        String[] arr=null;
       try{
            String sql="select * from gallery_pics where galID='"+GalID+"' and subgalID='"+SubGalID+"' ";
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
                m.put(rs.getString("ID"), rs.getString("pics"));
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

	public ArrayList<String[]> deleteGalleryPics(String[] IDs) {
		PreparedStatement pst=null;
		ResultSet rs=null;
		String[] arr=null;
		int result=0;
		Connection con=null;
		ArrayList<String[]> hm=new ArrayList<String[]>();
		try {

			con = DBConnection.createConnection();


			for(int i=0;i<IDs.length;i++){

				pst=con.prepareStatement("select * from gallery_pics where ID=?;");
				pst.setString(1, IDs[i]);
				rs=pst.executeQuery();
				while(rs.next()){
					arr=new String[3];
					arr[0]=rs.getString(2);
					arr[1]=rs.getString(3);
					arr[2]=rs.getString(4);
					hm.add( arr);
				}
			}
			rs.close();
			pst.close();
			rs.close();


			pst=con.prepareStatement("delete from gallery_pics where ID=?");

			for(int i=0;i<IDs.length;i++){
				pst.setString(1, IDs[i]);
				pst.addBatch();
			}

			pst.executeBatch();
			pst.close();



			con.close();
			return hm;

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

		return null;
	}

	public LinkedHashMap<String, String[]> getGalleries_public() {

		LinkedHashMap<String, String[]> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        String[] arr=null;
       try{
            String sql="select gm.*, gp.subgalID,gp.pics from gallerymaster gm, gallery_pics gp where gm.ID=gp.galID group by gm.ID";
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
            	arr=new String[3];
            	arr[0]=rs.getString("caption");
            	arr[1]=rs.getString("subgalID");
            	arr[2]=rs.getString("pics");
                m.put(rs.getString("ID"), arr);
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

	public LinkedHashMap<String, String[]> getSubGalleries_public(String galID) {

		LinkedHashMap<String, String[]> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        String[] arr=null;
       try{
            String sql="select sg.ID,sg.caption, gp.galID,gp.subgalID,gp.pics from subgallery sg, gallery_pics gp where sg.ID=gp.subgalID and sg.galleryid='"+galID+"' group by sg.ID";
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
            	arr=new String[4];
            	arr[0]=rs.getString("caption");
            	arr[1]=rs.getString("galID");
            	arr[2]=rs.getString("subgalID");
            	arr[3]=rs.getString("pics");
                m.put(rs.getString("ID"), arr);
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

	public LinkedHashMap<String, String[]> getImgGalleries_public(String subgalID) {

		LinkedHashMap<String, String[]> m=new LinkedHashMap<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        String[] arr=null;
       try{
            String sql="select * from gallery_pics where subgalID='"+subgalID+"'";
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
            	arr=new String[3];
            	arr[0]=rs.getString("galID");
            	arr[1]=rs.getString("subgalID");
            	arr[2]=rs.getString("pics");
                m.put(rs.getString("ID"), arr);
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


	public SubGalleryBean getSubGalerryInfo(String subgalID) {

		SubGalleryBean bean =new SubGalleryBean();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
       try{
            String sql="select * from subgallery where ID='"+subgalID+"'";
            con = DBConnection.createConnection();
            statement = con.createStatement();
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
            	bean.setSubgId(Integer.parseInt(subgalID));
            	bean.setGalleryId(rs.getInt("galleryid"));
            	bean.setCaption(rs.getString("caption"));
            	bean.setDetails(rs.getString("details"));
            	bean.setVenue(rs.getString("venue"));
            	bean.setDate(dateParse.getLocalDate(rs.getString("date")));
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

}
