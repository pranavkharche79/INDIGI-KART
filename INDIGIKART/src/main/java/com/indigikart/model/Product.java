package com.indigikart.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "products")
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int pid;
	
	@Column(nullable = false)
	private String pname;
	
	@Column(nullable = false)
	private String pdescription;
	
	@Column(nullable = false)
	private double price;
	
	@Column(nullable = false)
	private String category;
	
	@Column(nullable = false)
	private int stock_qty;
	
	@Column(nullable = false)
	private String purl;

	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Product(int pid, String pname, String pdescription, double price, String category, int stock_qty,
			String purl) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.pdescription = pdescription;
		this.price = price;
		this.category = category;
		this.stock_qty = stock_qty;
		this.purl = purl;
	}

	public Product(String pname, String pdescription, double price, String category, int stock_qty, String purl) {
		super();
		this.pname = pname;
		this.pdescription = pdescription;
		this.price = price;
		this.category = category;
		this.stock_qty = stock_qty;
		this.purl = purl;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPdescription() {
		return pdescription;
	}

	public void setPdescription(String pdescription) {
		this.pdescription = pdescription;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getStock_qty() {
		return stock_qty;
	}

	public void setStock_qty(int stock_qty) {
		this.stock_qty = stock_qty;
	}

	public String getPurl() {
		return purl;
	}

	public void setPurl(String purl) {
		this.purl = purl;
	}

	@Override
	public String toString() {
		return "Product [pid=" + pid + ", pname=" + pname + ", pdescription=" + pdescription + ", price=" + price
				+ ", category=" + category + ", stock_qty=" + stock_qty + ", purl=" + purl + "]";
	}
	
}
