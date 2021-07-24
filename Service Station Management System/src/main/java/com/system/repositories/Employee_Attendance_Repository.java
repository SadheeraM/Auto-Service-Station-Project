package com.system.repositories;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.system.entity.Employee_Attendance;
import com.system.entity.HR_Emp_Registration;


public interface Employee_Attendance_Repository extends JpaRepository<Employee_Attendance, Integer> {
	
	
	@Transactional
	@Modifying
	@Query(value = "UPDATE employee_attendance SET static = 'yes' where att_date = :theDate", nativeQuery = true)
	public void updateEmpAttendance(@Param("theDate") String theDate);
	
	
	@Transactional
	@Modifying
	@Query(value = "UPDATE employee_attendance SET static = NULL where att_date = :theDate", nativeQuery = true)
	public void undoUpdateEmpAttendance(@Param("theDate") String theDate);
	
	
	@Query(value = "SELECT COUNT(id) FROM employee_attendance WHERE att_date = :theDate", nativeQuery = true)
	public long noEmployeesPerDay(@Param("theDate") String theDate);
	
	
	@Query(value = "SELECT COUNT(*) FROM employee_attendance WHERE att_date = :theDate GROUP BY hr_emp_reg_emp_id HAVING COUNT(*) > 1", nativeQuery = true)
	public String duplicateEmpPerDay(@Param("theDate") String theDate);
	
	
	@Query(value = "SELECT MAX(att_date) FROM employee_attendance WHERE static='yes'", nativeQuery = true)
	public String lastSubmitDate();
	
	
	@Query(value = "SELECT COUNT(*) FROM employee_attendance WHERE hr_emp_reg_emp_id = :theEmpId AND att_status='P' AND \r\n" + 
			"TIMEDIFF(out_time,in_time) >= \"08:00\" AND att_date BETWEEN :theFromDate AND :theToDate", nativeQuery = true)
	public String noFullDays(@Param("theEmpId") String theEmpId,@Param("theFromDate") String theFromDate,@Param("theToDate") String theToDate);
	
	
	@Query(value = "SELECT COUNT(*) FROM employee_attendance WHERE hr_emp_reg_emp_id = :theEmpId AND att_status='P' AND \r\n" + 
			"TIMEDIFF(out_time,in_time) BETWEEN \"04:00\" AND \"08:00\" AND att_date BETWEEN :theFromDate AND :theToDate", nativeQuery = true)
	public String noHalfDays(@Param("theEmpId") String theEmpId,@Param("theFromDate") String theFromDate,@Param("theToDate") String theToDate);

	
	@Query(value = "SELECT CAST(SUM(TIMEDIFF(ot_to_time, ot_from_time)) AS TIME) as total_OT_hours FROM employee_attendance WHERE hr_emp_reg_emp_id = :theEmpId AND att_status='P' AND \r\n" + 
			"att_date BETWEEN :theFromDate AND :theToDate", nativeQuery = true) 
	public String total_OT_Time(@Param("theEmpId") String theEmpId,@Param("theFromDate") String theFromDate,@Param("theToDate") String theToDate);
	
	
	@Query(value = "SELECT TIME_TO_SEC (:total_OT_Hours)/60/30", nativeQuery = true) 
	public String total_OT(@Param("total_OT_Hours") String total_OT_Hours);
	
	


	
} 																			

