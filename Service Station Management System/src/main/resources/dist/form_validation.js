
//Add form validation

function addFormValidate() {

	$("#customerName_error_message").hide(); 
	$("#vehicleNo_error_message").hide();
	$("#typeOfVehicle_error_message").hide();
	$("#serviceType_error_message").hide();
	$("#date_error_message").hide();
	$("#time_error_message").hide();
	$("#contactNo_error_message").hide();
	$("#email_error_message").hide();
	

	var error_customerName = false;
	var error_vehicleNo = false;
	var error_typeOfVehicle = false;
	var error_serviceType = false;
	var error_date = false;
	var error_time = false;
	var error_contactNo = false;
	var error_email = false;
	

	//check_customerName();
	//check_vehicleNo();
	
	$("#customerName").focusout(function(){
		check_customerName();
    });
	
	$("#vehicleNo").focusout(function(){
		check_vehicleNo();
    });
	
	$("#typeOfVehicle").focusout(function(){
		check_typeOfVehicle();
    });
	
	$("#serviceType").focusout(function(){
		check_serviceType();
    });
	
	$("#datepicker-autoclose").focusout(function(){
		check_date();
    });
	
	$("#time").focusout(function(){
		check_time();
    });
	
	$("#contactNo").focusout(function(){
		check_contactNo();
    });
	
	$("#email").focusout(function(){
		check_email();
    });
	

	function check_customerName() {
		
		var customerName = $("#customerName").val();
		var size = customerName.length;
		
		if (customerName != '' && size>10) {
			$("#customerName_error_message").hide();
			$("#customerName").css("border-bottom", "2px solid #34F458");
		
		}else if(customerName === ''){
		
			$("#customerName_error_message").html("<i style='color:red;'>Please enter a customer name !</i>");
			$("#customerName_error_message").show();
			$("#customerName").css("border-bottom", "2px solid #F90A0A");
			error_customerName = true;
			
		}else if(size<10){
			
			$("#customerName_error_message").html("<i style='color:red;'>Customer name is too short !</i>");
			$("#customerName_error_message").show();
			$("#customerName").css("border-bottom", "2px solid #F90A0A");
			error_customerName = true;	
		
		} else {
			$("#customerName_error_message").html("<i style='color:red;'>Please enter a valid customer name !</i>");
			$("#customerName_error_message").show();
			$("#customerName").css("border-bottom", "2px solid #F90A0A");
			error_customerName = true;
		}
	}
	
	function check_vehicleNo() {
		
		var vehicleNo = $("#vehicleNo").val();
		var size = vehicleNo.length;
		var pattern = /^([A-Z][A-Z]|[A-Z][A-Z][A-Z]|[0-9][0-9]|[0-9][0-9][0-9])-(\d{4})$/; 
		
		if (vehicleNo !== '' && pattern.test(vehicleNo)) {
			$("#vehicleNo_error_message").hide();
			$("#vehicleNo").css("border-bottom", "2px solid #34F458");
		
		}else if(vehicleNo === ''){
			
			$("#vehicleNo_error_message").html("<i style='color:red;'>Please enter the vehicle number !</i>");
			$("#vehicleNo_error_message").show();
			$("#vehicleNo").css("border-bottom", "2px solid #F90A0A");
			error_vehicleNo = true;
		
		} else {
			$("#vehicleNo_error_message").html("<i style='color:red;'>Please enter a valid vehicle number !</i>");
			$("#vehicleNo_error_message").show();
			$("#vehicleNo").css("border-bottom", "2px solid #F90A0A");
			error_vehicleNo = true;
		}
	}
	
	function check_typeOfVehicle() {
		
		var typeOfVehicle = $('#typeOfVehicle option').filter(':selected').text();
		
		if (typeOfVehicle !== "Select your vehicle") { 
			$("#typeOfVehicle_error_message").hide();
			$("#typeOfVehicle").css("border-bottom", "2px solid #34F458");
		} else {
			$("#typeOfVehicle_error_message").html("<i style='color:red;'>Please select a vehicle type !</i>");
			$("#typeOfVehicle_error_message").show();
			$("#typeOfVehicle").css("border-bottom", "2px solid #F90A0A");
			error_typeOfVehicle = true;
		}
	}
	
	function check_serviceType() {
		
		var serviceType = $('#serviceType option').filter(':selected').text(); 
		
		
		if (serviceType !== 'Select service type') {
			
			$("#serviceType_error_message").hide();
			$("#serviceType").css("border-bottom", "2px solid #34F458");
		
		
		} else {
			
			$("#serviceType_error_message").html("<i style='color:red;'>Please select a service type or types !</i>");
			$("#serviceType_error_message").show();
			$("#serviceType").css("border-bottom", "2px solid #F90A0A");
			error_serviceType = true;
		}
	}
	
		function check_date() {
		
		var year = new Date().getFullYear();
		var month = new Date().getMonth()+1;
		var future_month = month+1;
		var day = new Date().getDate();
		
		var check_date = month+"/"+day+"/"+year;
		var dispaly_date = year+"/"+month+"/"+day;
		var future_date = future_month+"/"+day+"/"+year;
		
		var date = $("#datepicker-autoclose").val(); 
		
		if (date != '' && date >= check_date && date <= future_date) {
			$("#date_error_message").hide();
			$("#datepicker-autoclose").css("border-bottom", "2px solid #34F458");
		
		}else if(date === '') {
			
			$("#date_error_message").html("<i style='color:red;font-size: 0.9em'>Please select a date !</i>");
			$("#date_error_message").show();
			$("#datepicker-autoclose").css("border-bottom", "2px solid #F90A0A");
			error_date = true;
		
		}else if(date >= future_date){
		
			$("#date_error_message").html("<i style='color:red;font-size: 0.9em'>Please select a date one month in advance !</i>");
			$("#date_error_message").show();
			$("#datepicker-autoclose").css("border-bottom", "2px solid #F90A0A");
			error_date = true;
		
		} else {
			$("#date_error_message").html("<i style='color:red;font-size: 0.9em'>Please select a valid date !</i>");
			$("#date_error_message").show();
			$("#datepicker-autoclose").css("border-bottom", "2px solid #F90A0A");
			error_date = true;
		}
		
		
	}

	function check_time() {
	
	var time = $("#time").val();
	
	if (time != '' && time >= '08:00' && time <= '17:00') {
		$("#time_error_message").hide();
		$("#time").css("border-bottom", "2px solid #34F458");

	}else if(time === ''){
		
		$("#time_error_message").html("<i style='color:red;'>Please select a time. !</i>");
		$("#time_error_message").show();
		$("#time").css("border-bottom", "2px solid #F90A0A");
		error_time = true;
	
	//time > current time	
	
	} else {
		$("#time_error_message").html("<i style='color:red;font-size: 0.9em'>Please select a valid time ! (08:00 AM - 05:00 PM)</i>");
		$("#time_error_message").show();
		$("#time").css("border-bottom", "2px solid #F90A0A");
		error_time = true;
	}
}
	
	
	function check_contactNo() {
		
		var contactNo = $("#contactNo").val();
		var pattern = /^([0])(\d{9})$/;
		
		if (contactNo != '' && pattern.test(contactNo)) {
			$("#contactNo_error_message").hide();
			$("#contactNo").css("border-bottom", "2px solid #34F458");

		}else if(contactNo === ''){
			
			$("#contactNo_error_message").html("<i style='color:red;'>Please enter a contact number !</i>");
			$("#contactNo_error_message").show();
			$("#contactNo").css("border-bottom", "2px solid #F90A0A");
			error_contactNo = true;
		
		
		} else {
			$("#contactNo_error_message").html("<i style='color:red'>Please enter a valid contact number ! </i>");
			$("#contactNo_error_message").show();
			$("#contactNo").css("border-bottom", "2px solid #F90A0A");
			error_contactNo = true;
		}
	}
	
		function check_email() {
		
		var email = $("#email").val();
		var pattern = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/g;  
		
		if (email === '' || pattern.test(email)) {
			$("#email_error_message").hide();
			$("#email").css("border-bottom", "2px solid #34F458");


		} else {
			$("#email_error_message").html("<i style='color:red'>Please enter a valid email address ! </i>");
			$("#email_error_message").show();
			$("#email").css("border-bottom", "2px solid #F90A0A");
			error_email = true;
		}
	}
	

	//error_customerName = false;

	check_customerName();  
	check_vehicleNo();
	check_typeOfVehicle();
	check_serviceType();
	check_date();
	check_time();
	check_contactNo();
	check_email();
	

	if (error_customerName === false && error_vehicleNo === false && error_typeOfVehicle === false && error_serviceType == false 
		&& error_date === false && error_time === false && error_contactNo === false && error_email === false) {

		saveForm();
		
		return true;

	} else {

		return false;
	}

};


