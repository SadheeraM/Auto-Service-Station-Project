package com.system.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "employee_attendance")
public class Employee_Attendance {


	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;

	@Column(name = "att_date")
	private String attDate;

	@Column(name = "att_status")
	private String attStatus;
	
	@Column(name = "in_time")
	private String inTime;

	@Column(name = "out_time")
	private String outTime;
	
	@Column(name = "static")
	private String Static;
	
	@Column(name = "ot_from_time")
	private String oT_FromTime;
	
	@Column(name = "ot_to_time")
	private String oT_ToTime;
	
	@Column(name = "hr_emp_reg_emp_id")
	private String hr_Emp_Reg_Emp_Id;
	
	
	
	
	public Employee_Attendance() {
		
	}




	public Employee_Attendance(Integer id, String attDate, String attStatus, String inTime, String outTime,
			String static1, String oT_FromTime, String oT_ToTime, String hr_Emp_Reg_Emp_Id) {
		
		this.id = id;
		this.attDate = attDate;
		this.attStatus = attStatus;
		this.inTime = inTime;
		this.outTime = outTime;
		Static = static1;
		this.oT_FromTime = oT_FromTime;
		this.oT_ToTime = oT_ToTime;
		this.hr_Emp_Reg_Emp_Id = hr_Emp_Reg_Emp_Id;
	}




	public Employee_Attendance(String attDate, String attStatus, String inTime, String outTime, String static1,
			String oT_FromTime, String oT_ToTime, String hr_Emp_Reg_Emp_Id) {
		
		this.attDate = attDate;
		this.attStatus = attStatus;
		this.inTime = inTime;
		this.outTime = outTime;
		Static = static1;
		this.oT_FromTime = oT_FromTime;
		this.oT_ToTime = oT_ToTime;
		this.hr_Emp_Reg_Emp_Id = hr_Emp_Reg_Emp_Id;
	}




	public Integer getId() {
		return id;
	}




	public void setId(Integer id) {
		this.id = id;
	}




	public String getAttDate() {
		return attDate;
	}




	public void setAttDate(String attDate) {
		this.attDate = attDate;
	}




	public String getAttStatus() {
		return attStatus;
	}




	public void setAttStatus(String attStatus) {
		this.attStatus = attStatus;
	}




	public String getInTime() {
		return inTime;
	}




	public void setInTime(String inTime) {
		this.inTime = inTime;
	}




	public String getOutTime() {
		return outTime;
	}




	public void setOutTime(String outTime) {
		this.outTime = outTime;
	}




	public String getStatic() {
		return Static;
	}




	public void setStatic(String static1) {
		Static = static1;
	}




	public String getoT_FromTime() {
		return oT_FromTime;
	}




	public void setoT_FromTime(String oT_FromTime) {
		this.oT_FromTime = oT_FromTime;
	}




	public String getoT_ToTime() {
		return oT_ToTime;
	}




	public void setoT_ToTime(String oT_ToTime) {
		this.oT_ToTime = oT_ToTime;
	}




	public String getHr_Emp_Reg_Emp_Id() {
		return hr_Emp_Reg_Emp_Id;
	}




	public void setHr_Emp_Reg_Emp_Id(String hr_Emp_Reg_Emp_Id) {
		this.hr_Emp_Reg_Emp_Id = hr_Emp_Reg_Emp_Id;
	}




	@Override
	public String toString() {
		return "Employee_Attendance [id=" + id + ", attDate=" + attDate + ", attStatus=" + attStatus + ", inTime="
				+ inTime + ", outTime=" + outTime + ", Static=" + Static + ", oT_FromTime=" + oT_FromTime
				+ ", oT_ToTime=" + oT_ToTime + ", hr_Emp_Reg_Emp_Id=" + hr_Emp_Reg_Emp_Id + "]";
	}
	


}	

	

	

	




