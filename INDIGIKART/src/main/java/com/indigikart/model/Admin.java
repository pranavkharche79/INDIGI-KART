package com.indigikart.model;

import jakarta.persistence.Entity;

import jakarta.persistence.Id;

@Entity
public class Admin {
	
	@Id
	private String aid;
	private String uname;
	private String passwd;
	
	public Admin() {
		super();
	}

	public Admin(String aid, String uname, String passwd) {
		super();
		this.aid = aid;
		this.uname = uname;
		this.passwd = passwd;
	}

	public String getAid() {
		return aid;
	}

	public void setAid(String aid) {
		this.aid = aid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	@Override
	public String toString() {
		return "Admin [aid=" + aid + ", uname=" + uname + ", passwd=" + passwd + "]";
	}
	
	
	

}