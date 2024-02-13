package com.indigikart.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.indigikart.dao.AdminDao;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	AdminDao aDao;
	
	
}
