package com.system.repositories;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import com.system.entity.Emp_Roles_Sal;




public interface Emp_Role_Sal_Repository extends JpaRepository<Emp_Roles_Sal, Integer> {
	
	
	@Query(value = "SELECT emp_ot_fees FROM emp_role_sal WHERE emp_type = :empType", nativeQuery = true)
	public String findEmpOTSalByType(@Param("empType") String empType);
	
	
	@Query(value = "SELECT emp_d_fees FROM emp_role_sal WHERE emp_type = :empType", nativeQuery = true)
	public String findEmpDaySalByType(@Param("empType") String empType);
	
	
} 																			

