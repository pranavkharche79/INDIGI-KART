package com.indigikart.model;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Sellers {
	@Id
	private int sid;
	private String certificate;
	private String city;
	private LocalDate createdOn;
	private boolean isActive;
	private String name;
	private String phone;
	private String password;
	private String userId;
	public Sellers() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Sellers(int sid, String certificate, String city, LocalDate createdOn, boolean isActive, String name,
			String phone, String password, String userId) {
		super();
		this.sid = sid;
		this.certificate = certificate;
		this.city = city;
		this.createdOn = createdOn;
		this.isActive = isActive;
		this.name = name;
		this.phone = phone;
		this.password = password;
		this.userId = userId;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getCertificate() {
		return certificate;
	}
	public void setCertificate(String certificate) {
		this.certificate = certificate;
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	@Override
	public String toString() {
		return "Sellers [sid=" + sid + ", certificate=" + certificate + ", city=" + city + ", createdOn=" + createdOn
				+ ", isActive=" + isActive + ", name=" + name + ", phone=" + phone + ", password=" + password
				+ ", userId=" + userId + "]";
	}
	
	
}
