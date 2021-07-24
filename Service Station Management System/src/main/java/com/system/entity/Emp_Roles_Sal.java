package com.system.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "emp_role_sal")
public class Emp_Roles_Sal {

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;

	@Column(name = "emp_type")
	private String empType;
	
	@Column(name = "emp_d_fees")
	private String emp_D_Fees;
	
	
	@Column(name = "emp_ot_fees")
	private String emp_OT_Fees;
	

	
	
	public Emp_Roles_Sal() {
		
	}



	
	public Emp_Roles_Sal(Integer id, String empType, String emp_D_Fees, String emp_OT_Fees) {
		
		this.id = id;
		this.empType = empType;
		this.emp_D_Fees = emp_D_Fees;
		this.emp_OT_Fees = emp_OT_Fees;
	}



	
	public Emp_Roles_Sal(String empType, String emp_D_Fees, String emp_OT_Fees) {
		
		this.empType = empType;
		this.emp_D_Fees = emp_D_Fees;
		this.emp_OT_Fees = emp_OT_Fees;
	}



	
	public Integer getId() {
		return id;
	}



	public void setId(Integer id) {
		this.id = id;
	}



	public String getEmpType() {
		return empType;
	}



	public void setEmpType(String empType) {
		this.empType = empType;
	}



	public String getEmp_D_Fees() {
		return emp_D_Fees;
	}



	public void setEmp_D_Fees(String emp_D_Fees) {
		this.emp_D_Fees = emp_D_Fees;
	}



	public String getEmp_OT_Fees() {
		return emp_OT_Fees;
	}



	public void setEmp_OT_Fees(String emp_OT_Fees) {
		this.emp_OT_Fees = emp_OT_Fees;
	}



	@Override
	public String toString() {
		return "Emp_Roles_Sal [id=" + id + ", empType=" + empType + ", emp_D_Fees=" + emp_D_Fees + ", emp_OT_Fees="
				+ emp_OT_Fees + "]";
	}
	

}	

	

	

	




