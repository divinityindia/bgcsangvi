package bean;

public class FEmployerEmployeeBean {
	private int rid;
	private int fid;
	
	private String companyname;
	private String address;
	private String contact;
	private String namedesig;
	private String eml;
	
	private String q1;
	private String q2;
	private String q3;
	private String q4;
	private String q5;
	private String q6;
	private String q7;
	private String q8;
	private String q9;
	private String q10;
	private String q11;
	private String q12;
	private String q13;
	
	private String suggestions;
	
	public FEmployerEmployeeBean() {
		// TODO Auto-generated constructor stub
	}


	public FEmployerEmployeeBean(int rid, int fid, String companyname, String address, String contact, String namedesig,
			String q1, String q2, String q3, String q4, String q5, String q6, String q7, String q8, String q9,
			String q10, String q11, String q12, String q13, String suggestions) {
		super();
		this.rid = rid;
		this.fid = fid;
		this.companyname = companyname;
		this.address = address;
		this.contact = contact;
		this.namedesig = namedesig;
		this.q1 = q1;
		this.q2 = q2;
		this.q3 = q3;
		this.q4 = q4;
		this.q5 = q5;
		this.q6 = q6;
		this.q7 = q7;
		this.q8 = q8;
		this.q9 = q9;
		this.q10 = q10;
		this.q11 = q11;
		this.q12 = q12;
		this.q13 = q13;
		this.suggestions = suggestions;
	}


	public FEmployerEmployeeBean(int fid, String companyname, String address, String contact, String namedesig,
			String q1, String q2, String q3, String q4, String q5, String q6, String q7, String q8, String q9,
			String q10, String q11, String q12, String q13, String suggestions) {
		super();
		this.fid = fid;
		this.companyname = companyname;
		this.address = address;
		this.contact = contact;
		this.namedesig = namedesig;
		this.q1 = q1;
		this.q2 = q2;
		this.q3 = q3;
		this.q4 = q4;
		this.q5 = q5;
		this.q6 = q6;
		this.q7 = q7;
		this.q8 = q8;
		this.q9 = q9;
		this.q10 = q10;
		this.q11 = q11;
		this.q12 = q12;
		this.q13 = q13;
		this.suggestions = suggestions;
	}
	
	public FEmployerEmployeeBean(int fid, 
			String q1, String q2, String q3, String q4, String q5, String q6, String q7, String q8, String q9,
			String q10, String q11, String q12, String q13) {
		super();
		this.fid = fid;
		this.q1 = q1;
		this.q2 = q2;
		this.q3 = q3;
		this.q4 = q4;
		this.q5 = q5;
		this.q6 = q6;
		this.q7 = q7;
		this.q8 = q8;
		this.q9 = q9;
		this.q10 = q10;
		this.q11 = q11;
		this.q12 = q12;
		this.q13 = q13;
	}

	public FEmployerEmployeeBean(int fid, 
			String q1, String q2, String q3, String q4, String q5, String q6, String q7, String q8, String q9,
			String q10) {
		super();
		this.fid = fid;
		this.q1 = q1;
		this.q2 = q2;
		this.q3 = q3;
		this.q4 = q4;
		this.q5 = q5;
		this.q6 = q6;
		this.q7 = q7;
		this.q8 = q8;
		this.q9 = q9;
		this.q10 = q10;
	}



	public int getRid() {
		return rid;
	}

	public void setRid(int rid) {
		this.rid = rid;
	}

	public int getFid() {
		return fid;
	}

	public void setFid(int fid) {
		this.fid = fid;
	}

	public String getCompanyname() {
		return companyname;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getNamedesig() {
		return namedesig;
	}

	public void setNamedesig(String namedesig) {
		this.namedesig = namedesig;
	}

	public String getQ1() {
		return q1;
	}

	public void setQ1(String q1) {
		this.q1 = q1;
	}

	public String getQ2() {
		return q2;
	}

	public void setQ2(String q2) {
		this.q2 = q2;
	}

	public String getQ3() {
		return q3;
	}

	public void setQ3(String q3) {
		this.q3 = q3;
	}

	public String getQ4() {
		return q4;
	}

	public void setQ4(String q4) {
		this.q4 = q4;
	}

	public String getQ5() {
		return q5;
	}

	public void setQ5(String q5) {
		this.q5 = q5;
	}

	public String getQ6() {
		return q6;
	}

	public void setQ6(String q6) {
		this.q6 = q6;
	}

	public String getQ7() {
		return q7;
	}

	public void setQ7(String q7) {
		this.q7 = q7;
	}

	public String getQ8() {
		return q8;
	}

	public void setQ8(String q8) {
		this.q8 = q8;
	}

	public String getQ9() {
		return q9;
	}

	public void setQ9(String q9) {
		this.q9 = q9;
	}

	public String getQ10() {
		return q10;
	}

	public void setQ10(String q10) {
		this.q10 = q10;
	}

	public String getQ11() {
		return q11;
	}

	public void setQ11(String q11) {
		this.q11 = q11;
	}

	public String getQ12() {
		return q12;
	}

	public void setQ12(String q12) {
		this.q12 = q12;
	}

	public String getQ13() {
		return q13;
	}

	public void setQ13(String q13) {
		this.q13 = q13;
	}

	public String getSuggestions() {
		return suggestions;
	}

	public void setSuggestions(String suggestions) {
		this.suggestions = suggestions;
	}


	public String getEml() {
		return eml;
	}


	public void setEml(String eml) {
		this.eml = eml;
	}
	
	
}
