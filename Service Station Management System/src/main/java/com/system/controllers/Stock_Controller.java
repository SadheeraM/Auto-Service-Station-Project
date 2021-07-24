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
import com.system.entity.Stock_Items;
import com.system.entity.User_Registration;
import com.system.repositories.EmployeeRepository;
import com.system.repositories.ServiceChargesRepository;
import com.system.repositories.Stock_Repository;
import com.system.service.EmployeeService;
import com.system.service.Stock_Service;
import com.system.service.UserService;


@Controller
@RequestMapping("/")
public class Stock_Controller { 

	
	private Stock_Repository stock_repository;
	private Stock_Service stock_service;

	public Stock_Controller(Stock_Repository theStock_Repository,Stock_Service thestock_service) {

		stock_repository = theStock_Repository;
		stock_service = thestock_service;
		
	}


	
	@GetMapping("/stock_dashboard")
	public String stock_dashboard() {		

		return "dashboard/stock_control";
		
	}
	
	
	
	
	@GetMapping("/load_stock_items")
	@ResponseBody
	public Object[] stockItemsList() {
		
		return stock_repository.findAllStockItems();
	
	}
	
	
	
	@GetMapping("/load_stock_items_table")
	@ResponseBody
	public List<Stock_Items> load_stock_items_table() {
		
		return stock_repository.findAllStockItemsTable();
	
	}
	
	
	
	@GetMapping("/stock_in_form")
	public String stock_in_form() {		

		return "dashboard/stock_in";
		
	}
	
	
	
	@GetMapping("/stock_out_history")
    public String stock_out_history() {
		
		return "dashboard/stock_out_history";
	
	}
	
	
	
	@GetMapping("/stock_in_history")
	public String stock_in_history() {		

		return "dashboard/stock_in_history";
		
	}
	
	
	
	
	@PostMapping("/save_stock_in")
	@ResponseBody
	public String saveStockIn(@ModelAttribute("stock") Stock_Items theStock) {

	
		if(theStock != null) {
		
			stock_service.save(theStock);

				return "sucess";
		
		}else {
			
				return "not_sucess";	
		}
		

	}
	
	
	
	@GetMapping("/stock_level")
	public String stock_level() {		

		return "dashboard/stock_level";
		
	}
	
	
	
	@GetMapping("/load_stock_items_levels")
	@ResponseBody
	public Object load_stock_items_levels() {
		
		return stock_repository.findAllStockItemsLevels();
	
	}
	

	
	@GetMapping("/get_stock_in_total")
	@ResponseBody
	public int get_stock_in_total(String theItemDes1) {
		
		return stock_repository.getTotalStockInLevel(theItemDes1);
	
	}
	
	
	
	@GetMapping("/getTotalAmountOfStockInItems")
	@ResponseBody
	public int getTotalAmountOfStockInItems(String fromDate, String toDate) {
		
		return stock_repository.findTotalAmountOfStockIN(fromDate, toDate);
	
	}
	
	
}
