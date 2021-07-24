package com.system.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "invoice_table")
public class Invoice {

	// define fields
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;

	@Column(name = "amount")
	private String amount;

	@Column(name = "checked_by")
	private String checkedBy;
	
	@Column(name = "description")
	private String description;

	@Column(name = "discount")
	private String discount;	
	
	@Column(name = "invoice_id")
	private String invoiceId;
	
	@Column(name = "issued_date")
	private String issuedDate;
	
	@Column(name = "issued_time")
	private String issuedTime;
	
	@Column(name = "paid_status")
	private String paidStatus;
	
	@Column(name = "payment_method")
	private String paymentMethod;
	
	@Column(name = "price")
    private String price;
	
	@Column(name = "quantity")
	private String quantity;
	
	@Column(name = "sub_total")
	private String subTotal;
	
	@Column(name = "total_amount")
	private String totalAmount;
	
	
	

	// define constructors
	
	public Invoice() {

	}




	public Invoice(Integer id, String amount, String checkedBy, String description, String discount, String invoiceId,
			String issuedDate, String issuedTime, String paidStatus, String paymentMethod, String price,
			String quantity, String subTotal, String totalAmount) {
		
		this.id = id;
		this.amount = amount;
		this.checkedBy = checkedBy;
		this.description = description;
		this.discount = discount;
		this.invoiceId = invoiceId;
		this.issuedDate = issuedDate;
		this.issuedTime = issuedTime;
		this.paidStatus = paidStatus;
		this.paymentMethod = paymentMethod;
		this.price = price;
		this.quantity = quantity;
		this.subTotal = subTotal;
		this.totalAmount = totalAmount;
	}




	public Invoice(String amount, String checkedBy, String description, String discount, String invoiceId,
			String issuedDate, String issuedTime, String paidStatus, String paymentMethod, String price,
			String quantity, String subTotal, String totalAmount) {
		
		this.amount = amount;
		this.checkedBy = checkedBy;
		this.description = description;
		this.discount = discount;
		this.invoiceId = invoiceId;
		this.issuedDate = issuedDate;
		this.issuedTime = issuedTime;
		this.paidStatus = paidStatus;
		this.paymentMethod = paymentMethod;
		this.price = price;
		this.quantity = quantity;
		this.subTotal = subTotal;
		this.totalAmount = totalAmount;
	}




	public Integer getId() {
		return id;
	}




	public void setId(Integer id) {
		this.id = id;
	}




	public String getAmount() {
		return amount;
	}




	public void setAmount(String amount) {
		this.amount = amount;
	}




	public String getCheckedBy() {
		return checkedBy;
	}




	public void setCheckedBy(String checkedBy) {
		this.checkedBy = checkedBy;
	}




	public String getDescription() {
		return description;
	}




	public void setDescription(String description) {
		this.description = description;
	}




	public String getDiscount() {
		return discount;
	}




	public void setDiscount(String discount) {
		this.discount = discount;
	}




	public String getInvoiceId() {
		return invoiceId;
	}




	public void setInvoiceId(String invoiceId) {
		this.invoiceId = invoiceId;
	}




	public String getIssuedDate() {
		return issuedDate;
	}




	public void setIssuedDate(String issuedDate) {
		this.issuedDate = issuedDate;
	}




	public String getIssuedTime() {
		return issuedTime;
	}




	public void setIssuedTime(String issuedTime) {
		this.issuedTime = issuedTime;
	}




	public String getPaidStatus() {
		return paidStatus;
	}




	public void setPaidStatus(String paidStatus) {
		this.paidStatus = paidStatus;
	}




	public String getPaymentMethod() {
		return paymentMethod;
	}




	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}




	public String getPrice() {
		return price;
	}




	public void setPrice(String price) {
		this.price = price;
	}




	public String getQuantity() {
		return quantity;
	}




	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}




	public String getSubTotal() {
		return subTotal;
	}




	public void setSubTotal(String subTotal) {
		this.subTotal = subTotal;
	}




	public String getTotalAmount() {
		return totalAmount;
	}




	public void setTotalAmount(String totalAmount) {
		this.totalAmount = totalAmount;
	}




	@Override
	public String toString() {
		return "Invoice [id=" + id + ", amount=" + amount + ", checkedBy=" + checkedBy + ", description=" + description
				+ ", discount=" + discount + ", invoiceId=" + invoiceId + ", issuedDate=" + issuedDate + ", issuedTime="
				+ issuedTime + ", paidStatus=" + paidStatus + ", paymentMethod=" + paymentMethod + ", price=" + price
				+ ", quantity=" + quantity + ", subTotal=" + subTotal + ", totalAmount=" + totalAmount + "]";
	}




}	

	

	

	




