package com.system.service;

import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.system.repositories.EmployeeRepository;
import com.system.entity.Bookings;



@Service
public class EmployeeServiceImpl implements EmployeeService {

	// define field for employee DAO
	private EmployeeRepository employeeRepository;

	// setup constructor injection
	@Autowired
	public EmployeeServiceImpl(EmployeeRepository theEmployeeRepository) {

		employeeRepository = theEmployeeRepository;
	}

	
	// list bookings 
	
	@Override
	public List<Bookings> findAll() {

		return employeeRepository.findAll();
		
	}
	
	// list inbox
	
	
	@Override
	public List<Bookings> findAllInbox() {

		return employeeRepository.findAllInbox();
		
	}
	
	// find booking by Id

	
	@Override
	public Bookings findById(int theId) {

		Optional<Bookings> result = employeeRepository.findById(theId);
		
		Bookings theEmployee = null;
		
		if(result.isPresent()) {
			
			theEmployee = result.get();
		}
		else {
			
			throw new RuntimeException("Did not find employee id " + theId);
		}
		return theEmployee;
	}
	
	
	// save the booking

	
	@Override
	public void save(Bookings theEmployee) {

		employeeRepository.save(theEmployee);
	}
	
	
	// delete booking by Id  
	
	@Override
	public void deleteById(int theId) {

		employeeRepository.deleteById(theId);

	}
	
	// find booking by Id
	
	@Override
	public Optional<Bookings> find(int employeeId) {
		
		return employeeRepository.findById(employeeId);                    
		
	}
	
	// find booking by date
	
	@Override
	public List<Bookings> findByDate(String theDate) { 
		
		return employeeRepository.findByDate(theDate);                    
		
	}

	// find processing by jobs	

	@Override
	public List<Bookings> findAllProccssJobs() {
		
		return employeeRepository.findAllProccssJobs();
		
	}
	
	
}
