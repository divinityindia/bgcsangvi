package bean;

import java.sql.Date;

public class SubGalleryBean {

	private int subgId;
	private int galleryId;

	private String caption;
	private String details;
	private String venue;
	private String date;
	public int getSubgId() {
		return subgId;
	}
	public void setSubgId(int subgId) {
		this.subgId = subgId;
	}
	public int getGalleryId() {
		return galleryId;
	}
	public void setGalleryId(int galleryId) {
		this.galleryId = galleryId;
	}
	public String getCaption() {
		return caption;
	}
	public void setCaption(String caption) {
		this.caption = caption;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public String getVenue() {
		return venue;
	}
	public void setVenue(String venue) {
		this.venue = venue;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}




}
