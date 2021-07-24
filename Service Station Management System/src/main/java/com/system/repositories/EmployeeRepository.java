package com.system.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.system.entity.Bookings;



public interface EmployeeRepository extends JpaRepository<Bookings, Integer> {
	
	
	// stored procedure
	
	@Query(value = "CALL FIND_CARS_AFTER_YEAR(:year_in);", nativeQuery = true)
	public List<Bookings> findCarsAfterYear(@Param("year_in") Integer year_in);
	
	
	// add a method to find by is accept = 1 and is_finish IS NULL...
	
	@Query(value = "SELECT * FROM bookings WHERE is_accept=1 AND is_cancel IS NULL AND status='Pending'", nativeQuery = true)
	public List<Bookings> findAll();
	
	
	// list delete bookings 
	
	@Query(value = "SELECT * FROM bookings WHERE is_accept=1 AND is_cancel=1", nativeQuery = true)
	public List<Bookings> findAllDeleteBookings();
	
	// list finish booking
	
	
	@Query(value = "SELECT * FROM bookings WHERE service_type <> 'STOCK OUT BILL' AND is_accept=1 AND is_finish=1 AND is_paid IS NULL", nativeQuery = true)
	public List<Bookings> findAllFinishBookings();
	
	// list stovk out list
	
	
	@Query(value = "SELECT * FROM bookings WHERE service_type='STOCK OUT BILL' AND is_accept=1 AND is_finish=1", nativeQuery = true)
	public List<Bookings> findAllStockOutList();
	
	// list invoice details
	
	
	@Query(value = "SELECT * FROM bookings WHERE id = :id", nativeQuery = true)
	public Object[] findInvoiceDetailsById(int id);
	
	// list rejected and deleted booking
	
	
	@Query(value = "SELECT * FROM bookings WHERE is_accept IS NULL AND is_cancel=1", nativeQuery = true)
	public List<Bookings> findAllDeleteUnAcceptedBookings();
	
	// list count
	
	
	@Query(value = "SELECT COUNT(id) FROM bookings WHERE is_accept IS NULL AND is_cancel IS NULL", nativeQuery = true)
	public long count();
	
	
	// list processing jobs
	
	@Query(value = "SELECT COUNT(id) FROM bookings WHERE status='Active' AND is_finish IS NULL AND is_cancel IS NULL", nativeQuery = true)
	public long processJobCount();
	
	
	// list inbox
	
	
	@Query(value = "SELECT * FROM bookings WHERE is_accept IS NULL AND is_cancel IS NULL", nativeQuery = true)
	public List<Bookings> findAllInbox();
	
	// list process jobs
	
	@Query(value = "SELECT * FROM bookings WHERE is_accept=1 AND is_cancel IS NULL AND status='Active' AND is_finish IS NULL", nativeQuery = true)
	public List<Bookings> findAllProccssJobs();
	
	
	// list times
	
	
	@Query(value = "SELECT * FROM bookings WHERE is_accept=1 AND is_cancel IS NULL AND is_finish IS NULL", nativeQuery = true)
	public List<Bookings> findAllTime();
	
	// list 3 times booked vehicles
	
	
	@Query(value = "SELECT count(id) FROM bookings WHERE vehicle_no = :theVehNo AND is_accept=1 AND is_finish=1", nativeQuery = true)
	public int findByVehId3Times(@Param("theVehNo") String theVehNo);
	
	
	// find booking count
	
	
	@Query(value = "SELECT COUNT(id) FROM bookings WHERE date = :theDate AND time = :theTime", nativeQuery = true)
	public long findByNameBookCount(@Param("theDate") String theDate , @Param("theTime") String theTime);
	
	// find Id is existing
	
	@Query(value = "SELECT COUNT(id) FROM bookings WHERE id = :theId AND time = :theTime AND date = :theDate", nativeQuery = true)
	public long findByIdIsExisting(@Param("theId") Integer theId , @Param("theTime") String theTime , @Param("theDate") String theDate);
	
	// list bookings by date
	
	@Query(value = "SELECT * FROM bookings WHERE is_accept=1 AND is_cancel IS NULL AND is_finish IS NULL "
	+ "AND status='Pending' AND date = :theDate GROUP BY time HAVING COUNT(*) >= 3 ORDER BY time ASC", nativeQuery = true)
	public List<Bookings> findByDate(@Param("theDate") String theDate);
	
	// find is booked
	
	@Query(value = "SELECT COUNT(id) FROM bookings WHERE date = :theDate AND time = :theTime AND is_accept=1 "
	+ "AND is_cancel IS NULL AND is_finish IS NULL AND status='Pending'", nativeQuery = true)
	public long findByIsBooked(@Param("theDate") String theDate , @Param("theTime") String theTime);
	
	
	// find all vehicles
	
	@Query(value = "SELECT COUNT(vehicle_no),date FROM bookings WHERE date BETWEEN :theDate1 AND :theDate2 GROUP BY date ORDER BY date ASC", nativeQuery = true)
	public Object[] findByTotalVehicles(@Param("theDate1") String theDate1 , @Param("theDate2") String theDate2);
	
	
	// update bookings as paid
	
	@Transactional
	@Modifying
	@Query(value = "UPDATE bookings SET is_paid = 'PAID' WHERE id = :theId", nativeQuery = true)
	public void updateBookingAsPaid(@Param("theId") Integer theId);
	
	
	// find All Daily Bookings For Report
	
	@Query(value = "SELECT customer_name,vehicle_no,type_of_vehicle,date,time,service_type,email,contact_no FROM bookings WHERE is_accept='1' AND is_finish='1' AND date BETWEEN :theDate1 AND :theDate2", nativeQuery = true)
	public Object[] findAllDailyBookingsReport(@Param("theDate1") String theDate1 , @Param("theDate2") String theDate2);
} 																			

