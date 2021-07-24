package com.system.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "service_charges")
public class Service_Charges {

	// define fields
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;

	@Column(name = "item_description")
	private String itemDescription;

	@Column(name = "item_price")
	private String itemPrice;
	
	@Column(name = "item_no")
	private String itemNo;
	
	
	@Column(name = "item_type")
	private String itemType;

	
	
	// define constructors

	
	public Service_Charges() {

	}



	public Service_Charges(Integer id, String itemDescription, String itemPrice, String itemNo, String itemType) {

		this.id = id;
		this.itemDescription = itemDescription;
		this.itemPrice = itemPrice;
		this.itemNo = itemNo;
		this.itemType = itemType;
	}



	public Service_Charges(String itemDescription, String itemPrice, String itemNo, String itemType) {
		
		this.itemDescription = itemDescription;
		this.itemPrice = itemPrice;
		this.itemNo = itemNo;
		this.itemType = itemType;
	}



	public Integer getId() {
		return id;
	}



	public void setId(Integer id) {
		this.id = id;
	}



	public String getItemDescription() {
		return itemDescription;
	}



	public void setItemDescription(String itemDescription) {
		this.itemDescription = itemDescription;
	}



	public String getItemPrice() {
		return itemPrice;
	}



	public void setItemPrice(String itemPrice) {
		this.itemPrice = itemPrice;
	}



	public String getItemNo() {
		return itemNo;
	}



	public void setItemNo(String itemNo) {
		this.itemNo = itemNo;
	}



	public String getItemType() {
		return itemType;
	}



	public void setItemType(String itemType) {
		this.itemType = itemType;
	}



	@Override
	public String toString() {
		return "Service_Charges [id=" + id + ", itemDescription=" + itemDescription + ", itemPrice=" + itemPrice
				+ ", itemNo=" + itemNo + ", itemType=" + itemType + "]";
	}

	


}	

	

	

	




