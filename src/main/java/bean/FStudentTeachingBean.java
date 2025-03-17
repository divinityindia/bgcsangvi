package bean;

public class FStudentTeachingBean {
	private int rid;
	private int fid;
	
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
	private String course;
	private String academicyear;
	private String suggestions;
	
	public FStudentTeachingBean() {
		// TODO Auto-generated constructor stub
	}

	public FStudentTeachingBean(int fid, String q1, String q2, String q3, String q4, String q5, String q6, String q7,
			String q8, String q9, String q10, String q11, String q12, String course, String academicyear, String suggestions) {
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
		this.course = course;
		this.academicyear = academicyear;
		this.suggestions = suggestions;
	}
	public FStudentTeachingBean(int fid, String q1, String q2, String q3, String q4, String q5, String q6, String q7,
			String q8, String q9, String q10, String q11) {
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
	}
	public FStudentTeachingBean(int rid, int fid, String q1, String q2, String q3, String q4, String q5, String q6,
			String q7, String q8, String q9, String q10, String q11) {
		super();
		this.rid = rid;
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
	}
	
	public FStudentTeachingBean(int rid, int fid, String q1, String q2, String q3, String q4, String q5, String q6,
			String q7, String q8, String q9, String q10, String q11, String q12, String course, String academicyear, String suggestions) {
		super();
		this.rid = rid;
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
		this.course = course;
		this.academicyear = academicyear;
		this.suggestions = suggestions;
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

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public String getAcademicyear() {
		return academicyear;
	}

	public void setAcademicyear(String academicyear) {
		this.academicyear = academicyear;
	}

	public String getSuggestions() {
		return suggestions;
	}

	public void setSuggestions(String suggestions) {
		this.suggestions = suggestions;
	}
	
}
