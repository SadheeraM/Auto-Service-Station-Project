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
import com.system.repositories.Employee_Attendance_Repository;
import com.system.service.Employee_AttendanceService;



@Controller
@RequestMapping("/")
public class Emp_Attendance_Controller { 

	private Employee_AttendanceService empAttService;
	private Employee_Attendance_Repository empAttRepository;

	public Emp_Attendance_Controller(Employee_AttendanceService theEmpAttService , Employee_Attendance_Repository theEmpAttRepository) {

		empAttService = theEmpAttService;
		empAttRepository = theEmpAttRepository;
	}

	
	
	@GetMapping("/deleteEmpAttendance")
	public String deleteEmpAttendance(int theId) {

		
		empAttService.deleteById(theId);

		
		return "redirect:/";

	}
	
	
	
	@GetMapping("/listEmpAttendance")
	public String listEmpAttendance() {

		return "dashboard/employee_Attendance";

	}
	
	
	
	@PostMapping("/saveAttendance")
	public String saveAttendance(@ModelAttribute("attendance") Employee_Attendance theAttendance) {

	
		// save the employee
		empAttService.save(theAttendance);

		
		// use a direct to prevent duplicate submission
		return "redirect:/";
		

	}
	
	
	
	@GetMapping("/saveEmpAttendance")
	public void saveEmpAttendance(String theDate) {
		
		empAttRepository.updateEmpAttendance(theDate);

	}
	
	
	
	@GetMapping("/undoSaveEmpAttendance")
	public void undoSaveEmpAttendance(String theDate) {
		
		empAttRepository.undoUpdateEmpAttendance(theDate);

	}
	
	
	
	@GetMapping("/employees_Entered_per_day")
	@ResponseBody
	public long employees_Entered_per_day(String theDate) {
		
		long var = empAttRepository.noEmployeesPerDay(theDate);
		return var;
		
	}
	
	
	
	@GetMapping("/dup_emp_per_day")
	@ResponseBody
	public String dupEmpPerDay(String theDate) {
		
		String abc = empAttRepository.duplicateEmpPerDay(theDate);
		return abc;
		
	}
	
	
	@GetMapping("/lastSubmitDate")
	@ResponseBody
	public String lastSubmitDate() {
		
		String abc = empAttRepository.lastSubmitDate();
		return abc;
		
	}
	
	
	
	@GetMapping("/no_of_Full_Days")
	@ResponseBody
	public String no_of_FullDays(String theEmpId, String theFromDate, String theToDate) {
		
		String abc = empAttRepository.noFullDays(theEmpId,theFromDate,theToDate);
		return abc;
		
	}
	
	
	
	@GetMapping("/no_of_Half_Days")
	@ResponseBody
	public String no_of_HalfDays(String theEmpId, String theFromDate, String theToDate) {
		
		String abc = empAttRepository.noHalfDays(theEmpId, theFromDate, theToDate);
		return abc;
		
	}
	
	
	
	@GetMapping("/total_OT_time")
	@ResponseBody
	public String Total_OT_Time(String theEmpId, String theFromDate, String theToDate) {

		return empAttRepository.total_OT_Time(theEmpId, theFromDate, theToDate);
		

	}
	
	
	@GetMapping("/total_OT")
	@ResponseBody
	public String Total_OT(String total_OT_Hours) {

		return empAttRepository.total_OT(total_OT_Hours);
		

	}
	
	
	
}
