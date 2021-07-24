
//Add form validation

function userRegFormValidate() {
	
	//var checkEmail = "NO";
	
	var userName = $("#userName").val();
	var userEmail = $("#userEmail").val();
	var userPassWord = $("#userPassWord").val();
	var confirmPassword = $("#confirmPassword").val();
	var firstName = $("#firstName").val();
	var lastName = $("#lastName").val();
	var userRole = $('#userRole option').filter(':selected').text();
	var size = userPassWord.length;
	var email = $("#userEmail").val();
	var pattern = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/g;
	
	
	
	
	function checkEmail(){
	
		var emailStatus;
	
	$.ajax({

		url : "/check_email?theEmail="+email+"",
		type : "POST",
		async:false,
		success : function(response) {

			emailStatus = response;


		}
	
	});
			return emailStatus;
	
	}	
	
	
	
	
	
	if(userName === '' || userEmail === '' || userPassWord === '' || confirmPassword === '' || firstName === '' ||
	   lastName === '' || userRole === 'Select User Role'){
			
				
		$('#warningMsg').empty();
		$('#warningMsg').append("Empty fields are there!");
				
				
	}else if(userPassWord !== confirmPassword){
		
		$('#warningMsg').empty();
		$('#warningMsg').append("Passwords do not match!");
		
	}else if(size < 8){
		
		$('#warningMsg').empty();
		$('#warningMsg').append("Password must be at least 8 characters long!");
		
	}else if(!(pattern.test(userEmail))){
		
		$('#warningMsg').empty();
		$('#warningMsg').append("Invalid email address!");
		
	}else if(checkEmail() === 1){
		
		$('#warningMsg').empty();
		$('#warningMsg').append("Email already exists!");	
		
	}else{
		
		$('#warningMsg').empty();
		saveNewUser();
		$('#addNewUser')[0].reset();
	}
	

}	
	

