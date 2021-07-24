


function validateAttendance() {

	$("#employeeName_error_message").hide();
	$("#employeeStatus_error_message").hide();
	$("#employeeInTime_error_message").hide();
	$("#employeeOutTime_error_message").hide();

	
	

	var error_employeeName = false;
	var error_employeeStatus = false;
	var error_employeeInTime = false;
	var error_employeeOutTime = false;
	
	


	
	$("#employees_list").focusout(function(){
		check_employeeName();
    });
	
	$("#employeeStatus").focusout(function(){
		check_employeeStatus();
    });
	
	$("#inTime").focusout(function(){
		check_employeeInTime();
    });
	
	$("#inTime").focusout(function(){
		check_employeeOutTime();
    });
	
	
	
	
	

	function check_employeeName() {
		
		var employeeName = $('#employees_list option').filter(':selected').text();
		//var size = empFname.length;
		
		if (employeeName != 'Select Employee' && employeeName != '') {
			$("#employeeName_error_message").hide();
			$("#employees_list").css("border-bottom", "2px solid #34F458");
		
		}else {
			$("#employeeName_error_message").html("<i style='color:#C2000D;font-size: 0.8em'>Employee not selected !</i>");
			$("#employeeName_error_message").show();
			$("#employees_list").css("border-bottom", "2px solid #C2000D");
			error_employeeName = true;
		}
	}
	
	
	function check_employeeStatus() {
		
		var status = $("input[name='attStatus']:checked").val();
		//var size = empFname.length;
		
		if (status === 'P' || status === 'AB') {
			$("#employeeStatus_error_message").hide();
			$("#employeeStatus").css("border-bottom", "2px solid #34F458");
			
		
		}else {
			$("#employeeStatus_error_message").html("<i style='color:#C2000D;font-size: 0.8em'>Status ?</i>");
			$("#employeeStatus_error_message").show();
			$("#employeeStatus").css("border-bottom", "2px solid #C2000D");
			
			error_employeeName = true;
			//alert(status);
		}
	}
	
	
	function check_employeeInTime() {
		
		var employeeInTime = $("#inTime").val();
		var status = $("input[name='attStatus']:checked").val();
		
		if(status === 'AB'){
			
			error_employeeInTime = false;
			
		
		}else if (status === 'P' && employeeInTime != '' && employeeInTime >= '08:00' && employeeInTime <= '17:00') {
			$("#employeeInTime_error_message").hide();
			$("#inTime").css("border-bottom", "2px solid #34F458");
		
		}else if(employeeInTime === '') {
			$("#employeeInTime_error_message").html("<i style='color:#C2000D;font-size: 0.8em'>Please enter in time !</i>");
			$("#employeeInTime_error_message").show();
			$("#inTime").css("border-bottom", "2px solid #C2000D");
			error_employeeInTime = true;
			
		}else{
			$("#employeeInTime_error_message").html("<i style='color:#C2000D;font-size: 0.8em'>Please select valid time !</i>");
			$("#employeeInTime_error_message").show();
			$("#inTime").css("border-bottom", "2px solid #F90A0A");
			error_employeeInTime = true;
		}
	}
	
	
	function check_employeeOutTime() {
		
		var employeeOutTime = $("#outTime").val();
		var status = $("input[name='attStatus']:checked").val();
		
		if(status === 'AB'){
			
			error_employeeInTime = false;
		
		}else if (status === 'P' && employeeOutTime != '' && employeeOutTime >= '08:00' && employeeOutTime <= '17:00') {
			$("#employeeOutTime_error_message").hide();
			$("#outTime").css("border-bottom", "2px solid #34F458");
		
		}else if(employeeOutTime === '') {
			$("#employeeOutTime_error_message").html("<i style='color:#C2000D;font-size: 0.8em'>Please enter out time !</i>");
			$("#employeeOutTime_error_message").show();
			$("#outTime").css("border-bottom", "2px solid #C2000D");
			error_employeeOutTime = true;
		
		}else{
			$("#employeeOutTime_error_message").html("<i style='color:#C2000D;font-size: 0.8em'>Please select valid time !</i>");
			$("#employeeOutTime_error_message").show();
			$("#outTime").css("border-bottom", "2px solid #F90A0A");
			error_employeeOutTime = true;
		}
	}


	


	check_employeeName();
	check_employeeStatus();
	check_employeeInTime();
	check_employeeOutTime();
	
	
	
	

	if (error_employeeName === false && error_employeeStatus === false && error_employeeInTime === false && error_employeeOutTime === false) {

		saveAttendanceForm();
		
		return true;

	} else {

		
		return false;
	}

};


// validate over time modal


function validateOverTime() {

	$("#employeeOtFrom_error_message").hide();
	

	
	
	var error_employeeOtFromTime = false;
	
	
	
	
	$("#otFrom").mouseout(function(){
		check_employeeOtFromTime();
    });
	
	$("#otTo").mouseout(function(){
		check_employeeOtFromTime();
    });
	

	
	
	function check_employeeOtFromTime() {
		
		var employeeOtFrom = $('#otFrom').val();
		var employeeOtTo = $('#otTo').val();
		
		if (employeeOtFrom != '' && employeeOtTo != '' && employeeOtFrom >= '17:00' && employeeOtFrom <= '19:00' && employeeOtTo > '17:00' && employeeOtTo <= '19:00') {
			$("#employeeOtFrom_error_message").hide();
			
		
		}else {
			$("#employeeOtFrom_error_message").html("<i style='color:#C2000D;font-size: 0.8em'>Please enter valid time periods !</i>");
			$("#employeeOtFrom_error_message").show();
			
			error_employeeOtFromTime = true;
		}
	}
	
	

	
	
	check_employeeOtFromTime();
	

	
	
	if (error_employeeOtFromTime === false) {

		add_ot();
		//$(".save").attr("data-dismiss", "modal");
		//$('#otForm')[0].reset();
		$('.save').attr("data-dismiss","modal"); 
		
		return true;

	} else {

		
		return false;
	}

};