//Edit form validation

function editFormValidate() {

	$("#customerName_error_message").hide(); 
	$("#vehicleNo_error_message").hide();
	$("#typeOfVehicle_error_message").hide();
	$("#serviceType_error_message").hide();
	$("#date_error_message").hide();
	$("#time_error_message").hide();
	$("#contactNo_error_message").hide();
	$("#email_error_message").hide();
	

	var error_customerName = false;
	var error_vehicleNo = false;
	var error_typeOfVehicle = false;
	var error_serviceType = false;
	var error_date = false;
	var error_time = false;
	var error_contactNo = false;
	var error_email = false;
	

	//check_customerName();
	//check_vehicleNo();
	
	$("#customerName").focusout(function(){
		check_customerName();
    });
	
	$("#vehicleNo").focusout(function(){
		check_vehicleNo();
    });
	
	$("#typeOfVehicle").focusout(function(){
		check_typeOfVehicle();
    });
	
	$("#serviceType").focusout(function(){
		check_serviceType();
    });
	
	$("#datepicker-autoclose").focusout(function(){
		check_date();
    });
	
	$("#time").focusout(function(){
		check_time();
    });
	
	$("#contactNo").focusout(function(){
		check_contactNo();
    });
	
	$("#email").focusout(function(){
		check_email();
    });
	

	function check_customerName() {
		
		var customerName = $("#customerName").val();
		var size = customerName.length;
		
		if (customerName != '' && size>10) {
			$("#customerName_error_message").hide();
			$("#customerName").css("border-bottom", "2px solid #34F458");
		
		}else if(customerName === ''){
		
			$("#customerName_error_message").html("<i style='color:red;'>Please enter a customer name !</i>");
			$("#customerName_error_message").show();
			$("#customerName").css("border-bottom", "2px solid #F90A0A");
			error_customerName = true;
			
		}else if(size<10){
			
			$("#customerName_error_message").html("<i style='color:red;'>Customer name is too short !</i>");
			$("#customerName_error_message").show();
			$("#customerName").css("border-bottom", "2px solid #F90A0A");
			error_customerName = true;	
		
		} else {
			$("#customerName_error_message").html("<i style='color:red;'>Please enter a valid customer name !</i>");
			$("#customerName_error_message").show();
			$("#customerName").css("border-bottom", "2px solid #F90A0A");
			error_customerName = true;
		}
	}
	
	function check_vehicleNo() {
		
		var vehicleNo = $("#vehicleNo").val();
		var size = vehicleNo.length;
		var pattern = /^([A-Z][A-Z]|[A-Z][A-Z][A-Z]|[0-9][0-9]|[0-9][0-9][0-9])-(\d{4})$/; 
		
		if (vehicleNo !== '' && pattern.test(vehicleNo)) {
			$("#vehicleNo_error_message").hide();
			$("#vehicleNo").css("border-bottom", "2px solid #34F458");
		
		}else if(vehicleNo === ''){
			
			$("#vehicleNo_error_message").html("<i style='color:red;'>Please enter the vehicle number !</i>");
			$("#vehicleNo_error_message").show();
			$("#vehicleNo").css("border-bottom", "2px solid #F90A0A");
			error_vehicleNo = true;
		
		} else {
			$("#vehicleNo_error_message").html("<i style='color:red;'>Please enter a valid vehicle number !</i>");
			$("#vehicleNo_error_message").show();
			$("#vehicleNo").css("border-bottom", "2px solid #F90A0A");
			error_vehicleNo = true;
		}
	}
	
	
	
	function check_typeOfVehicle() {
		
		var typeOfVehicle = $('#typeOfVehicle option').filter(':selected').text();
		
		if (typeOfVehicle !== "Select your vehicle") { 
			$("#typeOfVehicle_error_message").hide();
			$("#typeOfVehicle").css("border-bottom", "2px solid #34F458");
		} else {
			$("#typeOfVehicle_error_message").html("<i style='color:red;'>Please select a vehicle type !</i>");
			$("#typeOfVehicle_error_message").show();
			$("#typeOfVehicle").css("border-bottom", "2px solid #F90A0A");
			error_typeOfVehicle = true;
		}
	}
	
	function check_serviceType() {
		
		var serviceType = $('#serviceType option').filter(':selected').text(); 
		
		
		if (serviceType !== '') {
			
			$("#serviceType_error_message").hide();
			$("#serviceType").css("border-bottom", "2px solid #34F458");
		
		
		
		}else if(serviceType === ''){
			
			$("#serviceType_error_message").html("<i style='color:red;'>Please select a service type or types !</i>");
			$("#serviceType_error_message").show();
			$("#serviceType").css("border-bottom", "2px solid #F90A0A");
			error_serviceType = true;
		
		
		
		} else {
			
			$("#serviceType_error_message").html("<i style='color:red;'>Please select a service type or types !</i>");
			$("#serviceType_error_message").show();
			$("#serviceType").css("border-bottom", "2px solid #F90A0A");
			error_serviceType = true;
		}
	}
	
		
	
		function check_date() {
		
		var year = new Date().getFullYear();
		var month = new Date().getMonth()+1;
		var future_month = month+1;
		var day = new Date().getDate();
		
		var check_date = month+"/"+day+"/"+year;
		var dispaly_date = year+"/"+month+"/"+day;
		var future_date = future_month+"/"+day+"/"+year;
		
		var date = $("#datepicker-autoclose").val(); 
		
		if (date != '' && date >= check_date && date <= future_date) {
			$("#date_error_message").hide();
			$("#datepicker-autoclose").css("border-bottom", "2px solid #34F458");
		
		}else if(date === '') {
			
			$("#date_error_message").html("<i style='color:red;font-size: 0.9em'>Please select a date !</i>");
			$("#date_error_message").show();
			$("#datepicker-autoclose").css("border-bottom", "2px solid #F90A0A");
			error_date = true;
		
		}else if(date >= future_date){
		
			$("#date_error_message").html("<i style='color:red;font-size: 0.9em'>Please select a date one month in advance !</i>");
			$("#date_error_message").show();
			$("#datepicker-autoclose").css("border-bottom", "2px solid #F90A0A");
			error_date = true;
		
		} else {
			$("#date_error_message").html("<i style='color:red;font-size: 0.9em'>Please select a valid date !</i>");
			$("#date_error_message").show();
			$("#datepicker-autoclose").css("border-bottom", "2px solid #F90A0A");
			error_date = true;
		}
		
		
	}

	function check_time() {
	
	var time = $("#time").val();
	
	if (time != '' && time >= '08:00' && time <= '17:00') {
		$("#time_error_message").hide();
		$("#time").css("border-bottom", "2px solid #34F458");

	}else if(time === ''){
		
		$("#time_error_message").html("<i style='color:red;'>Please select a time. !</i>");
		$("#time_error_message").show();
		$("#time").css("border-bottom", "2px solid #F90A0A");
		error_time = true;
	
	//time > current time	
	
	} else {
		$("#time_error_message").html("<i style='color:red;font-size: 0.9em'>Please select a valid time ! (08:00 AM - 05:00 PM)</i>");
		$("#time_error_message").show();
		$("#time").css("border-bottom", "2px solid #F90A0A");
		error_time = true;
	}
}
	
	
	function check_contactNo() {
		
		var contactNo = $("#contactNo").val();
		var pattern = /^([0])(\d{9})$/;
		
		if (contactNo != '' && pattern.test(contactNo)) {
			$("#contactNo_error_message").hide();
			$("#contactNo").css("border-bottom", "2px solid #34F458");

		}else if(contactNo === ''){
			
			$("#contactNo_error_message").html("<i style='color:red;'>Please enter a contact number !</i>");
			$("#contactNo_error_message").show();
			$("#contactNo").css("border-bottom", "2px solid #F90A0A");
			error_contactNo = true;
		
		
		} else {
			$("#contactNo_error_message").html("<i style='color:red'>Please enter a valid contact number ! </i>");
			$("#contactNo_error_message").show();
			$("#contactNo").css("border-bottom", "2px solid #F90A0A");
			error_contactNo = true;
		}
	}
	
		function check_email() {
		
		var email = $("#email").val();
		var pattern = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/g;  
		
		if (email === '' || pattern.test(email)) {
			$("#email_error_message").hide();
			$("#email").css("border-bottom", "2px solid #34F458");


		} else {
			$("#email_error_message").html("<i style='color:red'>Please enter a valid email address ! </i>");
			$("#email_error_message").show();
			$("#email").css("border-bottom", "2px solid #F90A0A");
			error_email = true;
		}
	}
	

	//error_customerName = false;

	check_customerName();  
	check_vehicleNo();
	check_typeOfVehicle();
	check_serviceType();
	check_date();
	check_time();
	check_contactNo();
	check_email();
	

	if (error_customerName === false && error_vehicleNo === false && error_typeOfVehicle === false && error_serviceType == false 
		&& error_date === false && error_time === false && error_contactNo === false && error_email === false) {

		saveEditForm();
		
		return true;

	} else {

		return false;
	}

};


