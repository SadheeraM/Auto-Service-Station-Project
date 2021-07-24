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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.system.entity.Bookings;
import com.system.entity.User_Registration;
import com.system.repositories.EmployeeRepository;
import com.system.repositories.Users_Repository;
import com.system.service.EmployeeService;
import com.system.service.UserService;


@Controller
@RequestMapping("/")
public class Users_Controller { 

	
	private Users_Repository userRepository;
	private UserService userService;

	public Users_Controller(Users_Repository theuserRepository,UserService theuserService) {

		userRepository = theuserRepository;
		userService = theuserService;
	}
	

	
	@PostMapping("/show_user_list")
	@ResponseBody
	public List<User_Registration> show_user_list() {
		
		 return userRepository.findAll();
		
		
	}
	
	
	
	@GetMapping("/showUserCredentials")
	@ResponseBody
	public String findUserCredentials(String theUserName , String thePassword) {
		
		String var = userRepository.findCredentials(theUserName,thePassword);
		return var;
		
	}
	
	@GetMapping("/showUserRole")
	@ResponseBody
	public String findUserRole(String theUserName , String thePassword) {
		
		String var = userRepository.findUserName(theUserName, thePassword);
		return var;
		
	}
	
	
	@GetMapping("/adminPanel")
	public String adminPanel() {		

		return "dashboard/adminPanel";
		
	}
	
	@GetMapping("/user_management")
	public String userManagement() {		

		return "dashboard/userManagement";
		
	}
	
	
	@GetMapping("/registerUser")
	public String userRegister() {		

		return "dashboard/authentication-register";
		
	}
	
	
	/**
	@PostMapping("/saveNewUser")
	public String saveNewUser(@ModelAttribute("user") User_Registration theUser){
		
		// save the user
		employeeService.save(theEmployee);

		// use a direct to prevent duplicate submission
		return "redirect:/dashboard/adminPanel";

	}
	*/
	
	
	@PostMapping("/saveNewUser")
	@ResponseBody
	public String saveNewUser(@ModelAttribute("employee") User_Registration theEmployee) {

	
		if(theEmployee != null) {
		
			userService.save(theEmployee);

				return "sucess";
		
		}else {
			
				return "not_sucess";	
		}
		

	}
	
	
	
	@GetMapping("/showFormUserUpdate")
	public String showFormUserUpdate(@RequestParam("userId") int theId, Model theModel) {

		// get the employee from the service
		User_Registration theUser = userService.findById(theId);

		// set employee as a model attribute to pre-populate the form
		theModel.addAttribute("user", theUser);

		// send over to our form
		return "dashboard/authentication-edit-register";

	}
	
	
	
	@PostMapping("/check_email")
	@ResponseBody
	public int checkEmailAlreadyExit(String theEmail) {
		
		int var = userRepository.findEmailAlreadyExit(theEmail);
		return var;
		
	}
	
	
}
