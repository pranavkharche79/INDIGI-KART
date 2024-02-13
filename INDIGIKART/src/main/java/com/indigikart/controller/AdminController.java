package com.indigikart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.indigikart.model.Product;
import com.indigikart.model.Sellers;
import com.indigikart.service.AdminService;
import com.indigikart.service.ProductService;
import com.indigikart.service.SellerService;


@RestController
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private AdminService aService;
	@Autowired
	private SellerService sService;
	@Autowired
	private ProductService pService;
	
	
	// -------------------------------------- for Seller --------------------------------------
	@GetMapping("/sellers")
    public ResponseEntity<List<Sellers>> getAllSellers() {
        List<Sellers> sellers = sService.getAllSellers();
        return new ResponseEntity<>(sellers, HttpStatus.OK);
    }
	
	@GetMapping("/sellers/{id}")
	 public ResponseEntity<Sellers> getSellerById(@PathVariable int id) {
	    Sellers seller = sService.getSellerById(id);
	    if (seller != null) {
	        return new ResponseEntity<>(seller, HttpStatus.OK);
	    } else {
	        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
	    }
	}
	 
	@PostMapping("/sellers")
	public ResponseEntity<Sellers> createSeller(@RequestBody Sellers seller) {
	        Sellers newSeller = sService.createSeller(seller);
	        return new ResponseEntity<>(newSeller, HttpStatus.CREATED);
	}

	    
	@PutMapping("/sellers/{id}")
	public ResponseEntity<Sellers> updateSeller(@PathVariable int id, @RequestBody Sellers seller) {
	        Sellers updatedSeller = sService.updateSeller(id, seller);
	        if (updatedSeller != null) {
	            return new ResponseEntity<>(updatedSeller, HttpStatus.OK);
	        } else {
	            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
	        }
	}

	   
	@DeleteMapping("/sellers/{id}")
	public ResponseEntity<Void> deleteSeller(@PathVariable int id) {
	        sService.deleteSeller(id);
	        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
	}
	    
	    
	 // -------------------------------------- for Customer --------------------------------------
	
	
	
	//---------------------------------------- for Products --------------------------------------
	
	@GetMapping("/products")
    public ResponseEntity<List<Product>> getAllProducts() {
        List<Product> products = pService.getAllProducts();
        return new ResponseEntity<>(products, HttpStatus.OK);
    }
	
	@GetMapping("/products/{id}")
    public ResponseEntity<Product> getProductById(@PathVariable int id) {
        Product product = pService.getProductById(id);
        if (product != null) {
            return new ResponseEntity<>(product, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    
    @PostMapping("/products")
    public ResponseEntity<Product> createProduct(@RequestBody Product product) {
        Product newProduct = pService.createProduct(product);
        return new ResponseEntity<>(newProduct, HttpStatus.CREATED);
    }

    
    @PutMapping("/products/{id}")
    public ResponseEntity<Product> updateProduct(@PathVariable int id, @RequestBody Product product) {
        Product updatedProduct = pService.updateProduct(id, product);
        if (updatedProduct != null) {
            return new ResponseEntity<>(updatedProduct, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @DeleteMapping("/products/{id}")
    public ResponseEntity<Void> deleteProduct(@PathVariable int id) {
        pService.deleteProduct(id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
	
	
}
