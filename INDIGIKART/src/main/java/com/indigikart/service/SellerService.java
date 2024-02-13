package com.indigikart.service;

import java.util.List;

import com.indigikart.model.Sellers;

public interface SellerService {

	List<Sellers> getAllSellers();

	Sellers getSellerById(int id);

	Sellers createSeller(Sellers seller);

	Sellers updateSeller(int id, Sellers seller);

	void deleteSeller(int id);

}
