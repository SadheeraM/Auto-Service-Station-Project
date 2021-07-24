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
    
    <script src="../../dist/js/sweetalert.min.js"></script>
    
    <script src="../../user_registration_form_validation2.js"></script>
   
<style>

#topic1{

background-color: blue;
color: white;
text-align: center;

}

#warningMsg{

background-color: yellow;
color: black;
text-align: center;

}

#warningMsg2{

background-color: yellow;
color: black;
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
            
            
            
            
                <div>
                    
                    <!-- Form -->
                    
                    <h3 id="topic1">Add New User</h3>
                    
                    <form id="addNewUser">
                    
                        <div class="row p-b-30">
                            <div class="col-12">
                            
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text bg-success text-white" id="basic-addon1"><i class="ti-user"></i></span>
                                    </div>
                                    <input type="text" class="form-control form-control-lg" id="userName" name="userName" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
                                </div>
                                
                                
                                <!-- email -->
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text bg-danger text-white" id="basic-addon1"><i class="ti-email"></i></span>
                                    </div>
                                    <input type="text" class="form-control form-control-lg" id="userEmail" name="userEmail" placeholder="Email Address" aria-label="Username" aria-describedby="basic-addon1">
                                </div>
                                
                                
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text bg-warning text-white" id="basic-addon2"><i class="ti-pencil"></i></span>
                                    </div>
                                    <input type="password" class="form-control form-control-lg" id="userPassWord" name="userPassWord" placeholder="Password" aria-label="Password" aria-describedby="basic-addon1">
                                </div>
                                

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text bg-info text-white" id="basic-addon2"><i class="ti-pencil"></i></span>
                                    </div>
                                    <input type="password" class="form-control form-control-lg" id="confirmPassword" name="confirmPassword" placeholder=" Confirm Password" aria-label="Password" aria-describedby="basic-addon1">
                                </div>
                                
                                
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text bg-primary text-white" id="basic-addon2"><i class="ti-user"></i></span>
                                    </div>
                                    <input type="text" class="form-control form-control-lg" id="firstName" name="firstName" placeholder=" First Name" aria-label="Password" aria-describedby="basic-addon1">
                                </div>
                                
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text bg-dark text-white" id="basic-addon2"><i class="ti-user"></i></span>
                                    </div>
                                    <input type="text" class="form-control form-control-lg" id="lastName" name="lastName" placeholder=" Last Name" aria-label="Password" aria-describedby="basic-addon1">
                                </div>
                                
                                <div class="input-group mb-3">
                                    
                                    
                                    
                                    <select class="form-control form-control-lg" style="width: 100%; height:45px;" id="userRole" 
                                        name="userRole">
                                            
                                            <option value="" disabled selected hidden>Select User Role</option>
                                            <option value="manager">Manager</option>
											<option value="employee">Employee</option>
											<option value="admin">Admin</option>
											<option value="accountOfficer">Account Officer</option>
											<option value="owner">Owner</option>
                                            
                                        </select>
                                    
                                    
                                </div>
                                
                                <input type="hidden" id="status" name="status" value="Enable">
                                
                                <div>
                                
                                	<h5 id="warningMsg"></h5><h5 id="warningMsg2"></h5>
                                
                                </div>
                                
                            </div>
                        </div>
                        
                            <div class="col-12">
                                <div class="form-group">
                                    <div class="p-t-20">
                                        
                                        <button type="button" class="btn btn-block btn-lg btn-info" onclick="userRegFormValidate()">Sign Up</button>
                                        <a href="/user_management" class="btn btn-block btn-lg btn-secondary">Back</a>
                                    </div>
                                </div>
                            </div>
                            
                            
                        
                    </form>
                    
                    
                    
                </div>
            
        </div>
        <!-- ============================================================== -->
        <!-- Login box.scss -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper scss in scafholding.scss -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper scss in scafholding.scss -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Right Sidebar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Right Sidebar -->
        <!-- ============================================================== -->
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
    </script>
    <script>
    
    function saveNewUser(){


   
    $.ajax({

			url : "/saveNewUser",
			type : "POST",
			data : $("#addNewUser").serialize(),
			success : function(response) {

				if(response === 'sucess'){
					
					swal("Good job!", "New user is saved!", "success");

				}else if(response === 'not_sucess'){

					swal("Warning!", "New user is not saved!", "warning");

				}else{

					swal("ERROR ! The new user cannot be saved !");
				}


			}
		
		});
    
    }
    
    </script>
    
    
</body>

</html>