package com.niit.dao;

import java.util.List;

import com.niit.models.Category;
import com.niit.models.Product;
import com.niit.models.Supplier;

public interface ProductDao {
	void addProduct(Product product);
	Product getProduct(int id);
	void deleteProduct(int id);
	void update(Product product);
	List<Product> getAllProducts();
	List<Product> getCategoryProducts(String category);
	void saveOrUpdate(Product product);
	List<Category> getAllCategories();
	List<Supplier> findAllSuppliers();
}