
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
		
			$("#customerName_error_message").html("<i style='color:red;font-size: 0.9em'>Please enter a customer name !</i>");
			$("#customerName_error_message").show();
			$("#customerName").css("border-bottom", "2px solid #F90A0A");
			error_customerName = true;
			
		}else if(size<10){
			
			$("#customerName_error_message").html("<i style='color:red;font-size: 0.9em'>Customer name is too short !</i>");
			$("#customerName_error_message").show();
			$("#customerName").css("border-bottom", "2px solid #F90A0A");
			error_customerName = true;	
		
		} else {
			$("#customerName_error_message").html("<i style='color:red;font-size: 0.9em'>Please enter a valid customer name !</i>");
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
			
			$("#vehicleNo_error_message").html("<i style='color:red;font-size: 0.9em'>Please enter the vehicle number !</i>");
			$("#vehicleNo_error_message").show();
			$("#vehicleNo").css("border-bottom", "2px solid #F90A0A");
			error_vehicleNo = true;
		
		} else {
			$("#vehicleNo_error_message").html("<i style='color:red;font-size: 0.9em'>Please enter a valid vehicle number !</i>");
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
			
		}else {
			$("#typeOfVehicle_error_message").html("<i style='color:red;font-size: 0.9em'>Please select a vehicle type !</i>");
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
			
			$("#serviceType_error_message").html("<i style='color:red;font-size: 0.9em'>Please select a service type or types !</i>");
			$("#serviceType_error_message").show();
			$("#serviceType").css("border-bottom", "2px solid #F90A0A");
			error_serviceType = true;
		}
	}
	
	
	function check_date() {
		
			var date1 = new Date();

			var dd = (date1.getDate() < 10 ? '0' : '') + date1.getDate();
			var mm = ((date1.getMonth() + 1) < 10 ? '0' : '') + (date1.getMonth() + 1);
			var yyyy = date1.getFullYear();
		
			var check_date = mm+"/"+dd+"/"+yyyy;
			
			var futureMonth = ((date1.getMonth() + 2) < 10 ? '0' : '') + (date1.getMonth() + 2);
			var check_future_Month = futureMonth+"/"+dd+"/"+yyyy;
		
			var date = $("#datepicker-autoclose").val(); 
		
		
		if (date !== '' && date >= check_date && date <= check_future_Month) {
			$("#date_error_message").hide();
			$("#datepicker-autoclose").css("border-bottom", "2px solid #34F458");
			
		
		}else if(date === ''){
			
			$("#date_error_message").html("<i style='color:red;font-size: 0.9em'>Please select a date!</i>");
			$("#date_error_message").show();
			$("#datepicker-autoclose").css("border-bottom", "2px solid #F90A0A");
			error_date = true;
		
		
		}else if(date < check_date){
			
			$("#date_error_message").html("<i style='color:red;font-size: 0.9em'>The date you selected has already passed!</i>");
			$("#date_error_message").show();
			$("#datepicker-autoclose").css("border-bottom", "2px solid #F90A0A");
			error_date = true;
			
		}else if(date >= check_future_Month){
			
			$("#date_error_message").html("<i style='color:red;font-size: 0.9em'>Please select a date within one month from today!</i>");
			$("#date_error_message").show();
			$("#datepicker-autoclose").css("border-bottom", "2px solid #F90A0A");
			error_date = true;	
			
		
		}else {
			$("#date_error_message").html("<i style='color:red;font-size: 0.9em'>Please select a valid date!</i>");
			$("#date_error_message").show();
			$("#datepicker-autoclose").css("border-bottom", "2px solid #F90A0A");
			error_date = true;
		}
		
		
	}

		
		function get_start_time() {
			
			var time = $("#time").val();
			
			var bookTime;
		    $.ajax({
		        url: "/booking/boookingTimes?theTimePeriod="+time,
		        type: 'get',
		        async:false,
		        data: {},
		        success: function (data) {
		        	
		        	
		        	bookTime = data;
		        	
		        	
		        },
		        
		    	});
		    		return bookTime;	
		}
		
		
	
		
	function check_time() {
	
	var time = $("#time").val();
	
	var d = new Date();
	var hour = (d.getHours() < 10 ? '0' : '') + d.getHours();
	var minute = (d.getMinutes() < 10 ? '0' : '') + d.getMinutes();
	var current_time1 = hour+":"+minute;
	var current_time = current_time1.toString();
	
	
	var start_Time1 = get_start_time();
	var start_Time = start_Time1.toString();
	
	
	var date1 = new Date();

	var dd = (date1.getDate() < 10 ? '0' : '') + date1.getDate();
	var mm = ((date1.getMonth() + 1) < 10 ? '0' : '') + (date1.getMonth() + 1);
	var yyyy = date1.getFullYear();

	var check_date = mm+"/"+dd+"/"+yyyy;

	var date = $("#datepicker-autoclose").val(); 
	
	
	if (time !== '' && !(date === check_date && start_Time < current_time)) {
		$("#time_error_message").hide();
		$("#time").css("border-bottom", "2px solid #0000FF");
		
		
	}else if(time === ''){
		$("#time_error_message").html("<i style='color:red;font-size: 0.9em'>Please select a time");
		$("#time_error_message").show();
		$("#time").css("border-bottom", "2px solid #F90A0A");
		error_time = true;
	
	}else if(date === check_date && start_Time < current_time){
		$("#time_error_message").html("<i style='color:red;font-size: 0.9em'>This time has passed! Please check the current time");
		$("#time_error_message").show();
		$("#time").css("border-bottom", "2px solid #F90A0A");
		error_time = true;	
	
	} else {
		$("#time_error_message").html("<i style='color:red;font-size: 0.9em'>Please select a valid time!");
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
			
			$("#contactNo_error_message").html("<i style='color:red;font-size: 0.9em'>Please enter a contact number !</i>");
			$("#contactNo_error_message").show();
			$("#contactNo").css("border-bottom", "2px solid #F90A0A");
			error_contactNo = true;
		
		
		} else {
			$("#contactNo_error_message").html("<i style='color:red;font-size: 0.9em'>Please enter a valid contact number ! </i>");
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
			$("#email").css("border-bottom", "2px solid #0000FF");


		} else {
			$("#email_error_message").html("<i style='color:red;font-size: 0.9em'>Please enter a valid email address ! </i>");
			$("#email_error_message").show();
			$("#email").css("border-bottom", "2px solid #F90A0A");
			error_email = true;
		}
	}
	
	
	


	check_customerName();  
	check_vehicleNo();
	check_typeOfVehicle();
	check_serviceType();
	check_date();
	check_time();
	check_contactNo();
	check_email();
	

	if (error_customerName === false && error_vehicleNo === false && error_typeOfVehicle === false && error_serviceType === false
		&& error_date === false && error_time === false && error_contactNo === false && error_email === false) {

		//alert("ABC");
		saveBookForm();
		
		return true;

	} else {

		return false;
	}

};






