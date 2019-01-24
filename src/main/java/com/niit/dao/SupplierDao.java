package com.niit.dao;

import java.util.List;

import com.niit.models.Supplier;

public interface SupplierDao {
	public List<Supplier> findAllSuppliers();
	public Supplier findSupplierById(int SupplierId);
	public Supplier findSupplierByName(String SupplierName);
	public boolean addSupplier(Supplier supplier);
	public boolean updateSupplier(Supplier supplier);
	public boolean deleteSupplier(int supplierId);
}
