package com.system.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "service_item_prices")
public class Stock_Items {

	// define fields
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;

	@Column(name = "stock_item_description")
	private String stock_item_description;

	@Column(name = "stock_item_price")
	private String stock_item_price;
	
	@Column(name = "stock_item_no")
	private String stock_item_no;
	
	@Column(name = "stock_item_quantity")
	private String stock_item_quantity;

	@Column(name = "stock_item_date")
	private String stock_item_date;
	
	@Column(name = "stock_item_amount")
	private String stock_item_amount;
	
	@Column(name = "stock_item_type")
	private String stock_item_type;

	// define constructors
	
	
	
	public Stock_Items() {

	}
	
	

	public Stock_Items(Integer id, String stock_item_description, String stock_item_price, String stock_item_no,
			String stock_item_quantity, String stock_item_date, String stock_item_amount, String stock_item_type) {


		this.id = id;
		this.stock_item_description = stock_item_description;
		this.stock_item_price = stock_item_price;
		this.stock_item_no = stock_item_no;
		this.stock_item_quantity = stock_item_quantity;
		this.stock_item_date = stock_item_date;
		this.stock_item_amount = stock_item_amount;
		this.stock_item_type = stock_item_type;
	}



	public Stock_Items(String stock_item_description, String stock_item_price, String stock_item_no,
			String stock_item_quantity, String stock_item_date, String stock_item_amount, String stock_item_type) {
		
		this.stock_item_description = stock_item_description;
		this.stock_item_price = stock_item_price;
		this.stock_item_no = stock_item_no;
		this.stock_item_quantity = stock_item_quantity;
		this.stock_item_date = stock_item_date;
		this.stock_item_amount = stock_item_amount;
		this.stock_item_type = stock_item_type;
	}



	public Integer getId() {
		return id;
	}



	public void setId(Integer id) {
		this.id = id;
	}



	public String getStock_item_description() {
		return stock_item_description;
	}



	public void setStock_item_description(String stock_item_description) {
		this.stock_item_description = stock_item_description;
	}



	public String getStock_item_price() {
		return stock_item_price;
	}



	public void setStock_item_price(String stock_item_price) {
		this.stock_item_price = stock_item_price;
	}



	public String getStock_item_no() {
		return stock_item_no;
	}



	public void setStock_item_no(String stock_item_no) {
		this.stock_item_no = stock_item_no;
	}



	public String getStock_item_quantity() {
		return stock_item_quantity;
	}



	public void setStock_item_quantity(String stock_item_quantity) {
		this.stock_item_quantity = stock_item_quantity;
	}



	public String getStock_item_date() {
		return stock_item_date;
	}



	public void setStock_item_date(String stock_item_date) {
		this.stock_item_date = stock_item_date;
	}



	public String getStock_item_amount() {
		return stock_item_amount;
	}



	public void setStock_item_amount(String stock_item_amount) {
		this.stock_item_amount = stock_item_amount;
	}



	public String getStock_item_type() {
		return stock_item_type;
	}



	public void setStock_item_type(String stock_item_type) {
		this.stock_item_type = stock_item_type;
	}



	@Override
	public String toString() {
		return "Service_Item_Prices [id=" + id + ", stock_item_description=" + stock_item_description
				+ ", stock_item_price=" + stock_item_price + ", stock_item_no=" + stock_item_no
				+ ", stock_item_quantity=" + stock_item_quantity + ", stock_item_date=" + stock_item_date
				+ ", stock_item_amount=" + stock_item_amount + ", stock_item_type=" + stock_item_type + "]";
	}

	

}	

	

	

	




