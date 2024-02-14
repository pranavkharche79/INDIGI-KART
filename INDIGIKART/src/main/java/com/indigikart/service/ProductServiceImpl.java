package com.indigikart.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.indigikart.dao.ProductDao;
import com.indigikart.model.Product;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDao pdao;
	
	@Override
	public List<Product> getAllProducts() {
		return pdao.findAll();
	}

	@Override
	public Product getProductById(int id) {
		Optional<Product> op=pdao.findById(id);
		 if(op.isPresent()) {
			 return op.get();
		 }
		 return null;
	}

	@Override
	public Product createProduct(Product product) {
		return pdao.save(product);
	}

	@Override
	public Product updateProduct(int id, Product product) {
		Optional<Product> op=pdao.findById(id);
		if(op.isPresent()) {
			Product p=op.get();
			//all setters of product
			return pdao.save(p);
		}
		else {
			return null;
		}
	}

	@Override
	public void deleteProduct(int id) {
		pdao.deleteById(id);
		
	}
	
}
