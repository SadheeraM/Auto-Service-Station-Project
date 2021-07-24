package com.system.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.system.entity.Bookings;
import com.system.entity.HR_Emp_Registration;
import com.system.entity.Service_Charges;



public interface ServiceChargesRepository extends JpaRepository<Service_Charges, Integer> {
	
	
	@Query(value = "SELECT * FROM service_charges", nativeQuery = true)
	public List<Service_Charges> findAllItems();
	
	@Query(value = "SELECT item_price FROM service_charges WHERE item_description = :theItemDes", nativeQuery = true)
	public int findItemPrice(@Param("theItemDes") String theItemDes);
	
	@Query(value = "SELECT item_description FROM service_charges WHERE item_type = 'ITEM'", nativeQuery = true)
	public Object[] findItemList();
	
	@Query(value = "SELECT item_no FROM service_charges WHERE item_description = :theItemDes", nativeQuery = true)
	public String findItemNoByDescription(@Param("theItemDes") String theItemDes);
	
	@Query(value = "SELECT item_description,item_no,item_price FROM service_charges", nativeQuery = true)
	public Object[] findAllServiceAndItems();
	
	
} 																			

