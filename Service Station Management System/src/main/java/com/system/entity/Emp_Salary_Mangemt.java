package com.system.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "employee_salary_management")
public class Emp_Salary_Mangemt {

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;

	@Column(name = "from_date")
	private String FromDate;

	@Column(name = "to_date")
	private String ToDate;

	@Column(name = "no_of_full_days")
	private String No_Of_FullDays;
	
	@Column(name = "no_of_half_days")
	private String No_Of_Half_Days;
	
	@Column(name = "no_of_oT_hours")
	private String No_Of_OT_Hours;
	
	@Column(name = "total_amount")
	private String Total_Amount;
	
	@Column(name = "allowances")
	private String Allowances;
	
	@Column(name = "paid_status")
	private String Paid_Status;
	
	@Column(name = "hr_emp_reg_emp_id")
	private String hr_Emp_Reg_Emp_Id;
	
	
	
	public Emp_Salary_Mangemt() {
		
	}



	public Emp_Salary_Mangemt(Integer id, String fromDate, String toDate, String no_Of_FullDays, String no_Of_Half_Days,
			String no_Of_OT_Hours, String total_Amount, String allowances, String paid_Status,
			String hr_Emp_Reg_Emp_Id) {
		
		this.id = id;
		FromDate = fromDate;
		ToDate = toDate;
		No_Of_FullDays = no_Of_FullDays;
		No_Of_Half_Days = no_Of_Half_Days;
		No_Of_OT_Hours = no_Of_OT_Hours;
		Total_Amount = total_Amount;
		Allowances = allowances;
		Paid_Status = paid_Status;
		this.hr_Emp_Reg_Emp_Id = hr_Emp_Reg_Emp_Id;
	}



	public Emp_Salary_Mangemt(String fromDate, String toDate, String no_Of_FullDays, String no_Of_Half_Days,
			String no_Of_OT_Hours, String total_Amount, String allowances, String paid_Status,
			String hr_Emp_Reg_Emp_Id) {
		
		FromDate = fromDate;
		ToDate = toDate;
		No_Of_FullDays = no_Of_FullDays;
		No_Of_Half_Days = no_Of_Half_Days;
		No_Of_OT_Hours = no_Of_OT_Hours;
		Total_Amount = total_Amount;
		Allowances = allowances;
		Paid_Status = paid_Status;
		this.hr_Emp_Reg_Emp_Id = hr_Emp_Reg_Emp_Id;
	}



	public Integer getId() {
		return id;
	}



	public void setId(Integer id) {
		this.id = id;
	}



	public String getFromDate() {
		return FromDate;
	}



	public void setFromDate(String fromDate) {
		FromDate = fromDate;
	}



	public String getToDate() {
		return ToDate;
	}



	public void setToDate(String toDate) {
		ToDate = toDate;
	}



	public String getNo_Of_FullDays() {
		return No_Of_FullDays;
	}



	public void setNo_Of_FullDays(String no_Of_FullDays) {
		No_Of_FullDays = no_Of_FullDays;
	}



	public String getNo_Of_Half_Days() {
		return No_Of_Half_Days;
	}



	public void setNo_Of_Half_Days(String no_Of_Half_Days) {
		No_Of_Half_Days = no_Of_Half_Days;
	}



	public String getNo_Of_OT_Hours() {
		return No_Of_OT_Hours;
	}



	public void setNo_Of_OT_Hours(String no_Of_OT_Hours) {
		No_Of_OT_Hours = no_Of_OT_Hours;
	}



	public String getTotal_Amount() {
		return Total_Amount;
	}



	public void setTotal_Amount(String total_Amount) {
		Total_Amount = total_Amount;
	}



	public String getAllowances() {
		return Allowances;
	}



	public void setAllowances(String allowances) {
		Allowances = allowances;
	}



	public String getPaid_Status() {
		return Paid_Status;
	}



	public void setPaid_Status(String paid_Status) {
		Paid_Status = paid_Status;
	}



	public String getHr_Emp_Reg_Emp_Id() {
		return hr_Emp_Reg_Emp_Id;
	}



	public void setHr_Emp_Reg_Emp_Id(String hr_Emp_Reg_Emp_Id) {
		this.hr_Emp_Reg_Emp_Id = hr_Emp_Reg_Emp_Id;
	}



	@Override
	public String toString() {
		return "Emp_Salary_Mangemt [id=" + id + ", FromDate=" + FromDate + ", ToDate=" + ToDate + ", No_Of_FullDays="
				+ No_Of_FullDays + ", No_Of_Half_Days=" + No_Of_Half_Days + ", No_Of_OT_Hours=" + No_Of_OT_Hours
				+ ", Total_Amount=" + Total_Amount + ", Allowances=" + Allowances + ", Paid_Status=" + Paid_Status
				+ ", hr_Emp_Reg_Emp_Id=" + hr_Emp_Reg_Emp_Id + "]";
	}



	


}	

	

	

	




