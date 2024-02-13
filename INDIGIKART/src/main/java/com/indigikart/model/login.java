package com.indigikart.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;


@Entity
public class login {
	
	@Id
	private String userid;
	private String pwd;
	private String role;
	private String phone;
	public login() {
		super();
		// TODO Auto-generated constructor stub
	}
	public login(String userid, String pwd, String role, String phone) {
		super();
		this.userid = userid;
		this.pwd = pwd;
		this.role = role;
		this.phone = phone;
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
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@Override
	public String toString() {
		return "login [userid=" + userid + ", pwd=" + pwd + ", role=" + role + ", phone=" + phone + "]";
	}
	
}
