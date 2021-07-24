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
import com.system.repositories.EmployeeRepository;
import com.system.service.EmployeeService;


@Controller
@RequestMapping("/")
public class EmployeeController { 

	private EmployeeService employeeService;
	private EmployeeRepository employeeRepository;

	public EmployeeController(EmployeeService theEmployeeService , EmployeeRepository theEmployeeRepository) {

		employeeService = theEmployeeService;
		employeeRepository = theEmployeeRepository;
	}


	// add mapping for login
	
	@GetMapping("/")
	public String loginPage() {		

		return "dashboard/authentication-login";
		
	}
	
	
	// stored procedure 
	
	@GetMapping("/test_sp")
	@ResponseBody
	public List<Bookings> test_sp(Integer year_in) {
		
		return employeeRepository.findCarsAfterYear(year_in);
	
	}
	
	
	// add mapping for report section
	
	@GetMapping("/report_section")
	public String reportSection() {		

		return "dashboard/report_section";
		
	}
	
	// add mapping for report 1
	
	@GetMapping("/report_1")
	public String charts() {		

		return "dashboard/reports_1";
		
	}
	
	// add mapping for report 2
	
	@GetMapping("/report_2")
	public String charts2() {		

		return "dashboard/reports_2";
		
	}
	
	// add mapping for report 3
	
	@GetMapping("/report_3")
	public String charts3() {		

		return "dashboard/reports_3";
		
	}
	
	
	// add mapping for report 4
	
	@GetMapping("/report_4")
	public String charts4() {		

		return "dashboard/reports_4";
		
	}
	
	
	// add mapping for report 5
	
	@GetMapping("/report_5")
	public String report_5_stock_out() {		

		return "dashboard/report_5(stock)";
		
	}
	
	
	// add mapping for report 5 graphical
	
	@GetMapping("/report_5_graphical")
	public String report_5_graphical() {		

		return "dashboard/reports_5_(graphical)";
		
	}
	
	
	// add mapping for report 6
	
	@GetMapping("/report_6")
	public String report_6() {		

		return "dashboard/report_6";
		
	}
	
	
	// add mapping for report 7
	
	@GetMapping("/report_7")
	public String report_7() {		

		return "dashboard/reports_7_monthly_income";
		
	}
	
	// add mapping for index
	
	@GetMapping("/index")
	public String dashboard(Model theModel) {		
		
		long var = employeeRepository.count();

		// add to the spring model
		theModel.addAttribute("showCount", var);

		return "dashboard/index";
		
	}
	
	
	// add mapping for "/list"
	
	@GetMapping("/jobcard")
	public String listEmployees(Model theModel) {		

		// get employees from database
		List<Bookings> theEmployees = employeeService.findAll();
		
		long var = employeeRepository.count();

		// add to the spring model
		theModel.addAttribute("employees", theEmployees);
		theModel.addAttribute("showCount", var);

		return "dashboard/tables";
		
	}
	
	
	
	// add mapping for "/inbox"
	
	@GetMapping("/inbox")
	public String Inbox(Model theModel) {		

	// get employees from database
	List<Bookings> theInbox = employeeService.findAllInbox();

	// add to the spring model
	theModel.addAttribute("inbox", theInbox);
			

	return "dashboard/inbox";
			
	}
	
	
	//count of inbox  
	
	@GetMapping("/inboxcount")
	@ResponseBody
	public long findCount() {
		
		long var = employeeRepository.count();
		return var;
		
	}
	
	
	
	//count of processing jobs  
	
	@GetMapping("/processjobscount")
	@ResponseBody
	public long findProcessJobsCount() {
			
	long var = employeeRepository.processJobCount();
	return var;
			
	}
	
	
	//count of available time slots  
	
	@PostMapping("/available_time_slots")
	@ResponseBody
	public List<Bookings> availableTimeSlots() {

	return employeeRepository.findAllTime();
				
	}
	
	
	//for notifications
	
	@GetMapping("/show_inbox_count")
	@ResponseBody
	public String showFindCount(Model theModel) {
		
		long var = employeeRepository.count();
		theModel.addAttribute("num_box", var);
		return "dashboard/tables";
		
	}
	
	
	
	//for ajax list out
	
	@PostMapping("/list")
	@ResponseBody
	public List<Bookings> list() {
		
		return employeeService.findAll();
	
	}
	
	
	// add mapping for list Inbox
	
	@PostMapping("/listInbox")
	@ResponseBody
	public List<Bookings> listInbox() {
		
		return employeeService.findAllInbox();
	
	}
	
	// add mapping for processing jobs
	
	@PostMapping("/listProccssJobs")
	@ResponseBody
	public List<Bookings> listProccssJobs() {
		
		return employeeService.findAllProccssJobs();
	
	}
	
	
	// add mapping for list processing jobs
	
