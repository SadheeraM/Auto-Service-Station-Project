package com.system.repositories;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.system.entity.Invoice;



public interface Invoice_Repository extends JpaRepository<Invoice, Integer> {
	
	
	@Query(value = "SELECT SUM(total_amount) FROM invoice_table WHERE issued_date BETWEEN '04/01/2021' AND '04/07/2021' GROUP BY issued_date", nativeQuery = true)
	public List<Invoice> findByTotalAmount();
	
	//@Query(value = "SELECT SUM(total_amount),issued_date FROM invoice_table WHERE issued_date BETWEEN :theDate1 AND :theDate2 GROUP BY issued_date", nativeQuery = true)
	//public Object[] findByTotalAmountList(@Param("theDate1") String theDate1 , @Param("theDate2") String theDate2);
	
	
	
	
} 																			

