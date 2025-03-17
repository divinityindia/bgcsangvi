package bean;

public class FeedbackBean {
	private int fid;
	private String name;
	private String duration;
	private boolean active;
	
	public FeedbackBean() {
		// TODO Auto-generated constructor stub
	}

	public FeedbackBean(int fid, String name, String duration, boolean active) {
		super();
		this.fid = fid;
		this.name = name;
		this.duration = duration;
		this.active = active;
	}

	public FeedbackBean(String name, String duration, boolean active) {
		super();
		this.name = name;
		this.duration = duration;
		this.active = active;
	}
	
	public FeedbackBean(int fid, String name, String duration) {
		super();
		this.fid = fid;
		this.name = name;
		this.duration = duration;
	}

	public int getFid() {
		return fid;
	}

	public void setFid(int fid) {
		this.fid = fid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}
}
