package com.system.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/website")
public class HomeController {

	
	@GetMapping("/index")
    public String index() {
        
    	return "website/index";
    }
	

	
	@GetMapping("/booking")
    public String booking() {
        
    	return "website/add_booking";
    }
	
	
	@GetMapping("/aboutUs")
    public String aboutUs() {
        
    	return "website/about-us";
    }
	
	
	@GetMapping("/features")
    public String features() {
        
    	return "website/features";
    }
	
	
	@GetMapping("/gallery")
    public String gallery() {
        
    	return "website/gallery";
    }
	
	
	@GetMapping("/services")
    public String services() {
        
    	return "website/services";
    }
     
      
}
