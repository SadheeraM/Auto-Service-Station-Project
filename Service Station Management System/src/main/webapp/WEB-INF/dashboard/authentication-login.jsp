<!DOCTYPE html>
<html dir="ltr">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../../assets/images/favicon.png">
    <title>Matrix Template - The Ultimate Multipurpose admin template</title>
    <!-- Custom CSS -->
    <link href="../../dist/css/style.min.css" rel="stylesheet">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="../../dist/js/jquery-3.5.1.min.js"></script>
	
<style>

#msg{

background-color: black;
color: red;
text-align: center;

}

#msg2{

background-color: black;
color: green;
text-align: center;

}

#msg3{

background-color: black;
color: yellow;
text-align: center;

}

#loginLabel{


color: white;
text-align: center;

}

#recover_notice{

background-color: black;
color: yellow;
text-align: center;

}

</style>	
 
</head>

<body>
    <div class="main-wrapper">
        <!-- ============================================================== -->
        <!-- Preloader - style you can find in spinners.css -->
        <!-- ============================================================== -->
        <div class="preloader">
            <div class="lds-ripple">
                <div class="lds-pos"></div>
                <div class="lds-pos"></div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- Preloader - style you can find in spinners.css -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Login box.scss -->
        <!-- ============================================================== -->
        <div class="auth-wrapper d-flex no-block justify-content-center align-items-center bg-dark">
            <div class="auth-box bg-dark border-top border-secondary">
            
            
            
                <div id="loginform">
                    <div class="text-center p-t-20 p-b-20">
                        <span class="db"><h2 id="loginLabel">Login</h2></span>
                    </div>
                    <!-- Form -->
                    
                    <form class="form-horizontal m-t-20" id="loginform1" action="/index" onsubmit="return login();">
                    
                    
                        
                        <div class="row p-b-30">
                            <div class="col-12">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text bg-success text-white" id="basic-addon1"><i class="ti-user"></i></span>
                                    </div>
                                    <input type="text" id="username" class="form-control form-control-lg" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
                                </div>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text bg-warning text-white" id="basic-addon2"><i class="ti-pencil"></i></span>
                                    </div>
                                    <input type="password" id="password" class="form-control form-control-lg" placeholder="Password" aria-label="Password" aria-describedby="basic-addon1">
                                	
                                </div>
                            </div>
                        </div>
                        
                        <h5 id="msg"></h5><h5 id="msg2"></h5><h5 id="msg3"></h5>
                        
                        
                        <div class="row border-top border-secondary">
                            <div class="col-12">
                                <div class="form-group">
                                    <div class="p-t-20">
                                        <button class="btn btn-info" id="to-recover" type="button"><i class="fa fa-lock m-r-5"></i> Lost password?</button>
                                        <input type="submit" class="btn btn-success float-right" value="Login">
                                        
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                
                
                </div>
                
                <div id="recoverform">
                
                
                
                    <div class="text-center">
                    
                    <span id="recover_notice"></span>
                    <br>
                        <span class="text-white">Enter your e-mail address below and we will send you instructions how to recover a password.</span>
                        
                    </div>
                    <div class="row m-t-20">
                        <!-- Form -->
                        <form class="col-12" action="index.html">
                            <!-- email -->
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text bg-danger text-white" id="basic-addon1"><i class="ti-email"></i></span>
                                </div>
                                <input type="text" class="form-control form-control-lg" id="recoverEmail" placeholder="Email Address" aria-label="Username" aria-describedby="basic-addon1">
                            </div>
                            <!-- pwd -->
                            <div class="row m-t-20 p-t-20 border-top border-secondary">
                                <div class="col-12">
                                    <a class="btn btn-success" href="#" id="to-login" name="action">Back To Login</a>
                                    <button class="btn btn-info float-right" type="button" onclick="checkRecoveryEmail()" name="action">Recover</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        
        <script>
        
        function getCredentials() {

    		var userName = $("#username").val();
    		var userPassword = $("#password").val();
    	    
    		var showName;
    		
    	    $.ajax({
    	    	
    	        url: '/showUserCredentials?theUserName='+userName+'&thePassword='+userPassword+'',
    	        type: 'get',
    	        async:false,
    	        data: {},
    	        success: function (data) {
    	        	
    	        	showName = data;
    	        	
    	        	//alert(showName);
    	        	
    	        },
    	        
    	    });
    	    		return showName;
    	}
        
        
        
        
        function getUserRole() {

    		var userName = $("#username").val();
    		var userPassword = $("#password").val();
    	    
    		var showName1;
    		
    	    $.ajax({
    	    	
    	        url: '/showUserRole?theUserName='+userName+'&thePassword='+userPassword+'',
    	        type: 'get',
    	        async:false,
    	        data: {},
    	        success: function (data) {
    	        	
    	        	showName1 = data;
    	        	
    	        	//alert(showName);
    	        	
    	        },
    	        
    	    });
    	    		return showName1;
    	}
        
        
        
        
        function login() {
        	
        	var userName = $("#username").val();
    		var userPassword = $("#password").val();
        	var credentials = getCredentials();
            
            
        	if(userName === '' && userPassword === ''){
        		
        		$('#msg').empty();
        		$('#msg2').empty();
        		$('#msg3').empty();
            	$('#msg3').append("User Name and Password fields are empty!");
            	return false;
        		
        	}else if(userName === ''){
        		
        		$('#msg').empty();
        		$('#msg2').empty();
        		$('#msg3').empty();
            	$('#msg3').append("Please enter User Name!");
            	return false;
        		
        	}else if(userPassword === ''){
        		
        		$('#msg').empty();
        		$('#msg2').empty();
        		$('#msg3').empty();
            	$('#msg3').append("Please enter Password!");
            	return false;
        		
        	}else if( credentials === '') { 
                
        		
        		$('#msg2').empty();
        		$('#msg3').empty();
        		$('#msg').empty();
            	$('#msg').append("Invalid Credentials!");
            	return false;
                
             
            }else{ 
            	
            	$('#msg3').empty();
            	$('#msg').empty();
            	$('#msg2').empty();
            	$('#msg2').append("Succesfully Logged!");
            	sendUserName();
            	sendUserRole();
            	return true;
            } 
			
    		
    	}
        
        
        function sendUserName() {
        	
        	   var getInput = getCredentials();
        	   localStorage.setItem("storageName",getInput);
        	   
        }
        
        
        function sendUserRole() {
        	
        	   var getInput1 = getUserRole();
        	   localStorage.setItem("storageUserName",getInput1);
        	   
        }
       
        </script>
        
