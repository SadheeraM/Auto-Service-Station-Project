package com.system.controllers;

import com.system.entity.Bookings;
import com.system.service.EmailService;
import com.system.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import javax.mail.MessagingException;


@Controller
public class SendEmailController {

    @Autowired
    private EmailService emailService;
    
    String mail;
    String customerName;
    String date;
    String time;
    
    private EmployeeService employeeService;
	

	public SendEmailController(EmployeeService theEmployeeService) {

		employeeService = theEmployeeService;
		
	}
    
    	
    @PostMapping("/saveInbox")	
    public String sendEmail(@ModelAttribute("employee") Bookings theEmployee){
    	
    	mail = theEmployee.getEmail();
    	customerName = theEmployee.getCustomerName();
    	date = theEmployee.getDate();
    	time = theEmployee.getTime();
    	
    	String mailbody = "Dear "+customerName+",\n\nYour booking has been confirmed !\nPlease come at "+time+ " on " +date+".\n\nThank You !!!";
    	
    	if(mail.isEmpty()) {
    		
    		employeeService.save(theEmployee);
    		return "redirect:/inbox";
    		
    	}else {
    	
    	try {
    		
    		employeeService.save(theEmployee);
            
    		emailService.sendMail(mail, "OTEK Auto Service Station",mailbody);
    		
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    	
    	return "redirect:/inbox";
    	
    	}
    	
    }

}
