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
import com.system.entity.Invoice;
import com.system.repositories.EmployeeRepository;
import com.system.repositories.Invoice_Repository;
import com.system.service.EmployeeService;


@Controller
@RequestMapping("/")
public class Invoice_Controller { 

	
	private Invoice_Repository invoiceRepository;

	public Invoice_Controller(Invoice_Repository theInvoice_Repository) {

		
		invoiceRepository = theInvoice_Repository;
	}


	
	
	@GetMapping("/getTotalAmount")
	@ResponseBody
	public List<Invoice> getTotalAmount() {
		
		return invoiceRepository.findByTotalAmount();
	
	}
	
	
	
	
	@GetMapping("/finishJobsList")
    public String finishJobs() {
		
		return "dashboard/finishJobs";
	
	}
	
	
	@GetMapping("/invoicePage")
    public String invoicePage() {
		
		return "dashboard/pages-invoice";
	
	}
	
	
	
	@GetMapping("/stockOutInvoic")
    public String stockOutInvoicePage() {
		
		return "dashboard/stock_out_invoicePage";
	
	}
	
	
	
	@GetMapping("/normal_invoice")
    public String normalInvoice() {
		
		return "dashboard/normal-invoice";
	
	}
	
	
	@GetMapping("/stock_out_invoice")
    public String stock_out_invoice() {
		
		return "dashboard/stock_out_invoice";
	
	}
	
	
	@GetMapping("/stock_out_list")
    public String stock_out_list() {
		
		return "dashboard/stock_out_list";
	
	}
	
	
	
	

	
}
