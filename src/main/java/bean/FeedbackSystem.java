package bean;

public class FeedbackSystem {
	private boolean status;
	private boolean studentcollege;
	private boolean studentteaching;
	private boolean studentlibrary;
	private boolean studentalumini;
	private boolean studentsports;
	private boolean parentcollege;
	private boolean employeremployee;
	private boolean teachercollege;

	public FeedbackSystem(boolean status, boolean studentcollege, boolean studentteaching, boolean studentlibrary,
			boolean studentalumini, boolean studentsports, boolean parentcollege, boolean employeremployee,
			boolean teachercollege) {
		super();
		this.status = status;
		this.studentcollege = studentcollege;
		this.studentteaching = studentteaching;
		this.studentlibrary = studentlibrary;
		this.studentalumini = studentalumini;
		this.studentsports = studentsports;
		this.parentcollege = parentcollege;
		this.employeremployee = employeremployee;
		this.teachercollege = teachercollege;
	}
	
	public FeedbackSystem(boolean studentcollege, boolean studentteaching, boolean studentlibrary,
			boolean studentalumini, boolean studentsports, boolean parentcollege, boolean employeremployee,
			boolean teachercollege) {
		super();
		this.studentcollege = studentcollege;
		this.studentteaching = studentteaching;
		this.studentlibrary = studentlibrary;
		this.studentalumini = studentalumini;
		this.studentsports = studentsports;
		this.parentcollege = parentcollege;
		this.employeremployee = employeremployee;
		this.teachercollege = teachercollege;
	}



	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public boolean isStudentcollege() {
		return studentcollege;
	}

	public void setStudentcollege(boolean studentcollege) {
		this.studentcollege = studentcollege;
	}

	public boolean isStudentteaching() {
		return studentteaching;
	}

	public void setStudentteaching(boolean studentteaching) {
		this.studentteaching = studentteaching;
	}

	public boolean isStudentlibrary() {
		return studentlibrary;
	}

	public void setStudentlibrary(boolean studentlibrary) {
		this.studentlibrary = studentlibrary;
	}

	public boolean isStudentalumini() {
		return studentalumini;
	}

	public void setStudentalumini(boolean studentalumini) {
		this.studentalumini = studentalumini;
	}

	public boolean isStudentsports() {
		return studentsports;
	}

	public void setStudentsports(boolean studentsports) {
		this.studentsports = studentsports;
	}

	public boolean isParentcollege() {
		return parentcollege;
	}

	public void setParentcollege(boolean parentcollege) {
		this.parentcollege = parentcollege;
	}

	public boolean isEmployeremployee() {
		return employeremployee;
	}

	public void setEmployeremployee(boolean employeremployee) {
		this.employeremployee = employeremployee;
	}

	public boolean isTeachercollege() {
		return teachercollege;
	}

	public void setTeachercollege(boolean teachercollege) {
		this.teachercollege = teachercollege;
	}
}
