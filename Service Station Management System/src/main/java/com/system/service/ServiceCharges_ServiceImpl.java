package com.system.service;

import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.system.repositories.EmployeeRepository;
import com.system.repositories.ServiceChargesRepository;
import com.system.entity.Bookings;
import com.system.entity.Service_Charges;



@Service
public class ServiceCharges_ServiceImpl implements ServicesCharges_Service {

	// define field for employee DAO
	private ServiceChargesRepository service_charges_repository;

	// setup constructor injection
	@Autowired
	public ServiceCharges_ServiceImpl(ServiceChargesRepository theServiceChargesRepository) {

		service_charges_repository = theServiceChargesRepository;
	}

	
	
	
	@Override
	public void save(Service_Charges theService_Charges) {

		service_charges_repository.save(theService_Charges);
	}


	
	
	/**
	
	@Override
	public List<Bookings> findAll() {

		return employeeRepository.findAll();
		
	}
	
	
	@Override
	public List<Bookings> findAllInbox() {

		return employeeRepository.findAllInbox();
		
	}

	
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
	
	
	*/

	
	

	/**
	
	@Override
	public void deleteById(int theId) {

		employeeRepository.deleteById(theId);

	}
	
	
	
	@Override
	public Optional<Bookings> find(int employeeId) {
		
		return employeeRepository.findById(employeeId);                    
		
	}
	
	
	@Override
	public List<Bookings> findByDate(String theDate) { 
		
		return employeeRepository.findByDate(theDate);                    
		
	}


	@Override
	public List<Bookings> findAllProccssJobs() {
		
		return employeeRepository.findAllProccssJobs();
		
	}
	
	*/
	
	
}
