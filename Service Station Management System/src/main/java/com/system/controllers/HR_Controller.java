package com.system.controllers;


import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.system.entity.Bookings;
import com.system.entity.HR_Emp_Registration;
import com.system.repositories.HR_Repository;
import com.system.service.HR_Service;


@Controller
@RequestMapping("/")
public class HR_Controller { 

	private HR_Service hrmService;
	private HR_Repository hrmRepository;

	public HR_Controller(HR_Service thehrmService , HR_Repository thehrmRepository) {

		hrmService = thehrmService;
		hrmRepository = thehrmRepository;
	}

	
	// add mapping for addEmployee form"
	
	@GetMapping("/addEmployee")
	public String addEmployee() {		

		return "dashboard/add_employee";
		
	}
	
	// direct to list employees page
	
	@GetMapping("/listEmployeesView")
	public String listEmployeesView() {		

		return "dashboard/list_Employees";
		
	}
	
	
	@GetMapping("/viewEmployeeProfile")
	public String viewEmployeeProfile() {		

		return "dashboard/view_employee_profile";
		
	}
	
	
	// save employees
	
	@PostMapping("/empSave")
	@ResponseBody
	public String empSave(@ModelAttribute("employee") HR_Emp_Registration theEmployee) {

		if(theEmployee != null) {

			hrmService.save(theEmployee);

			return "sucss";
		
		}else{
			
			return "unsucss";
			
		}

	}
	
	
	//list employees
	
	@PostMapping("/listEmployees")
	@ResponseBody
	public List<HR_Emp_Registration> listEmployees() {
		
		return hrmService.findAll();
	
	}
	
	
	@GetMapping("/findEmployeeId")
	@ResponseBody
	public String findEmployeeId(String theName) {
		
		return hrmRepository.findEmployeeByName(theName);
	
	}
	
	
	
	@GetMapping("/findEmployeeTypeById")
	@ResponseBody
	public String findEmployeeTypeById(String theEmpId) {
		
		return hrmRepository.findEmployeeTypeById(theEmpId);
	
	}
	
	
	
	@GetMapping("/addEmployeeUpdate")
	public String addEmployeeUpdate(@RequestParam("employeeId") int theId, Model theModel) {

		// get the employee from the service
		HR_Emp_Registration theEmployee = hrmService.findById(theId);

		// set employee as a model attribute to pre-populate the form
		theModel.addAttribute("employee", theEmployee);

		// send over to our form
		return "dashboard/edit_employee";

	}
	
	
	
	@GetMapping("/updateEmployee")
	@ResponseBody
	public void updateEmployee(int theId , String theDeleted) {
		
		hrmRepository.updateEmp(theId,theDeleted);
		
	}
	
	
	@GetMapping("/findEmpProfile")
	@ResponseBody
	public HR_Emp_Registration findEmpProfile(int theId) {
		
		return hrmService.findById(theId);
		
	}
	
	
	
	@PostMapping("/empAttendance")
	@ResponseBody
	public Object[] empAttendance(String theDate) {
		
		return hrmRepository.findAllEmpAttendance(theDate);
		
	}
	
	
	@GetMapping("/no_of_Active_Employees")
	@ResponseBody
	public long no_of_Active_Employees() {
		
		long var = hrmRepository.NoActiveEmployees();
		return var;
		
	}
	
	
}
