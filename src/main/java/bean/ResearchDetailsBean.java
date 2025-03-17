package bean;

import java.util.ArrayList;

public class ResearchDetailsBean
{
	private int rdid;
	private int deptid;
	private String deptname;
	private String details;
    private ArrayList<ResearchImgUploadBean> imglist;
	
	public int getRdid() {
		return rdid;
	}
	public void setRdid(int rdid) {
		this.rdid = rdid;
	}
	public int getDeptid() {
		return deptid;
	}
	public void setDeptid(int deptid) {
		this.deptid = deptid;
	}
	public String getDeptname() {
		return deptname;
	}
	public void setDeptname(String deptname) {
		this.deptname = deptname;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public ArrayList<ResearchImgUploadBean> getImglist() {
		return imglist;
	}
	public void setImglist(ArrayList<ResearchImgUploadBean> imglist) {
		this.imglist = imglist;
	}
	
	
	

}
