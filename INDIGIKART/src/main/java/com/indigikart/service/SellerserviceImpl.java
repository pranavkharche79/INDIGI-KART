package com.indigikart.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.indigikart.dao.SellerDao;
import com.indigikart.model.Sellers;

@Service
public class SellerserviceImpl implements SellerService{
	
	@Autowired
	private SellerDao sdao;
	
	@Override
	public List<Sellers> getAllSellers() {
		return sdao.findAll();
	}

	@Override
	public Sellers getSellerById(int id) {
		Optional<Sellers> op=sdao.findById(id);
		 if(op.isPresent()) {
			 return op.get();
		 }
		 return null;
	}

	@Override
	public Sellers createSeller(Sellers seller) {
		return sdao.save(seller);
	}

	@Override
	public Sellers updateSeller(int id, Sellers seller) {
		Optional<Sellers> op=sdao.findById(id);
		if(op.isPresent()) {
			Sellers p=op.get();
			//all setters of seller
			return sdao.save(p);
		}
		else {
			return null;
		}
	}

	@Override
	public void deleteSeller(int id) {
		sdao.deleteById(id);
		
	}
	
}