	@GetMapping("/processing_jobs")
	public String list123() {

		return "dashboard/Processing_Jobs";

	}
	
	
	// add mapping for show form for add
	
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {

		// create model attribute to bind form data
		Bookings theEmployee = new Bookings();

		// add to the spring model
		theModel.addAttribute("employee", theEmployee);

		return "dashboard/add_job_card";

	}
	
	
	// add mapping for show form for update

	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("employeeId") int theId, Model theModel) {

		// get the employee from the service
		Bookings theEmployee = employeeService.findById(theId);

		// set employee as a model attribute to pre-populate the form
		theModel.addAttribute("employee", theEmployee);

		// send over to our form
		return "dashboard/edit_job_card";

	}
	
	
	// add mapping for delete job cards
	
	
	@PostMapping("/deleteJobCard")
	@ResponseBody
	public String deleteJobCard(@ModelAttribute("employee") Bookings theEmployee, RedirectAttributes redirAttrs){
		
		// save the employee
		employeeService.save(theEmployee);

		redirAttrs.addFlashAttribute("message1", "Successfully Deleted !");

		// use a direct to prevent duplicate submission
		return "redirect:/jobcard";

	}
	
	
	// add mapping for start job cards
	
	@PostMapping("/startJobCard")
	public String startJobCard(@ModelAttribute("employee") Bookings theEmployee, RedirectAttributes redirAttrs){
		
		if(theEmployee != null) {
		
			// save the employee
			employeeService.save(theEmployee);

			redirAttrs.addFlashAttribute("message1", "The Job is Successfully Started !");
		
			return "redirect:/jobcard";
		
		}else {
			
			redirAttrs.addFlashAttribute("message1", "The Job is Not Started");
			
			return "redirect:/jobcard";
		}

	}
	
	
	// add mapping for edit job card
	
	@PostMapping("/editJobCard")
	public String editJobCard(@ModelAttribute("employee") Bookings theEmployee, RedirectAttributes redirAttrs){
		
		// save the employee
		employeeService.save(theEmployee);

		redirAttrs.addFlashAttribute("message1", "Successfully edited the Job Card !");

		// use a direct to prevent duplicate submission
		return "redirect:/jobcard";

	}
	
	
	// add mapping for save
	
	@PostMapping("/save2")
	@ResponseBody
	public String saveInbox(@ModelAttribute("employee") Bookings theEmployee) {

	
		if(theEmployee != null) {
		
			employeeService.save(theEmployee);

				return "sucess";
		
		}else {
			
				return "not_sucess";	
		}
		

	}
	
	
	//This method for add form and edit form using ajax...
	
	@PostMapping("/saveJobCard")
	@ResponseBody
	public String saveJobCard(@ModelAttribute("employee") Bookings theEmployee) {

		String theDate = theEmployee.getDate();
		String theTime = theEmployee.getTime();
		Integer theId = theEmployee.getId();
		
		//long countStart = employeeRepository.findByNameCount(theDate, theTime);
		//long countEnd = employeeRepository.findByNameCount2(theDate, theTime);
		long countExist = employeeRepository.findByIdIsExisting(theId, theTime, theDate);
		long abc = employeeRepository.findByIsBooked(theDate, theTime);
		//int abc = 1;
		
		if(countExist == 1 && abc < 3) {
			
			employeeService.save(theEmployee);
			return "sucss";
		
		
		}else if(abc >= 3) {

			return "already_booked";
		
		}else {
			
			employeeService.save(theEmployee);
			return "sucss";
		}

	}
	

	// add mapping for find Id
	
	@GetMapping("/find")
	@ResponseBody
	public Optional<Bookings> find(int employeeId) {
		
		return employeeService.find(employeeId);
		
	}
	
	
	// add mapping for find available Times 
	
	@GetMapping("/findAvailableTime")
	@ResponseBody
	public List<Bookings> findAvailableTime(String theDate) {
		
		return employeeRepository.findByDate(theDate);
		
	}
	
	
	// add mapping for delete bookings
	
	@GetMapping("/deleted_bookings")
	public String warehouseBookings() {		


		return "dashboard/deleted_bookings";
		
	}
	
	
	// add mapping for list deleted bookings
	
	@PostMapping("/listDeletedBookings")
	@ResponseBody
	public List<Bookings> listDeletedBookings() {
		
		return employeeRepository.findAllDeleteBookings();
	
	}
	
	
	// add mapping for deleted bookings count
	
	@GetMapping("/deleted_bookings_unaccepted")
	public String deleted_bookings_unaccepted() {		


		return "dashboard/deleted_bookings_unaccepted";
		
	}
	
	
	// add mapping for list rejected and deleted bookings
	
	@PostMapping("/listDelUnAcceptBookings")
	@ResponseBody
	public List<Bookings> listDelUnAcceptBookings() {
		
		return employeeRepository.findAllDeleteUnAcceptedBookings();
	
	}
	
	
	// add mapping for find finish jobs
	
	@GetMapping("/find_finish_Jobs")
	@ResponseBody
	public List<Bookings> find_finish_Jobs() {
		
		return employeeRepository.findAllFinishBookings();
		
	}
	
	
	// add mapping for get invoice details
	
	@GetMapping("/getInvoiceDetails")
	@ResponseBody
	public Object[] getInvoiceDetails(int id) {
		
		return employeeRepository.findInvoiceDetailsById(id);
	
	}
	
	
	// get how many times same vehicle no in the database
	
	@GetMapping("/no_of_veh_no")
	@ResponseBody
	public int no_of_veh_no(String theVehNo) {
		
		return employeeRepository.findByVehId3Times(theVehNo);
	
	}
	
	
	// add mapping for list stock out bills
	
	@GetMapping("/list_stock_out_bills")
	@ResponseBody
	public List<Bookings> list_stock_out_bills() {
		
		return employeeRepository.findAllStockOutList();
				
	
	}
	
	// get total vehicles
	
	@GetMapping("/getTotalVehicles")
	@ResponseBody
	public Object[] getTotalVehicles(String theDate1,String theDate2) {
		
		return employeeRepository.findByTotalVehicles(theDate1, theDate2);
	
	}
	
	
	// update is_finish to PAID after checkout
	
	@GetMapping("/updateBookingAsPaid")
	@ResponseBody
	public void updateBookingAsPaid(int theId) {
		
		employeeRepository.updateBookingAsPaid(theId);
		
	}
	
	
	// Find All Daily Bookings For Report
	@GetMapping("/getAllDailyBookings")
	@ResponseBody
	public Object[] getAllDailyBookings(String theDate1,String theDate2) {
		
		return employeeRepository.findAllDailyBookingsReport(theDate1, theDate2);
	
	}
	
	
}
