package com.indigikart.service;

import java.util.List;

import com.indigikart.model.Product;

public interface ProductService {

	List<Product> getAllProducts();

	Product getProductById(int id);

	Product createProduct(Product product);

	Product updateProduct(int id, Product product);

	void deleteProduct(int id);

}
