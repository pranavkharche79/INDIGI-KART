package com.indigikart.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Customer extends login{
	
	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(nullable = false)
	private String name;
	
	@Column(nullable = false)
	private String city;
	
	@Column(nullable = false)
	private String userid;
	
	@Column(nullable = false , unique = true)
	private String pwd;
	
	@Column(nullable = false , unique = true , length = 10)
	private String phone;
	
	@Column(nullable = false , unique = true)
	private String email;
	
	@Column(nullable = false)
	private String gender;
	
	public Customer() {
		super();
	}

	public Customer(Long id, String name, String city, String userid, String pwd, String phone, String email,
			String gender) {
		super();
		this.id = id;
		this.name = name;
		this.city = city;
		this.userid = userid;
		this.pwd = pwd;
		this.phone = phone;
		this.email = email;
		this.gender = gender;
	}

	public Customer(String name, String city, String userid, String pwd, String phone, String email, String gender) {
		super(userid,pwd,"Customer");
		this.name = name;
		this.city = city;
		this.phone = phone;
		this.email = email;
		this.gender = gender;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
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

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@Override
	public String toString() {
		return "Customer [id=" + id + ", name=" + name + ", city=" + city + ", userid=" + userid + ", pwd=" + pwd
				+ ", phone=" + phone + ", email=" + email + ", gender=" + gender + "]";
	}
	
}