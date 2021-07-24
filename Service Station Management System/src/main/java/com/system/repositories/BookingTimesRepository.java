package com.system.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.system.entity.Bookings_Times;



public interface BookingTimesRepository extends JpaRepository<Bookings_Times, Integer> {
	
	
	@Query(value = "SELECT start_time FROM booking_times WHERE time_period = :theTimePeriod", nativeQuery = true)
	public String findStartTime(@Param("theTimePeriod") String theTimePeriod);

	
} 																			

