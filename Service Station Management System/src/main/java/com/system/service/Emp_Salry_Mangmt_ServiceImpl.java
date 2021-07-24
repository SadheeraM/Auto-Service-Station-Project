package com.system.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;

import com.system.entity.Bookings;
import com.system.entity.Emp_Salary_Mangemt;
import com.system.entity.Employee_Attendance;
import com.system.entity.HR_Emp_Registration;
import com.system.repositories.Emp_Salry_Mangmt_Repository;
import com.system.repositories.Employee_Attendance_Repository;
import com.system.repositories.HR_Repository;


@Service
public class Emp_Salry_Mangmt_ServiceImpl implements Emp_Salry_Mangmt_Service {

	
	private Emp_Salry_Mangmt_Repository emp_salry_mangmt_repository;

	// setup constructor injection
	@Autowired
	public Emp_Salry_Mangmt_ServiceImpl(Emp_Salry_Mangmt_Repository theEmpSalMangmtRepository) {

		emp_salry_mangmt_repository = theEmpSalMangmtRepository;
		
	}




	@Override
	public List<Emp_Salary_Mangemt> findAll() {
		
		return emp_salry_mangmt_repository.findAll();
	}
	
	
	
	@Override
	public void saveEmpSalary(Emp_Salary_Mangemt the_Emp_Salary_Mangemt) {

		emp_salry_mangmt_repository.save(the_Emp_Salary_Mangemt);
		
	}
	

	
}
