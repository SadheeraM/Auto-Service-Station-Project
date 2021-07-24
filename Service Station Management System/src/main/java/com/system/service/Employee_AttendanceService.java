package com.system.service;


import java.util.List;

import com.system.entity.Bookings;
import com.system.entity.Employee_Attendance;
import com.system.entity.HR_Emp_Registration;



public interface Employee_AttendanceService {
	
	//public void save(HR_Emp_Registration theEmployee);
	
	//public List<HR_Emp_Registration> findAll();
	
	//public HR_Emp_Registration findById(int theId);
	
	public void deleteById(int theId);
	
	public void save(Employee_Attendance theAttendance);

}

