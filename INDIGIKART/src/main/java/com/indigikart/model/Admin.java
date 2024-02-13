package com.indigikart.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Admin{
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long aid;
	private String userid;
	private String pwd;
	
	public Admin() {
		super();
	}

	public Admin(Long aid, String userid, String pwd) {
		super();
		this.aid = aid;
		this.userid = userid;
		this.pwd = pwd;
	}

	public Long getAid() {
		return aid;
	}

	public void setAid(Long aid) {
		this.aid = aid;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	@Override
	public String toString() {
		return "Admin [aid=" + aid + ", userid=" + userid + ", pwd=" + pwd + "]";
	}

	
	
	

}