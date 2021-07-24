package com.system.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "bookings")
public class Bookings {

	// define fields
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;

	@Column(name = "customer_name")
	private String customerName;

	@Column(name = "vehicle_no")
	private String vehicleNo;
	
	@Column(name = "type_of_vehicle")
	private String typeOfVehicle;

	@Column(name = "service_type")
	private String serviceType;	
	
	@Column(name = "date")
	private String date;
	
	@Column(name = "time")
	private String time;
	
	@Column(name = "contact_no")
	private String contactNo;
	
	@Column(name = "email",unique = true)
	private String email;
	
	@Column(name = "status")
	private String status;
	
	@Column(name = "is_accept")
    private String isAccept;
	
	@Column(name = "is_finish")
	private String isFinish;
	
	@Column(name = "is_cancel")
	private String isCancel;
	
	@Column(name = "is_paid")
	private String isPaid;

	// define constructors
	
	public Bookings() {

	}

	
	
	public Bookings(Integer id, String customerName, String vehicleNo, String typeOfVehicle, String serviceType,
			String date, String time, String contactNo, String email, String status, String isAccept, String isFinish,
			String isCancel, String isPaid) {
		
		this.id = id;
		this.customerName = customerName;
		this.vehicleNo = vehicleNo;
		this.typeOfVehicle = typeOfVehicle;
		this.serviceType = serviceType;
		this.date = date;
		this.time = time;
		this.contactNo = contactNo;
		this.email = email;
		this.status = status;
		this.isAccept = isAccept;
		this.isFinish = isFinish;
		this.isCancel = isCancel;
		this.isPaid = isPaid;
	}



	
	public Bookings(String customerName, String vehicleNo, String typeOfVehicle, String serviceType, String date,
			String time, String contactNo, String email, String status, String isAccept, String isFinish,
			String isCancel, String isPaid) {
		
		this.customerName = customerName;
		this.vehicleNo = vehicleNo;
		this.typeOfVehicle = typeOfVehicle;
		this.serviceType = serviceType;
		this.date = date;
		this.time = time;
		this.contactNo = contactNo;
		this.email = email;
		this.status = status;
		this.isAccept = isAccept;
		this.isFinish = isFinish;
		this.isCancel = isCancel;
		this.isPaid = isPaid;
	}



	public Integer getId() {
		return id;
	}



	public void setId(Integer id) {
		this.id = id;
	}



	public String getCustomerName() {
		return customerName;
	}



	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}



	public String getVehicleNo() {
		return vehicleNo;
	}



	public void setVehicleNo(String vehicleNo) {
		this.vehicleNo = vehicleNo;
	}



	public String getTypeOfVehicle() {
		return typeOfVehicle;
	}



	public void setTypeOfVehicle(String typeOfVehicle) {
		this.typeOfVehicle = typeOfVehicle;
	}



	public String getServiceType() {
		return serviceType;
	}



	public void setServiceType(String serviceType) {
		this.serviceType = serviceType;
	}



	public String getDate() {
		return date;
	}



	public void setDate(String date) {
		this.date = date;
	}



	public String getTime() {
		return time;
	}



	public void setTime(String time) {
		this.time = time;
	}



	public String getContactNo() {
		return contactNo;
	}



	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getStatus() {
		return status;
	}



	public void setStatus(String status) {
		this.status = status;
	}



	public String getIsAccept() {
		return isAccept;
	}



	public void setIsAccept(String isAccept) {
		this.isAccept = isAccept;
	}



	public String getIsFinish() {
		return isFinish;
	}



	public void setIsFinish(String isFinish) {
		this.isFinish = isFinish;
	}



	public String getIsCancel() {
		return isCancel;
	}



	public void setIsCancel(String isCancel) {
		this.isCancel = isCancel;
	}



	public String getIsPaid() {
		return isPaid;
	}



	public void setIsPaid(String isPaid) {
		this.isPaid = isPaid;
	}



	@Override
	public String toString() {
		return "Bookings [id=" + id + ", customerName=" + customerName + ", vehicleNo=" + vehicleNo + ", typeOfVehicle="
				+ typeOfVehicle + ", serviceType=" + serviceType + ", date=" + date + ", time=" + time + ", contactNo="
				+ contactNo + ", email=" + email + ", status=" + status + ", isAccept=" + isAccept + ", isFinish="
				+ isFinish + ", isCancel=" + isCancel + ", isPaid=" + isPaid + "]";
	}



}	

	

	

	




