
//Add employee form validation for pg 1

function addEmpFormValidatepg1() {

	$("#empFname_error_message").hide();
	$("#empLname_error_message").hide();
	$("#empAddrss_error_message").hide();
	$("#empGender_error_message").hide();
	$("#empNIC_error_message").hide();
	$("#empDOB_error_message").hide();
	$("#empStatus_error_message").hide();

	
	

	var error_empFname = false;
	var error_empLname = false;
	var error_empAddrss = false;
	var error_empGender = false;
	var error_empNIC = false;
	var error_empDOB = false;
	var error_empStatus = false;
	


	
	$("#empFname").mouseout(function(){
		check_empFname();
    });
	
	$("#empLname").mouseout(function(){
		check_empLname();
    });
	
	$("#empAddrss").mouseout(function(){
		check_empAddrss();
    });
	
	$("#radio").mouseout(function(){
		check_empGender();
    });
	
	$("#empNIC").mouseout(function(){
		check_empNIC();
    });
	
	$("#empDOB").mouseout(function(){
		check_empDOB();
    });
	
	$("#radio2").mouseout(function(){
		check_empStatus();
    });
	
	
	

	function check_empFname() {
		
		var empFname = $("#empFname").val();
		var size = empFname.length;
		
		if (empFname != '' && size>3) {
			$("#empFname_error_message").hide();
			$("#empFname").css("border-bottom", "2px solid #34F458");
		
		}else if(empFname === ''){
		
			$("#empFname_error_message").html("<i style='color:#C2000D;'>Please enter the employee first name !</i>");
			$("#empFname_error_message").show();
			$("#empFname").css("border-bottom", "2px solid #C2000D");
			error_empFname = true;
			
		}else {
			$("#empFname_error_message").html("<i style='color:#C2000D;'>Employee first name is too short !</i>");
			$("#empFname_error_message").show();
			$("#empFname").css("border-bottom", "2px solid #C2000D");
			error_empFname = true;
		}
	}
	
	
	function check_empLname() {
		
		var empLname = $("#empLname").val();
		var size = empLname.length;
		
		if (empLname != '' && size>3) {
			$("#empLname_error_message").hide();
			$("#empLname").css("border-bottom", "2px solid #34F458");
		
		}else if(empLname === ''){
		
			$("#empLname_error_message").html("<i style='color:#C2000D;'>Please enter the employee last name !</i>");
			$("#empLname_error_message").show();
			$("#empLname").css("border-bottom", "2px solid #C2000D");
			error_empLname = true;
			
		}else {
			$("#empLname_error_message").html("<i style='color:#C2000D;'>Employee last name is too short !</i>");
			$("#empLname_error_message").show();
			$("#empLname").css("border-bottom", "2px solid #C2000D");
			error_empLname = true;
		}
	}
	
	
	function check_empAddrss() {
		
		var empAddrss = $("#empAddrss").val();
		var size = empAddrss.length;
		
		if (empAddrss != '' && size>10) {
			$("#empAddrss_error_message").hide();
			$("#empAddrss").css("border-bottom", "2px solid #34F458");
		
		}else if(empAddrss === ''){
		
			$("#empAddrss_error_message").html("<i style='color:#C2000D;'>Please enter the employee address !</i>");
			$("#empAddrss_error_message").show();
			$("#empAddrss").css("border-bottom", "2px solid #C2000D");
			error_empAddrss = true;
			
		}else {
			$("#empAddrss_error_message").html("<i style='color:#C2000D;'>Please enter a valid address !</i>");
			$("#empAddrss_error_message").show();
			$("#empAddrss").css("border-bottom", "2px solid #C2000D");
			error_empAddrss = true;
		}
	}


	
	function check_empGender() {

	
	if ($("input[name='empGender']:checked").val()) {
		$("#empGender_error_message").hide();
		$("#radio").css("border-bottom", "2px solid #34F458");
		$("#radio").css("border-top", "2px solid #34F458");
		$("#radio").css("border-left", "2px solid #34F458");
		$("#radio").css("border-right", "2px solid #34F458");
	
	}else {
		$("#empGender_error_message").html("<i style='color:#C2000D;'>Please select the employee's gender !</i>");
		$("#empGender_error_message").show();
		$("#radio").css("border-bottom", "2px solid #C2000D");
		$("#radio").css("border-top", "2px solid #C2000D");
		$("#radio").css("border-left", "2px solid #C2000D");
		$("#radio").css("border-right", "2px solid #C2000D");
		error_empGender = true;
	}
}
	
	
	
	function check_empNIC() {
		
			var empNIC = $("#empNIC").val();
			var pattern = /^(([0-9])\d{8})([V])|(\d{12})$/;
		
		if (empNIC != '' && pattern.test(empNIC)) {
			$("#empNIC_error_message").hide();
			$("#empNIC").css("border-bottom", "2px solid #34F458");
			
		
		}else if (empNIC === '' ){
			
			$("#empNIC_error_message").html("<i style='color:#C2000D;'>Please enter the employee's NIC !</i>");
			$("#empNIC_error_message").show();
			$("#empNIC").css("border-bottom", "2px solid #C2000D");
			error_empNIC = true;
		
		}else {
			$("#empNIC_error_message").html("<i style='color:#C2000D;'>Please enter valid NIC !</i>");
			$("#empNIC_error_message").show();
			$("#empNIC").css("border-bottom", "2px solid #C2000D");
			error_empNIC = true;
		}
	}
	
	
	
	function check_empDOB() {
		
		var empDOB = $("#empDOB").val();
		var pattern = /^([1][9][0-9][0-9][/][0-9][0-9][/][0-9][0-9])$/;
	
	if (empDOB != '' && pattern.test(empDOB)) {
		$("#empDOB_error_message").hide();
		$("#empDOB").css("border-bottom", "2px solid #34F458");
		
	
	}else if (empDOB === '' ){
		
		$("#empDOB_error_message").html("<i style='color:#C2000D;'>Please enter the employee's date of birth !</i>");
		$("#empDOB_error_message").show();
		$("#empDOB").css("border-bottom", "2px solid #C2000D");
		error_empDOB = true;
	
	
	
	}else {
		$("#empDOB_error_message").html("<i style='color:#C2000D;'>Please enter the date of birth in this format e.g: 19XX/XX/XX</i>");
		$("#empDOB_error_message").show();
		$("#empDOB").css("border-bottom", "2px solid #C2000D");
		error_empDOB = true;
	}
}
	
	
	
	function check_empStatus() {

		if ($("input[name='empStatus']:checked").val()) {
			$("#empStatus_error_message").hide();
			$("#radio2").css("border-bottom", "2px solid #34F458");
			$("#radio2").css("border-top", "2px solid #34F458");
			$("#radio2").css("border-left", "2px solid #34F458");
			$("#radio2").css("border-right", "2px solid #34F458");
		
		}else {
			$("#empStatus_error_message").html("<i style='color:#C2000D;'>Please select the employee's status !</i>");
			$("#empStatus_error_message").show();
			$("#radio2").css("border-bottom", "2px solid #C2000D");
			$("#radio2").css("border-top", "2px solid #C2000D");
			$("#radio2").css("border-left", "2px solid #C2000D");
			$("#radio2").css("border-right", "2px solid #C2000D");
			error_empStatus = true;
		}
	}

	


	check_empFname();
	check_empLname();
	check_empAddrss();
	check_empGender();
	check_empNIC();
	check_empDOB();
	check_empStatus();
	
	
	

	if (error_empFname === false && error_empLname === false && error_empAddrss === false && error_empGender === false 
		&& error_empNIC === false && error_empDOB === false && error_empStatus === false) {

		//saveAddEmpForm();
		
		return true;

	} else {

		//swal("", "Please check the form again!", "warning");
		return false;
	}

};


