package com.system.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "bill_description")
public class Bill_Description {

	// define fields
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;

	@Column(name = "forId")
	private String forId;
	
	@Column(name = "item_list")
	private String item_list;

	@Column(name = "unit_price")
	private String unitPrice;
	
	@Column(name = "quantity")
	private String quantity;

	@Column(name = "discount")
	private String discount;	
	
	@Column(name = "amount")
	private String amount;
	
	@Column(name = "invo_date")
	private String invoDate;
	
	@Column(name = "full_name")
	private String fullName;
	
	@Column(name = "veh_no")
	private String vehNo;
	
	@Column(name = "checked_by")
	private String checkedBy;
	
	@Column(name = "invoice_id")
	private String invoiceId;
	
	@Column(name = "paid_status")
	private String paidStatus;
	
	@Column(name = "payment_method")
	private String paymentMethod;
	
	@Column(name = "sub_total")
	private String subTotal;
	
	@Column(name = "total_amount")
	private String totalAmount;
	
	@Column(name = "sub_total_discount")
	private String subTotalDiscount;
	
	@Column(name = "current_meter")
	private String currentMeter;
	
	@Column(name = "next_service")
	private String nextService;

	

	// define constructors
	
	public Bill_Description() {

	}



	public Bill_Description(Integer id, String forId, String item_list, String unitPrice, String quantity,
			String discount, String amount, String invoDate, String fullName, String vehNo, String checkedBy,
			String invoiceId, String paidStatus, String paymentMethod, String subTotal, String totalAmount,
			String subTotalDiscount, String currentMeter, String nextService) {
		
		this.id = id;
		this.forId = forId;
		this.item_list = item_list;
		this.unitPrice = unitPrice;
		this.quantity = quantity;
		this.discount = discount;
		this.amount = amount;
		this.invoDate = invoDate;
		this.fullName = fullName;
		this.vehNo = vehNo;
		this.checkedBy = checkedBy;
		this.invoiceId = invoiceId;
		this.paidStatus = paidStatus;
		this.paymentMethod = paymentMethod;
		this.subTotal = subTotal;
		this.totalAmount = totalAmount;
		this.subTotalDiscount = subTotalDiscount;
		this.currentMeter = currentMeter;
		this.nextService = nextService;
	}



	public Bill_Description(String forId, String item_list, String unitPrice, String quantity, String discount,
			String amount, String invoDate, String fullName, String vehNo, String checkedBy, String invoiceId,
			String paidStatus, String paymentMethod, String subTotal, String totalAmount, String subTotalDiscount,
			String currentMeter, String nextService) {
		
		this.forId = forId;
		this.item_list = item_list;
		this.unitPrice = unitPrice;
		this.quantity = quantity;
		this.discount = discount;
		this.amount = amount;
		this.invoDate = invoDate;
		this.fullName = fullName;
		this.vehNo = vehNo;
		this.checkedBy = checkedBy;
		this.invoiceId = invoiceId;
		this.paidStatus = paidStatus;
		this.paymentMethod = paymentMethod;
		this.subTotal = subTotal;
		this.totalAmount = totalAmount;
		this.subTotalDiscount = subTotalDiscount;
		this.currentMeter = currentMeter;
		this.nextService = nextService;
	}



	public Integer getId() {
		return id;
	}



	public void setId(Integer id) {
		this.id = id;
	}



	public String getForId() {
		return forId;
	}



	public void setForId(String forId) {
		this.forId = forId;
	}



	public String getItem_list() {
		return item_list;
	}



	public void setItem_list(String item_list) {
		this.item_list = item_list;
	}



	public String getUnitPrice() {
		return unitPrice;
	}



	public void setUnitPrice(String unitPrice) {
		this.unitPrice = unitPrice;
	}



	public String getQuantity() {
		return quantity;
	}



	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}



	public String getDiscount() {
		return discount;
	}



	public void setDiscount(String discount) {
		this.discount = discount;
	}



	public String getAmount() {
		return amount;
	}



	public void setAmount(String amount) {
		this.amount = amount;
	}



	public String getInvoDate() {
		return invoDate;
	}



	public void setInvoDate(String invoDate) {
		this.invoDate = invoDate;
	}



	public String getFullName() {
		return fullName;
	}



	public void setFullName(String fullName) {
		this.fullName = fullName;
	}



	public String getVehNo() {
		return vehNo;
	}



	public void setVehNo(String vehNo) {
		this.vehNo = vehNo;
	}



	public String getCheckedBy() {
		return checkedBy;
	}



	public void setCheckedBy(String checkedBy) {
		this.checkedBy = checkedBy;
	}



	public String getInvoiceId() {
		return invoiceId;
	}



	public void setInvoiceId(String invoiceId) {
		this.invoiceId = invoiceId;
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



	public String getSubTotalDiscount() {
		return subTotalDiscount;
	}



	public void setSubTotalDiscount(String subTotalDiscount) {
		this.subTotalDiscount = subTotalDiscount;
	}



	public String getCurrentMeter() {
		return currentMeter;
	}



	public void setCurrentMeter(String currentMeter) {
		this.currentMeter = currentMeter;
	}



	public String getNextService() {
		return nextService;
	}



	public void setNextService(String nextService) {
		this.nextService = nextService;
	}



	@Override
	public String toString() {
		return "Bill_Description [id=" + id + ", forId=" + forId + ", item_list=" + item_list + ", unitPrice="
				+ unitPrice + ", quantity=" + quantity + ", discount=" + discount + ", amount=" + amount + ", invoDate="
				+ invoDate + ", fullName=" + fullName + ", vehNo=" + vehNo + ", checkedBy=" + checkedBy + ", invoiceId="
				+ invoiceId + ", paidStatus=" + paidStatus + ", paymentMethod=" + paymentMethod + ", subTotal="
				+ subTotal + ", totalAmount=" + totalAmount + ", subTotalDiscount=" + subTotalDiscount
				+ ", currentMeter=" + currentMeter + ", nextService=" + nextService + "]";
	}




}	

	

	

	




