package com.indigikart.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Admin extends login{
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String aid;
	private String userid;
	private String pwd;
	
	public Admin() {
		super();
	}

	public Admin(String aid, String userid, String pwd) {
		super(userid,pwd,"Admin");
		this.aid = aid;
		this.userid = userid;
		this.pwd = pwd;
	}
	
	

	public Admin(String userid, String pwd) {
		super();
		this.userid = userid;
		this.pwd = pwd;
	}

	public String getAid() {
		return aid;
	}

	public void setAid(String aid) {
		this.aid = aid;
	}

	public String getuserid() {
		return userid;
	}

	public void setuserid(String userid) {
		this.userid = userid;
	}

	public String getpwd() {
		return pwd;
	}

	public void setpwd(String pwd) {
		this.pwd = pwd;
	}

	@Override
	public String toString() {
		return "Admin [aid=" + aid + ", userid=" + userid + ", pwd=" + pwd + "]";
	}
	
	
	

}