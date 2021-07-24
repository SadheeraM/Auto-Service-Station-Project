package com.system.service;


import java.util.List;
import java.util.Optional;

import com.system.entity.Bookings;

public interface EmployeeService {
	
	
	public List<Bookings> findAll();
	
	public List<Bookings> findAllInbox();
	
	public List<Bookings> findAllProccssJobs();
	
	public Bookings findById(int theId);
	
	public List<Bookings> findByDate(String theDate);
	
	public void save(Bookings theEmployee);
	
	public void deleteById(int theId);

	public Optional<Bookings> find(int employeeId);


}

