package com.system.service;

import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.system.repositories.Bill_Description_Repository;
import com.system.repositories.EmployeeRepository;
import com.system.entity.Bill_Description;
import com.system.entity.Bookings;



@Service
public class Bill_Description_ServiceImpl implements Bill_Description_Service {

	// define field for employee DAO
	private Bill_Description_Repository bill_description;

	// setup constructor injection
	@Autowired
	public Bill_Description_ServiceImpl(Bill_Description_Repository theBill_Description_Repository) {

		bill_description = theBill_Description_Repository;
	}

	
	
	@Override
	public void save(Bill_Description theBill) {

		bill_description.save(theBill);
	}




	
	
	
}