// Add employee form validation for pg 2


function addEmpFormValidatepg2() {

	$("#empTypeJob_error_message").hide();
	$("#empJobStDate_error_message").hide();
	$("#empContNo_error_message").hide();
	$("#empWkExp_error_message").hide();
	$("#empEduQualfi_error_message").hide();
	$("#empEmail_error_message").hide();
	$("#empAddInfo_error_message").hide();
	$("#empAgree_error_message").hide();

	
	

	var error_empTypeJob = false;
	var error_empJobStDate = false;
	var error_empContNo = false;
	var error_empWkExp = false;
	var error_empEduQualfi = false;
	var error_empEmail = false;
	var error_empAddInfo = false;
	var error_empAgree = false;
	
	


	
	$("#empTypeJob").focusout(function(){
		check_empTypeJob();
    });
	
	$("#empJobStDate").focusout(function(){
		check_empJobStDate();
    });
	
	$("#empContNo").focusout(function(){
		check_empContNo();
    });
	
	$("#empWkExp").focusout(function(){
		check_empWkExp();
    });
	
	$("#empEduQualfi").focusout(function(){
		check_empEduQualfi();
    });
	
	$("#empEmail").focusout(function(){
		check_empEmail();
    });
	
	$("#empAddInfo").focusout(function(){
		check_empAddInfo();
    });
	
	$("#empAgree").focusout(function(){
		check_empAgree();
    });
	
	
	
	
	
	

	function check_empTypeJob() {
		
		var empTypeJob = $('#empTypeJob option').filter(':selected').text();
		
		if (empTypeJob !== "Select Employee Type" && empTypeJob !== "") { 
			$("#empTypeJob_error_message").hide();
			$("#empTypeJob").css("border-bottom", "2px solid #34F458");
			
		
		} else if (empTypeJob === "") {
			$("#empTypeJob_error_message").html("<i style='color:#C2000D;'>Please select the employee's job type !</i>");
			$("#empTypeJob_error_message").show();
			$("#empTypeJob").css("border-bottom", "2px solid #C2000D");
			error_empTypeJob = true;
		
		
		
		} else {
			$("#empTypeJob_error_message").html("<i style='color:#C2000D;'>Please select the employee's job type !</i>");
			$("#empTypeJob_error_message").show();
			$("#empTypeJob").css("border-bottom", "2px solid #C2000D");
			error_empTypeJob = true;
		}
	}
	
	
	function check_empJobStDate() {
		
		var date1 = new Date();

		var dd = (date1.getDate() < 10 ? '0' : '') + date1.getDate();
		var mm = ((date1.getMonth() + 1) < 10 ? '0' : '') + (date1.getMonth() + 1);
		var yyyy = date1.getFullYear();
	
		var check_date = mm+"/"+dd+"/"+yyyy;
		
		
		
		var date = $("#empJobStDate").val();
		
		if (date !== '') {
			$("#empJobStDate_error_message").hide();
			$("#empJobStDate").css("border-bottom", "2px solid #34F458");
			
			
		/**
		}else if(date > check_date){
			
			
			$("#empJobStDate_error_message").html("<i style='color:#C2000D;font-size: 0.9em'>The date is future date !</i>");
			$("#empJobStDate_error_message").show();
			$("#empJobStDate").css("border-bottom", "2px solid #C2000D");
			error_empJobStDate = true;
		*/
			
		}else if(date === ''){
				
				
				$("#empJobStDate_error_message").html("<i style='color:#C2000D;font-size: 0.9em'>Please enter the date !</i>");
				$("#empJobStDate_error_message").show();
				$("#empJobStDate").css("border-bottom", "2px solid #C2000D");
				error_empJobStDate = true;	
			
		
		
		}else {
			$("#empJobStDate_error_message").html("<i style='color:#C2000D;font-size: 0.9em'>Please select a valid date !</i>");
			$("#empJobStDate_error_message").show();
			$("#empJobStDate").css("border-bottom", "2px solid #C2000D");
			error_empJobStDate = true;
		}
		
		
	}
	
	
	
	function check_empContNo() {
		
		var empContNo = $("#empContNo").val();
		var pattern = /^([0])(\d{9})$/;
		//var size = empContNo.length;
		
		if (empContNo !== '' && pattern.test(empContNo)) { 
			$("#empContNo_error_message").hide();
			$("#empContNo").css("border-bottom", "2px solid #34F458");
		
		}else if(empContNo === ''){
			
			$("#empContNo_error_message").html("<i style='color:#C2000D;'>Please enter the employee's contact number !</i>");
			$("#empContNo_error_message").show();
			$("#empContNo").css("border-bottom", "2px solid #C2000D");
			error_empContNo = true;
		
		} else {
			$("#empContNo_error_message").html("<i style='color:#C2000D;'>Please enter valid contact number !</i>");
			$("#empContNo_error_message").show();
			$("#empContNo").css("border-bottom", "2px solid #C2000D");
			error_empContNo = true;
		}
	}
	
	
	
	function check_empWkExp() {
		
		var empWkExp = $("#empWkExp").val();
		var size = empWkExp.length;
		
		if (empWkExp === '' || size > 10) { 
			$("#empWkExp_error_message").hide();
			$("#empWkExp").css("border-bottom", "2px solid #FFFFFF");
		
		}else {
			$("#empWkExp_error_message").html("<i style='color:#C2000D;'>Please enter the employee's work experience in detail !</i>");
			$("#empWkExp_error_message").show();
			$("#empWkExp").css("border-bottom", "2px solid #C2000D");
			error_empWkExp = true;
		}
	}
	
	
	
	
	function check_empEduQualfi() {
		
		var empEduQualfi = $("#empEduQualfi").val();
		var size = empEduQualfi.length;
		
		if (empEduQualfi === '' || size > 5) { 
			$("#empEduQualfi_error_message").hide();
			$("#empEduQualfi").css("border-bottom", "2px solid #FFFFFF");
		
		}else {
			$("#empEduQualfi_error_message").html("<i style='color:#C2000D;'>Please enter the employee's work experience in detail !</i>");
			$("#empEduQualfi_error_message").show();
			$("#empEduQualfi").css("border-bottom", "2px solid #C2000D");
			error_empEduQualfi = true;
		}
	}
	
	
	
	
	function check_empEmail() {
		
		var empEmail = $("#empEmail").val();
		var pattern = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/g;  
		
		if (empEmail === '' || pattern.test(empEmail)) {
			$("#empEmail_error_message").hide();
			$("#empEmail").css("border-bottom", "2px solid #FFFFFF");


		} else {
			$("#empEmail_error_message").html("<i style='color:#C2000D'>Please enter a valid email address ! </i>");
			$("#empEmail_error_message").show();
			$("#empEmail").css("border-bottom", "2px solid #C2000D");
			error_empEmail = true;
		}
	}
	
	
	
	function check_empAddInfo() {
		
		var empAddInfo = $("#empAddInfo").val();
		var size = empAddInfo.length;
		
		if (empAddInfo === '' || size > 10) { 
			$("#empAddInfo_error_message").hide();
			$("#empAddInfo").css("border-bottom", "2px solid #FFFFFF");
		
		}else {
			$("#empAddInfo_error_message").html("<i style='color:#C2000D;'>Please enter the employee's additional information in detail !</i>");
			$("#empAddInfo_error_message").show();
			$("#empAddInfo").css("border-bottom", "2px solid #C2000D");
			error_empAddInfo = true;
		}
	}
	
	
	
	function check_empAgree() {
		
		if ($("input[name='empAgree']:checked").val()) {
			$("#empAgree_error_message").hide();
			//swal("Agreement", "", "warning");
			
		
		}else {
			$("#empAgree_error_message").html("<i style='color:#C2000D;'>You must accept the agreement in order to submit the form !</i>");
			$("#empAgree_error_message").show();
			swal("Agreement!", "You must accept the agreement in order to submit the form!", "warning");
			error_empAgree = true;
		}
	}
	
	

	check_empTypeJob();
	check_empJobStDate();
	check_empContNo();
	check_empEduQualfi();
	check_empEmail();
	check_empAddInfo();
	check_empAgree();
	
	
	
	

	if (error_empTypeJob === false && error_empJobStDate === false && error_empContNo === false && error_empEduQualfi === false 
		&& error_empEmail === false && error_empAddInfo === false && error_empAgree === false) {
		
		return true;

	} else {

		return false;
	}

};


