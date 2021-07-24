package com.system.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.system.repositories.Stock_Repository;
import com.system.repositories.Users_Repository;
import com.system.entity.Stock_Items;
import com.system.entity.User_Registration;


@Service
public class StockServiceImpl implements Stock_Service {

	// define field for employee DAO
	private Stock_Repository stockRepository;

	// setup constructor injection
	@Autowired
	public StockServiceImpl(Stock_Repository theStock_Repository) {

		stockRepository = theStock_Repository;
	}

	
	@Override
	public void save(Stock_Items theStock) {

		stockRepository.save(theStock);
	}

	

	
}
