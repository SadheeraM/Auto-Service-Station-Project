package com.system.service;


import java.util.List;

import com.system.entity.Bookings;
import com.system.entity.Emp_Salary_Mangemt;
import com.system.entity.Employee_Attendance;
import com.system.entity.HR_Emp_Registration;



public interface Emp_Salry_Mangmt_Service {
	
	
	public List<Emp_Salary_Mangemt> findAll();

	public void saveEmpSalary(Emp_Salary_Mangemt the_Emp_Salary_Mangemt);
	
	

}

