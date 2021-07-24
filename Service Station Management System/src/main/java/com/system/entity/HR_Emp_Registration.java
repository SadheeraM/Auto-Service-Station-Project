package com.system.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "hr_emp_reg")
public class HR_Emp_Registration {

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "emp_id")
	private Integer emp_id;

	@Column(name = "emp_fname")
	private String empFname;
	
	@Column(name = "emp_lname")
	private String empLname;
	
	@Column(name = "emp_addrss")
	private String empAddrss;
	
	@Column(name = "emp_gender")
	private String empGender;
	
	@Column(name = "emp_nic")
	private String empNIC;
	
	@Column(name = "emp_dob")
	private String empDOB;
	
	@Column(name = "emp_status")
	private String empStatus;
	
	@Column(name = "emp_type_job")
	private String empTypeJob;
	
	@Column(name = "emp_jb_st_date")
	private String empJobStDate;
	
	@Column(name = "emp_cont_no")
	private String empContNo;
	
	@Column(name = "emp_wk_exp")
	private String empWkExp;
	
	@Column(name = "emp_edu_qualfi")
	private String empEduQualfi;
	
	@Column(name = "emp_email")
	private String empEmail;
	
	@Column(name = "emp_addtn_info")
	private String empAddInfo;
	
	@Column(name = "emp_agree")
	private String empAgree;
	
	@Column(name = "emp_is_deleted")
	private String empIsDeleted;

	
	
	
	public HR_Emp_Registration() {
		
	}




	public HR_Emp_Registration(Integer emp_id, String empFname, String empLname, String empAddrss, String empGender,
			String empNIC, String empDOB, String empStatus, String empTypeJob, String empJobStDate, String empContNo,
			String empWkExp, String empEduQualfi, String empEmail, String empAddInfo, String empAgree,
			String empIsDeleted) {
		
		this.emp_id = emp_id;
		this.empFname = empFname;
		this.empLname = empLname;
		this.empAddrss = empAddrss;
		this.empGender = empGender;
		this.empNIC = empNIC;
		this.empDOB = empDOB;
		this.empStatus = empStatus;
		this.empTypeJob = empTypeJob;
		this.empJobStDate = empJobStDate;
		this.empContNo = empContNo;
		this.empWkExp = empWkExp;
		this.empEduQualfi = empEduQualfi;
		this.empEmail = empEmail;
		this.empAddInfo = empAddInfo;
		this.empAgree = empAgree;
		this.empIsDeleted = empIsDeleted;
	}




	public HR_Emp_Registration(String empFname, String empLname, String empAddrss, String empGender, String empNIC,
			String empDOB, String empStatus, String empTypeJob, String empJobStDate, String empContNo, String empWkExp,
			String empEduQualfi, String empEmail, String empAddInfo, String empAgree, String empIsDeleted) {
		
		this.empFname = empFname;
		this.empLname = empLname;
		this.empAddrss = empAddrss;
		this.empGender = empGender;
		this.empNIC = empNIC;
		this.empDOB = empDOB;
		this.empStatus = empStatus;
		this.empTypeJob = empTypeJob;
		this.empJobStDate = empJobStDate;
		this.empContNo = empContNo;
		this.empWkExp = empWkExp;
		this.empEduQualfi = empEduQualfi;
		this.empEmail = empEmail;
		this.empAddInfo = empAddInfo;
		this.empAgree = empAgree;
		this.empIsDeleted = empIsDeleted;
	}




	public Integer getEmp_id() {
		return emp_id;
	}




	public void setEmp_id(Integer emp_id) {
		this.emp_id = emp_id;
	}




	public String getEmpFname() {
		return empFname;
	}




	public void setEmpFname(String empFname) {
		this.empFname = empFname;
	}




	public String getEmpLname() {
		return empLname;
	}




	public void setEmpLname(String empLname) {
		this.empLname = empLname;
	}




	public String getEmpAddrss() {
		return empAddrss;
	}




	public void setEmpAddrss(String empAddrss) {
		this.empAddrss = empAddrss;
	}




	public String getEmpGender() {
		return empGender;
	}




	public void setEmpGender(String empGender) {
		this.empGender = empGender;
	}




	public String getEmpNIC() {
		return empNIC;
	}




	public void setEmpNIC(String empNIC) {
		this.empNIC = empNIC;
	}




	public String getEmpDOB() {
		return empDOB;
	}




	public void setEmpDOB(String empDOB) {
		this.empDOB = empDOB;
	}




	public String getEmpStatus() {
		return empStatus;
	}




	public void setEmpStatus(String empStatus) {
		this.empStatus = empStatus;
	}




	public String getEmpTypeJob() {
		return empTypeJob;
	}




	public void setEmpTypeJob(String empTypeJob) {
		this.empTypeJob = empTypeJob;
	}




	public String getEmpJobStDate() {
		return empJobStDate;
	}




	public void setEmpJobStDate(String empJobStDate) {
		this.empJobStDate = empJobStDate;
	}




	public String getEmpContNo() {
		return empContNo;
	}




	public void setEmpContNo(String empContNo) {
		this.empContNo = empContNo;
	}




	public String getEmpWkExp() {
		return empWkExp;
	}




	public void setEmpWkExp(String empWkExp) {
		this.empWkExp = empWkExp;
	}




	public String getEmpEduQualfi() {
		return empEduQualfi;
	}




	public void setEmpEduQualfi(String empEduQualfi) {
		this.empEduQualfi = empEduQualfi;
	}




	public String getEmpEmail() {
		return empEmail;
	}




	public void setEmpEmail(String empEmail) {
		this.empEmail = empEmail;
	}




	public String getEmpAddInfo() {
		return empAddInfo;
	}




	public void setEmpAddInfo(String empAddInfo) {
		this.empAddInfo = empAddInfo;
	}




	public String getEmpAgree() {
		return empAgree;
	}




	public void setEmpAgree(String empAgree) {
		this.empAgree = empAgree;
	}




	public String getempIsDeleted() {
		return empIsDeleted;
	}




	public void setempIsDeleted(String empIsDeleted) {
		this.empIsDeleted = empIsDeleted;
	}




	@Override
	public String toString() {
		return "HR_Emp_Registration [emp_id=" + emp_id + ", empFname=" + empFname + ", empLname=" + empLname
				+ ", empAddrss=" + empAddrss + ", empGender=" + empGender + ", empNIC=" + empNIC + ", empDOB=" + empDOB
				+ ", empStatus=" + empStatus + ", empTypeJob=" + empTypeJob + ", empJobStDate=" + empJobStDate
				+ ", empContNo=" + empContNo + ", empWkExp=" + empWkExp + ", empEduQualfi=" + empEduQualfi
				+ ", empEmail=" + empEmail + ", empAddInfo=" + empAddInfo + ", empAgree=" + empAgree
				+ ", empIsDeleted=" + empIsDeleted + "]";
	}



}	

	

	

	




