package com.indigikart.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Address {
	@Id
	private int addId;
	private String city;
	private String country;
	private String state;
	private String zip;
	public Address() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Address(int addId, String city, String country, String state, String zip) {
		super();
		this.addId = addId;
		this.city = city;
		this.country = country;
		this.state = state;
		this.zip = zip;
	}
	public int getAddId() {
		return addId;
	}
	public void setAddId(int addId) {
		this.addId = addId;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	@Override
	public String toString() {
		return "Address [addId=" + addId + ", city=" + city + ", country=" + country + ", state=" + state + ", zip="
				+ zip + "]";
	}
	
}
