package bean;

public class FeedbackReportBean {
	private int fid;
	private int q;
	private int total;
	private int a1;
	private int a2;
	private int a3;
	private int a4;
	private int a5;
	
	public FeedbackReportBean() {
		// TODO Auto-generated constructor stub
	}

	public FeedbackReportBean(int fid, int q, int total, int a1, int a2, int a3, int a4, int a5) {
		super();
		this.fid = fid;
		this.q = q;
		this.total = total;
		this.a1 = a1;
		this.a2 = a2;
		this.a3 = a3;
		this.a4 = a4;
		this.a5 = a5;
	}


	public int getFid() {
		return fid;
	}

	public void setFid(int fid) {
		this.fid = fid;
	}

	public int getQ() {
		return q;
	}

	public void setQ(int q) {
		this.q = q;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getA1() {
		return a1;
	}

	public void setA1(int a1) {
		this.a1 = a1;
	}

	public int getA2() {
		return a2;
	}

	public void setA2(int a2) {
		this.a2 = a2;
	}

	public int getA3() {
		return a3;
	}

	public void setA3(int a3) {
		this.a3 = a3;
	}

	public int getA4() {
		return a4;
	}

	public void setA4(int a4) {
		this.a4 = a4;
	}

	public int getA5() {
		return a5;
	}

	public void setA5(int a5) {
		this.a5 = a5;
	}
	
}
