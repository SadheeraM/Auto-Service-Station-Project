package com.system.controllers;


import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.ResponseBody;

import com.system.repositories.Emp_Role_Sal_Repository;



@Controller
@RequestMapping("/")
public class Emp_Role_Sal_Controller { 

	//private HR_Service hrmService;
	private Emp_Role_Sal_Repository empRolSalRepository;

	public Emp_Role_Sal_Controller(Emp_Role_Sal_Repository theEmpRolSalRepository) {

		//hrmService = thehrmService;
		empRolSalRepository = theEmpRolSalRepository;
	}


	
	@GetMapping("/emp_role_ot_sal")
	@ResponseBody
	public String emp_Role_OT_Sal(String empType) {
		
		return empRolSalRepository.findEmpOTSalByType(empType);
		
	}
	
	
	@GetMapping("/emp_role_day_sal")
	@ResponseBody
	public String emp_Role_Sal(String empType) {
		
		return empRolSalRepository.findEmpDaySalByType(empType);
		
	}
	
}
