package com.system.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.system.entity.Bookings;
import com.system.entity.Employee_Attendance;
import com.system.entity.HR_Emp_Registration;
import com.system.repositories.Employee_Attendance_Repository;
import com.system.repositories.HR_Repository;


@Service
public class Employee_AttendanceServiceImpl implements Employee_AttendanceService {

	
	private Employee_Attendance_Repository empAttendanceRepository;

	// setup constructor injection
	@Autowired
	public Employee_AttendanceServiceImpl(Employee_Attendance_Repository theEmpAttRepository) {

		empAttendanceRepository = theEmpAttRepository;
	}

	
	/**
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
	*/
	
	
	
	@Override
	public void deleteById(int theId) {

		empAttendanceRepository.deleteById(theId);

	}
	
	
	
	@Override
	public void save(Employee_Attendance theAttendance) {

		empAttendanceRepository.save(theAttendance);
	}
	

	
}
