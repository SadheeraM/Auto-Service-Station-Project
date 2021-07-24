package com.system.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.system.entity.Bookings;
import com.system.entity.User_Registration;



public interface Users_Repository extends JpaRepository<User_Registration, Integer> {

	
	@Query(value = "SELECT first_name FROM user_registrations WHERE BINARY user_name = :theUserName AND BINARY password = :thePassword", nativeQuery = true)
	public String findCredentials(@Param("theUserName") String theUserName, @Param("thePassword") String thePassword);
	
	@Query(value = "SELECT role FROM user_registrations WHERE BINARY user_name = :theUserName AND BINARY password = :thePassword", nativeQuery = true)
	public String findUserName(@Param("theUserName") String theUserName, @Param("thePassword") String thePassword);
	
	@Query(value = "SELECT * FROM user_registrations", nativeQuery = true)
	public List<User_Registration> findAll();
	
	//check email already exit
	@Query(value = "SELECT COUNT(id) FROM user_registrations WHERE email = :theEmail", nativeQuery = true)
	public int findEmailAlreadyExit(@Param("theEmail") String theEmail);
	
} 																			

