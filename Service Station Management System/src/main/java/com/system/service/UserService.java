package com.system.service;


import com.system.entity.User_Registration;

public interface UserService {
	
	public void save(User_Registration theEmployee);
	
	public User_Registration findById(int theId);
	

}

