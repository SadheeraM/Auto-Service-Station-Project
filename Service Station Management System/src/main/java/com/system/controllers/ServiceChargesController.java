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
import com.system.entity.Service_Charges;
import com.system.repositories.EmployeeRepository;
import com.system.repositories.ServiceChargesRepository;
import com.system.service.EmployeeService;
import com.system.service.ServicesCharges_Service;


@Controller
@RequestMapping("/")
public class ServiceChargesController { 

	
	private ServicesCharges_Service servicesCharges_service;
	private ServiceChargesRepository service_charges_repository;

	public ServiceChargesController(ServiceChargesRepository theServiceChargesRepository,ServicesCharges_Service theServicesCharges_Service) {

		service_charges_repository = theServiceChargesRepository;
		servicesCharges_service = theServicesCharges_Service;
	}


	
	@GetMapping("/serviceItemsCharges")
	@ResponseBody
	public List<Service_Charges> serviceItemsList() {
		
		return service_charges_repository.findAllItems();
	
	}
	
	
	@GetMapping("/serviceItemsPrice")
	@ResponseBody
	public int serviceItemsPrice(String theItemDes) {
		
		return service_charges_repository.findItemPrice(theItemDes);
	
	}
	
	
	@GetMapping("/item_list")
	@ResponseBody
	public Object[] item_list() {
		
		return service_charges_repository.findItemList();
	
	}
	
	
	@GetMapping("/find_item_no")
	@ResponseBody
	public String find_item_no(String theItemDes) {
		
		return service_charges_repository.findItemNoByDescription(theItemDes);
	
	}
	
	
	@GetMapping("/addNewServices")
    public String addNewServices() {
        
    	return "dashboard/addServicesAndITems";
    }
	
	
	
	@GetMapping("all_services_list")
    public String AllServicesList() {
        
    	return "dashboard/viewAllServices";
    }
	
	
	
	@PostMapping("/saveNewServices")
	@ResponseBody
	public String saveNewServices(@ModelAttribute("serviceCharges") Service_Charges theserviceCharges){
		
		// save the employee
		servicesCharges_service.save(theserviceCharges);

		// use a direct to prevent duplicate submission
		return "redirect:/index";

	}
	
	
	@PostMapping("/findAllServiceAndItems")
	@ResponseBody
	public Object[] findAllServiceAndItems() {
		
		return service_charges_repository.findAllServiceAndItems();
	
	}
	
	
}
