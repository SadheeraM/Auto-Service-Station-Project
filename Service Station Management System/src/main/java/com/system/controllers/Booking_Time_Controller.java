package com.system.controllers;


import java.util.List;
import java.util.Optional;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.system.entity.Bookings;
import com.system.entity.Employee_Attendance;
import com.system.repositories.BookingTimesRepository;
import com.system.repositories.Employee_Attendance_Repository;
import com.system.service.Employee_AttendanceService;



@Controller
@RequestMapping("/booking")
public class Booking_Time_Controller { 

	private BookingTimesRepository bookingTimesRepository;

	public Booking_Time_Controller(BookingTimesRepository theBookingTimesRepository) {

		bookingTimesRepository = theBookingTimesRepository;
		
	}

	
	
	@GetMapping("/boookingTimes")
	@ResponseBody
	public String boookingTimes(String theTimePeriod) {
		
		String var = bookingTimesRepository.findStartTime(theTimePeriod);
		return var;
		
	}
	
	
	
}
