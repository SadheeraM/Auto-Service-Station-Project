package com.system.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.system.entity.Bookings;
import com.system.entity.HR_Emp_Registration;
import com.system.entity.Service_Charges;
import com.system.entity.Stock_Items;



public interface Stock_Repository extends JpaRepository<Stock_Items, Integer> {
	
	
	@Query(value = "SELECT stock_item_description FROM service_item_prices", nativeQuery = true)
	public Object[] findAllStockItems();
	
	//@Query(value = "SELECT item_price FROM service_charges WHERE item_description = :theItemDes ", nativeQuery = true)
	//public int findItemPrice(@Param("theItemDes") String theItemDes);
	
	
	@Query(value = "SELECT * FROM service_item_prices", nativeQuery = true)
	public List<Stock_Items> findAllStockItemsTable();
	
	
	@Query(value = "SELECT id,stock_item_description,stock_item_no,SUM(stock_item_quantity) FROM service_item_prices group by stock_item_description", nativeQuery = true)
	public Object[] findAllStockItemsLevels();
	
	
	@Query(value = "SELECT SUM(stock_item_quantity) FROM service_item_prices WHERE stock_item_description=:theItemDes1", nativeQuery = true)
	public int getTotalStockInLevel(String theItemDes1);
	
	
	
	@Query(value = "SELECT SUM(stock_item_amount) FROM service_item_prices WHERE stock_item_date BETWEEN  :fromDate AND  :toDate", nativeQuery = true)
	public int findTotalAmountOfStockIN(@Param("fromDate") String fromDate, @Param("toDate") String toDate);
	
	
} 																			