// Inbox Edit form validation

function inboxEditFormValidate() {

	$("#inbox_date_error_message").hide();
	$("#inbox_time_error_message").hide();
	
	var error_date = false;
	var error_time = false;

	
	$("#datepicker-autoclose").focusout(function(){
		check_date();
    });
	
	$("#edit_time").focusout(function(){
		check_time();
    });
	
	
		function check_date() {
		
		var year = new Date().getFullYear();
		var month = new Date().getMonth()+1;
		var future_month = month+1;
		var day = new Date().getDate();
		
		var check_date = month+"/"+day+"/"+year;
		var dispaly_date = year+"/"+month+"/"+day;
		var future_date = future_month+"/"+day+"/"+year;
		
		var date = $("#datepicker-autoclose").val(); 
		
		if (date != '' && date >= check_date && date <= future_date) {
			$("#inbox_date_error_message").hide();
			$("#datepicker-autoclose").css("border-bottom", "2px solid #34F458");
		
		}else if(date === '') {
			
			$("#inbox_date_error_message").html("<i style='color:red;font-size: 0.9em'>Please select a date !</i>");
			$("#inbox_date_error_message").show();
			$("#datepicker-autoclose").css("border-bottom", "2px solid #F90A0A");
			error_date = true;
		
		}else if(date >= future_date){
		
			$("#inbox_date_error_message").html("<i style='color:red;font-size: 0.9em'>Please select a date one month in advance !</i>");
			$("#inbox_date_error_message").show();
			$("#datepicker-autoclose").css("border-bottom", "2px solid #F90A0A");
			error_date = true;
		
		} else {
			$("#inbox_date_error_message").html("<i style='color:red;font-size: 0.9em'>Please select a valid date !</i>");
			$("#inbox_date_error_message").show();
			$("#datepicker-autoclose").css("border-bottom", "2px solid #F90A0A");
			error_date = true;
		}
		
		
	}

	function check_time() {
	
	var time = $("#edit_time").val();
	
	if (time != '' && time >= '08:00' && time <= '17:00') {
		$("#inbox_time_error_message").hide();
		$("#edit_time").css("border-bottom", "2px solid #34F458");

	}else if(time === ''){
		
		$("#inbox_time_error_message").html("<i style='color:red;'>Please select a time. !</i>");
		$("#inbox_time_error_message").show();
		$("#edit_time").css("border-bottom", "2px solid #F90A0A");
		error_time = true;
	
	
	} else {
		$("#inbox_time_error_message").html("<i style='color:red;font-size: 0.9em'>Please select a valid time ! (08:00 AM - 05:00 PM)</i>");
		$("#inbox_time_error_message").show();
		$("#edit_time").css("border-bottom", "2px solid #F90A0A");
		error_time = true;
	}
}
	

	check_date();
	check_time();
	
	

	if (error_date === false && error_time === false) {

		saveInboxEditForm();
		//$('#editModal').modal('hide');
		
		
		return true;

	} else {

		return false;
	}

};




