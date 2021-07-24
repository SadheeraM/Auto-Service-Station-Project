package com.system.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.system.entity.Bookings;
import com.system.entity.HR_Emp_Registration;
import com.system.repositories.HR_Repository;


@Service
public class HR_ServiceImpl implements HR_Service {

	// define field for employee DAO
	private HR_Repository hrRepository;

	// setup constructor injection
	@Autowired
	public HR_ServiceImpl(HR_Repository theHRMRepository) {

		hrRepository = theHRMRepository;
	}

	
	@Override
	public void save(HR_Emp_Registration theEmployee) {

		hrRepository.save(theEmployee);
	}


	@Override
	public List<HR_Emp_Registration> findAll() {
		
		return hrRepository.findAll();
	}
	
	
	@Override
	public HR_Emp_Registration findById(int theId) {

		Optional<HR_Emp_Registration> result = hrRepository.findById(theId);
		
		HR_Emp_Registration theEmployee = null;
		
		if(result.isPresent()) {
			
			theEmployee = result.get();
		}
		else {
			
			throw new RuntimeException("Did not find employee id " + theId);
		}
		return theEmployee;
	}

	
}
