package com.system.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "user_registrations")
public class User_Registration {

	// define fields
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;

	@Column(name = "first_name")
	private String firstName;

	@Column(name = "last_name")
	private String lastName;
	
	@Column(name = "user_name")
	private String userName;

	@Column(name = "password")
	private String userPassWord;	
	
	@Column(name = "email")
	private String userEmail;
	
	@Column(name = "role")
	private String userRole;
	
	@Column(name = "status")
	private String status;
	

	// define constructors
	
	public User_Registration() {

	}


	public User_Registration(Integer id, String firstName, String lastName, String userName, String userPassWord,
			String userEmail, String userRole, String status) {
		
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.userName = userName;
		this.userPassWord = userPassWord;
		this.userEmail = userEmail;
		this.userRole = userRole;
		this.status = status;
	}


	public User_Registration(String firstName, String lastName, String userName, String userPassWord, String userEmail,
			String userRole, String status) {
		
		this.firstName = firstName;
		this.lastName = lastName;
		this.userName = userName;
		this.userPassWord = userPassWord;
		this.userEmail = userEmail;
		this.userRole = userRole;
		this.status = status;
	}


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getUserPassWord() {
		return userPassWord;
	}


	public void setUserPassWord(String userPassWord) {
		this.userPassWord = userPassWord;
	}


	public String getUserEmail() {
		return userEmail;
	}


	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}


	public String getUserRole() {
		return userRole;
	}


	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	@Override
	public String toString() {
		return "User_Registration [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", userName="
				+ userName + ", userPassWord=" + userPassWord + ", userEmail=" + userEmail + ", userRole=" + userRole
				+ ", status=" + status + "]";
	}



}	

	

	

	




