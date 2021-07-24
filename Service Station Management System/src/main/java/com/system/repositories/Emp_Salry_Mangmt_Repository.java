package com.system.repositories;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.system.entity.Emp_Salary_Mangemt;
import com.system.entity.Employee_Attendance;


public interface Emp_Salry_Mangmt_Repository extends JpaRepository<Emp_Salary_Mangemt, Integer> {
	
	
	@Query(value = "SELECT hr_emp_reg.emp_fname, hr_emp_reg.emp_lname,employee_salary_management.id,employee_salary_management.hr_emp_reg_emp_id,\r\n" + 
			"employee_salary_management.from_date,employee_salary_management.to_date,employee_salary_management.no_of_full_days,\r\n" + 
			"employee_salary_management.no_of_half_days,employee_salary_management.no_of_ot_hours,\r\n" + 
			"employee_salary_management.total_amount,employee_salary_management.paid_status\r\n" + 
			"FROM hr_emp_reg\r\n" + 
			"LEFT JOIN employee_salary_management \r\n" + 
			"ON hr_emp_reg.emp_id=employee_salary_management.hr_emp_reg_emp_id\r\n" + 
			"ORDER BY to_date DESC;", nativeQuery = true)
	public Object[] findAllEmpSalMangemt();
	
	
	
	// SELECT SUM(total_amount) FROM employee_salary_management WHERE from_date BETWEEN  '04/01/2021' AND  '04/15/2021';
	@Query(value = "SELECT SUM(total_amount) FROM employee_salary_management WHERE from_date BETWEEN  :fromDate AND  :toDate", nativeQuery = true)
	public int findTotalAmountOfEmpSalary(@Param("fromDate") String fromDate, @Param("toDate") String toDate);
	 
	
} 																			

