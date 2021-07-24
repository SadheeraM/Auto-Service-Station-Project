package com.system.service;


import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.system.repositories.Users_Repository;
import com.system.entity.Bookings;
import com.system.entity.User_Registration;


@Service
public class UserServiceImpl implements UserService {

	// define field for employee DAO
	private Users_Repository userRepository;

	// setup constructor injection
	@Autowired
	public UserServiceImpl(Users_Repository theUserRepository) {

		userRepository = theUserRepository;
	}

	
	@Override
	public void save(User_Registration theEmployee) {

		userRepository.save(theEmployee);
	}

	
	
	@Override
	public User_Registration findById(int theId) {

		Optional<User_Registration> result = userRepository.findById(theId);
		
		User_Registration theUser = null;
		
		if(result.isPresent()) {
			
			theUser = result.get();
		}
		else {
			
			throw new RuntimeException("Did not find user id " + theId);
		}
		return theUser;
	}

	
}
