package com.system.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.system.entity.Bill_Description;
import com.system.entity.Bookings;
import com.system.repositories.Bill_Description_Repository;
import com.system.repositories.EmployeeRepository;
import com.system.service.Bill_Description_Service;
import com.system.service.EmployeeService;


@Controller
@RequestMapping("/")
public class Bill_Des_Controller { 

	private Bill_Description_Service bill_description_service;
	private Bill_Description_Repository bill_description_repository;

	public Bill_Des_Controller(Bill_Description_Service theBill_description_service , Bill_Description_Repository theBill_description_repository) {

		bill_description_service = theBill_description_service;
		bill_description_repository = theBill_description_repository;
	}


	
	
	// stored procedure for get total profit
	
	@GetMapping("/getTotalProfit")
	@ResponseBody
	public int getTotalProfit(String fromDate,String toDate) {
			
		return bill_description_repository.getTotalProfit(fromDate,toDate);
		
	}
	
	
	
	@GetMapping("/getTotalAmountOnlyServices")
	@ResponseBody
	public Object[] getTotalAmountOnlyServices(String fromDate, String toDate) {
			
		return bill_description_repository.findTotalAmountOnlyServices(fromDate, toDate);
		
	}
	
	
	
	
	@GetMapping("/getTotalAmountOfAll")
	@ResponseBody
	public int getTotalAmountOfAll(String fromDate, String toDate) {
			
		return bill_description_repository.findTotalAmountOfAll(fromDate, toDate);
		
	}
	
	
	
	
	@PostMapping("/saveBill")
	@ResponseBody
	public String saveBill(@ModelAttribute("bill") Bill_Description theBill) {

	
		if(theBill != null) {
		
			bill_description_service.save(theBill);

				return "sucess";
		
		}else {
			
				return "not_sucess";	
		}
		

	}
	
	
	
	@GetMapping("/listBillItems")
	@ResponseBody
	public List<Bill_Description> listBillItems(int theId , String theDate) {
		
		return bill_description_repository.findAllBillItems(theId, theDate);
		
	}
	
	
	@GetMapping("/totalSubBill")
	@ResponseBody
	public int totalSubBill(int theId , String theDate) {
		
		return bill_description_repository.findSubTotalofBill(theId, theDate);
		
	}
	
	
	/**
	@GetMapping("/delete")
	public String delete(@RequestParam("bill_id") int theId) {

		// delete the employee
		bill_description_repository.deleteById(theId);

		// redirect to /employees/list
		return "redirect:/";

	}
	*/
	
	
	
	@GetMapping("/getTotalItemQty")
	@ResponseBody
	public int getTotalItemQty(String theItemDes) {
		
		return bill_description_repository.findTotalQrtByName(theItemDes);

		
	}
	
	
	//vehicle_registration
	@GetMapping("/vehicle_registration")
    public String vehicle_registration() {
        
    	return "dashboard/vehicle_registration";
    }
	
	
	
	
	//get vehicle history invoice items
	@GetMapping("/vehicle_registration_invoice_items")
	public String vehicle_registration_invoice_items() {
	        
		return "dashboard/vehicle_registration_invo_items";
	}
	
	
	
	@GetMapping("/listAllVehicles")
	@ResponseBody
	public List<Bill_Description> listAllVehicles(String theVehicleNo) {
		
		return bill_description_repository.findAllVehicleList(theVehicleNo);
		
	}
	
	
	
	@GetMapping("/listAllVehiclesInvoiceItems")
	@ResponseBody
	public Object[] listAllVehiclesInvoiceItems(String theVehicleNo) {
		
		return bill_description_repository.findAllVehicleInvoiceItemList(theVehicleNo);
		
	}
	
	
	
	
	@GetMapping("/getTotalAmountList")
	@ResponseBody
	public Object[] getTotalAmountList(String theDate1,String theDate2) {
		
		return bill_description_repository.findByTotalAmountList(theDate1, theDate2);
	
	}
	
	
	
	@GetMapping("/findAllSellingStockItems")
	@ResponseBody
	public Object[] findAllSellingStockItems(String theDate1,String theDate2) {
		
		return bill_description_repository.findAllSellingStockItems(theDate1, theDate2);
	
	}
	
	
	
	@GetMapping("/listAllSellingStockItems")
	@ResponseBody
	public Object[] listAllSellingStockItems() {
		
		return bill_description_repository.listAllSellingStockItems();
	
	}
	
	
	
}
