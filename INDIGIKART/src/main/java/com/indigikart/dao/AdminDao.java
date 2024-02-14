package com.indigikart.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.indigikart.model.Admin;

@Repository
public interface AdminDao extends JpaRepository<Admin, Integer>{
	
}
