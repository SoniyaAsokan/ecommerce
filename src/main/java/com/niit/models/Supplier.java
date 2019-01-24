package com.niit.models;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Supplier {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	
	int supplierId;
	String supplierName;
	String supplierMobNo;
	String supplierAddress;
	String supplierMailId;
	@OneToMany(mappedBy="supplier")
	private List<Product> products;
	public List<Product> getProducts() {
		return products;
	}
	public void setProducts(List<Product> products) {
		this.products = products;
	}
	public int getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}
	public String getSupplierName() {
		return supplierName;
	}
	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}
	public String getSupplierMobNo() {
		return supplierMobNo;
	}
	public void setSupplierMobNo(String supplierMobNo) {
		this.supplierMobNo = supplierMobNo;
	}
	public String getSupplierAddress() {
		return supplierAddress;
	}
	public void setSupplierAddress(String supplierAddress) {
		this.supplierAddress = supplierAddress;
	}
	public String getSupplierMailId() {
		return supplierMailId;
	}
	public void setSupplierMailId(String supplierMailId) {
		this.supplierMailId = supplierMailId;
	}
	
}
