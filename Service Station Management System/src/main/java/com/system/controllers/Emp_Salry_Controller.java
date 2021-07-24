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
import com.system.entity.Emp_Salary_Mangemt;
import com.system.entity.Employee_Attendance;
import com.system.repositories.Emp_Salry_Mangmt_Repository;
import com.system.repositories.Employee_Attendance_Repository;
import com.system.service.Emp_Salry_Mangmt_Service;
import com.system.service.Employee_AttendanceService;



@Controller
@RequestMapping("/")
public class Emp_Salry_Controller { 
	
	
	private Emp_Salry_Mangmt_Service empSalMangmtService;
	private Emp_Salry_Mangmt_Repository empSalMangmtRepository;

	public Emp_Salry_Controller(Emp_Salry_Mangmt_Service theEmpSalMangmtService , Emp_Salry_Mangmt_Repository theEmpSalMangmtRepository) {

		empSalMangmtService = theEmpSalMangmtService;
		empSalMangmtRepository = theEmpSalMangmtRepository;
	}
	
	
	
	@GetMapping("/salaryCalculator")
	public String salaryCalculator() {

		return "dashboard/salaryCalculator";

	}
	
	
	@GetMapping("/listEmpSalary")
	public String listEmpSalary() {

		return "dashboard/employee_salary_management";

	}
	
	
	@GetMapping("/list_salries")
	@ResponseBody
	public List<Emp_Salary_Mangemt> listSalries() {
		
		return empSalMangmtService.findAll();
	
	}
	
	
	@GetMapping("/empSalMangmtList")
	@ResponseBody
	public Object[] empSalMangmtList() {
		
		return empSalMangmtRepository.findAllEmpSalMangemt();
		
	}
	
	
	@GetMapping("/saveEmpSalary")
	@ResponseBody
	public String saveEmpSalary(@ModelAttribute("empSal") Emp_Salary_Mangemt the_Emp_Salary_Mangemt) {

	
		if(the_Emp_Salary_Mangemt != null) {
		
			// save the employee
			empSalMangmtService.saveEmpSalary(the_Emp_Salary_Mangemt);

			return "success";
		
		}else {
			
			return "unsucss";
			
		}
		

	}
	
	
	@GetMapping("/getTotalAmountEmpSal")
	@ResponseBody
	public int getTotalAmountEmpSal(String fromDate, String toDate) {
		
		return empSalMangmtRepository.findTotalAmountOfEmpSalary(fromDate, toDate);
		
	}
	
	
}
