package com.indigikart.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.indigikart.model.Sellers;

@Repository
public interface SellerDao extends JpaRepository<Sellers, Integer>{
	
}
