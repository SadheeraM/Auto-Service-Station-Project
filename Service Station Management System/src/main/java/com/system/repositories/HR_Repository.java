package com.system.repositories;


import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;
import com.system.entity.HR_Emp_Registration;



public interface HR_Repository extends JpaRepository<HR_Emp_Registration, Integer> {
	
	
	@Query(value = "SELECT * FROM hr_emp_reg WHERE emp_is_deleted IS NULL", nativeQuery = true)
	public List<HR_Emp_Registration> findAll();
	
	@Transactional
	@Modifying
	@Query(value = "UPDATE hr_emp_reg SET emp_is_deleted = :theDeleted WHERE emp_id = :theId", nativeQuery = true)
	public void updateEmp(@Param("theId") Integer theId , @Param("theDeleted") String theDeleted);
	
	@Query(value = "SELECT hr_emp_reg.emp_fname,hr_emp_reg.emp_lname,employee_attendance.att_status,employee_attendance.in_time,"
			+ "employee_attendance.out_time,employee_attendance.id,employee_attendance.static,employee_attendance.ot_from_time,"
			+ "employee_attendance.ot_to_time FROM hr_emp_reg\r\n" + 
			"LEFT JOIN employee_attendance\r\n" + 
			"ON hr_emp_reg.emp_id=employee_attendance.hr_emp_reg_emp_id WHERE employee_attendance.att_date = :theDate", nativeQuery = true)
	public Object[] findAllEmpAttendance(@Param("theDate") String theDate);
	
	
	@Query(value = "SELECT emp_id FROM hr_emp_reg WHERE emp_fname = :theName", nativeQuery = true)
	public String findEmployeeByName(@Param("theName") String theName);
	
	
	@Query(value = "SELECT COUNT(emp_id) FROM hr_emp_reg WHERE emp_is_deleted IS NULL", nativeQuery = true)
	public long NoActiveEmployees();
	
	
	@Query(value = "SELECT emp_type_job FROM hr_emp_reg WHERE emp_id = :theEmpId", nativeQuery = true)
	public String findEmployeeTypeById(@Param("theEmpId") String theEmpId);
	
} 																			