<script>       
        
function checkRecoveryEmail(){
	
		var emailStatus;
		var email = $('#recoverEmail').val();

		if(email === ''){
			
			$('#recover_notice').empty();
			$('#recover_notice').append("Please enter your password!");

		}else{
			
		
	
	$.ajax({

		url : "/check_email?theEmail="+email+"",
		type : "POST",
		async:false,
		success : function(response) {

			emailStatus = response;

			if(response === 1){

				//alert("Yes");
				$('#recover_notice').empty();
				$('#recover_notice').append("We've sent you an email with instructions on how to recover your password!");

			}else{
				
				$('#recover_notice').empty();
				$('#recover_notice').append("You are not registered!");
			}


		}
	
	});
			return emailStatus;
	}
	
}        
        
</script>        
        
        
    </div>
    <!-- ============================================================== -->
    <!-- All Required js -->
    <!-- ============================================================== -->
    <script src="../../assets/libs/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="../../assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="../../assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- ============================================================== -->
    <!-- This page plugin js -->
    <!-- ============================================================== -->
    <script>

    $('[data-toggle="tooltip"]').tooltip();
    $(".preloader").fadeOut();
    // ============================================================== 
    // Login and Recover Password 
    // ============================================================== 
    $('#to-recover').on("click", function() {
        $("#loginform").slideUp();
        $("#recoverform").fadeIn();
    });
    $('#to-login').click(function(){
        
        $("#recoverform").hide();
        $("#loginform").fadeIn();
    });
    </script>
    

</body>

</html>