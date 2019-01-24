package com.niit.userDaoTestCase;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;

import com.niit.dao.ProductDao;
import com.niit.configuration.DBConfiguration;
import com.niit.models.Product;

import junit.framework.TestCase;

public class ProductDaoImpltest extends TestCase {

	AbstractApplicationContext context = new AnnotationConfigApplicationContext(DBConfiguration.class);
	ProductDao productDAO = (ProductDao) context.getBean("productDao");
	
	public void testFindAllProducts() 
	{
		List<Product> productList=productDAO.getAllProducts();
		assertNotNull(productList);
	}

	public void testFindProductById()
	{
		Product product1=productDAO.getProduct(42);
		assertNotNull(product1);
		int expectedId=42;
		int actualId=product1.getId();
		assertTrue(expectedId==actualId);
	}

	
	public void testaddProduct()
	{
		Product product=new Product();
		product.setId(2);
		product.setProductName("Boot");
		product.setDescription("The upper helps hold the shoe onto the foot");
		product.setQuantity(20);
		product.setPrice(1499.0);
	}

	}

