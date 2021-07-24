package com.system.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.system.entity.Bill_Description;
import com.system.entity.Bookings;



public interface Bill_Description_Repository extends JpaRepository<Bill_Description, Integer> {
	
	@Query(value = "SELECT * FROM bill_description WHERE for_id = :theId AND invo_date = :theDate AND paid_status =''", nativeQuery = true)
	public List<Bill_Description> findAllBillItems(@Param("theId") Integer theId , @Param("theDate") String theDate);
	
	
	@Query(value = "SELECT SUM(amount) FROM bill_description \r\n" + 
					"WHERE for_id = :theId AND invo_date = :theDate AND paid_status =''", nativeQuery = true)
	public int findSubTotalofBill(@Param("theId") Integer theId , @Param("theDate") String theDate);
	
	
	@Query(value = "SELECT SUM(quantity) FROM bill_description  WHERE item_list = :theItemDes", nativeQuery = true)
	public int findTotalQrtByName(String theItemDes);
	
	
	
	// stored procedure to get total profit
	@Query(value = "CALL getTotalAmount(:fromDate,:toDate);", nativeQuery = true)
	public int getTotalProfit(@Param("fromDate") String fromDate, @Param("toDate") String toDate);
	
	
	
	@Query(value = "SELECT invo_date,sub_total,total_amount,sub_total_discount,veh_no FROM bill_description  WHERE item_list = 'Summary of bill' AND \r\n" + 
			"invo_date BETWEEN :fromDate AND :toDate", nativeQuery = true)
	public Object[] findTotalAmountOnlyServices(@Param("fromDate") String fromDate, @Param("toDate") String toDate);

	
	
	@Query(value = "SELECT SUM(total_amount) FROM bill_description  WHERE item_list = 'Summary of bill' AND \r\n" + 
			"invo_date BETWEEN :fromDate AND :toDate", nativeQuery = true)
	public int findTotalAmountOfAll(@Param("fromDate") String fromDate, @Param("toDate") String toDate);
	
	
	// find All vehicles in order to vehicle no 
	@Query(value = "SELECT * FROM bill_description WHERE item_list = 'Summary of bill' AND full_name <> 'STOCK OUT BILL' AND veh_no = :theVehicleNo", nativeQuery = true)
	public List<Bill_Description> findAllVehicleList(@Param("theVehicleNo") String theVehicleNo);
	
	
	// find All vehicle invoice items in order to vehicle no 
	@Query(value = "SELECT invo_date,amount,item_list,quantity,unit_price \r\n" + 
			"FROM bill_description \r\n" + 
			"WHERE full_name <> 'STOCK OUT BILL' AND item_list <> 'Summary of bill' AND veh_no = :theVehicleNo", nativeQuery = true)
	public Object[] findAllVehicleInvoiceItemList(@Param("theVehicleNo") String theVehicleNo);
	
	
	
	@Query(value = "SELECT SUM(total_amount),invo_date FROM bill_description  "
			+ "WHERE item_list = 'Summary of bill' AND invo_date BETWEEN :theDate1 AND :theDate2 GROUP BY invo_date ORDER BY invo_date ASC", nativeQuery = true)
	public Object[] findByTotalAmountList(@Param("theDate1") String theDate1 , @Param("theDate2") String theDate2);
	
	
	@Query(value = "SELECT SUM(quantity),item_list FROM bill_description  WHERE item_list <> 'Summary of bill' AND invo_date BETWEEN :theDate1 AND :theDate2 AND item_list LIKE '$%' GROUP BY item_list", nativeQuery = true)
	public Object[] findAllSellingStockItems(@Param("theDate1") String theDate1 , @Param("theDate2") String theDate2);
	
	
	// list All sock out items
	@Query(value = "SELECT SUM(quantity),item_list,invo_date FROM bill_description  WHERE item_list <> 'Summary of bill' AND item_list LIKE '$%' GROUP BY item_list", nativeQuery = true)
	public Object[] listAllSellingStockItems();
	
} 																			

