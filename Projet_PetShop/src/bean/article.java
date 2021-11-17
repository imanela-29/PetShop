package bean;

import java.sql.Date;

public class article {
	private int ida;
	private String designation;
	private String details;
	private String url_image;
	private Date datearticle;
	private int prix;
	private String description;
	private String type;
	private String promotion;
	private int id;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getIda() {
		return ida;
	}
	public void setIda(int ida) {
		this.ida = ida;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public String getUrl_image() {
		return url_image;
	}
	public void setUrl_image(String url_image) {
		this.url_image = url_image;
	}
	public Date getDatearticle() {
		return datearticle;
	}
	public void setDatearticle(Date datearticle) {
		this.datearticle = datearticle;
	}
	public int getPrix() {
		return prix;
	}
	public void setPrix(int prix) {
		this.prix = prix;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getPromotion() {
		return promotion;
	}
	public void setPromotion(String promotion) {
		this.promotion = promotion;
	}
	

}
