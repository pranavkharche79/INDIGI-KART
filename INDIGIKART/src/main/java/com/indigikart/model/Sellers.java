package com.indigikart.model;

import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Sellers extends login {
	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	private int sid;
	
	@Column(name = "seller_appno",nullable = false)
	private String applicationno;
	
	@Column(name = "gi_certifino",nullable = false)
	private String certificate_no;
	
	@Column(name = "gi_appno",nullable = false)
	private String giappno;
	
	@Column(nullable = false)
	private String city;
	

	private LocalDate createdOn;
	
	@Column(columnDefinition = "BOOLEAN DEFAULT '1'")
	private boolean isActive;
	
	@Column(columnDefinition = "BOOLEAN DEFAULT '0'")
	private boolean isVerified;
	
	@Column(nullable = false)
	private String name;
	
	@Column(nullable = false , unique = true , length = 10)
	private String phone;
	
	@Column(nullable = false , unique = true)
	private String email;
	
	@Column(nullable = false , unique = true)
	private String pwd;
	
	@Column(nullable = false)
	private String userid;
	
	public Sellers() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Sellers(int sid, String applicationno, String certificate_no, String giappno, String city,
			LocalDate createdOn, boolean isActive, boolean isVerified, String name, String phone, String email,
			String pwd, String userid) {
		super(userid,pwd,"Seller");
		this.sid = sid;
		this.applicationno = applicationno;
		this.certificate_no = certificate_no;
		this.giappno = giappno;
		this.city = city;
		this.createdOn = createdOn;
		this.isActive = isActive;
		this.isVerified = isVerified;
		this.name = name;
		this.phone = phone;
		this.email = email;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public String getApplicationno() {
		return applicationno;
	}

	public void setApplicationno(String applicationno) {
		this.applicationno = applicationno;
	}

	public String getCertificate_no() {
		return certificate_no;
	}

	public void setCertificate_no(String certificate_no) {
		this.certificate_no = certificate_no;
	}

	public String getGiappno() {
		return giappno;
	}

	public void setGiappno(String giappno) {
		this.giappno = giappno;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public LocalDate getCreatedOn() {
		return createdOn;
	}

	public void setCreatedOn(LocalDate createdOn) {
		this.createdOn = createdOn;
	}

	public boolean isActive() {
		return isActive;
	}

	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}

	public boolean isVerified() {
		return isVerified;
	}

	public void setVerified(boolean isVerified) {
		this.isVerified = isVerified;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	@Override
	public String toString() {
		return "Sellers [sid=" + sid + ", applicationno=" + applicationno + ", certificate_no=" + certificate_no
				+ ", giappno=" + giappno + ", city=" + city + ", createdOn=" + createdOn + ", isActive=" + isActive
				+ ", isVerified=" + isVerified + ", name=" + name + ", phone=" + phone + ", email=" + email + ", pwd="
				+ pwd + ", userid=" + userid + "]";
	}
	
}
