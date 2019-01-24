package com.niit.models;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity
public class Category 
{
	public Category()
	{
		System.out.println("Category Model is Scanned");
	}
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int CategoryId;
	private String CategoryName;
	@OneToMany(mappedBy="category")
	//@JoinColumn(name="cid")
	private List<Product> products;
	public List<Product> getProducts() {
		return products;
	}
	public void setProducts(List<Product> products) {
		this.products = products;
	}
	public int getCategoryId() {
		return CategoryId;
	}
	public void setCategoryId(int categoryId) {
		CategoryId = categoryId;
	}
	public String getCategoryName() {
		return CategoryName;
	}
	public void setCategoryName(String categoryName) {
		CategoryName = categoryName;
	}
	
}