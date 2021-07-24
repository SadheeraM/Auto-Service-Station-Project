<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../../assets/images/favicon.png">
    <title>Admin Panel </title>
    <!-- Custom CSS -->
    <link href="../../assets/libs/flot/css/float-chart.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="../../dist/css/style.min.css" rel="stylesheet">
    
    
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="../../dist/js/jquery-3.5.1.min.js"></script>
	
	
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>

	

    <script src="../../dist/js/sweetalert.min.js"></script>
 
	<script src="../../form_validation.js"></script>
	
	<script src="../../dist/js/jquery-3.5.1.min.js"></script>

	<script src="../../module1_main3.js"></script>

	<link href="../../dist/css/modal_styles.css" rel="stylesheet">


</head>

<body>


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
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar" data-navbarbg="skin5">
            <nav class="navbar top-navbar navbar-expand-md navbar-dark">
                <div class="navbar-header" data-logobg="skin5">
                    <!-- This is for the sidebar toggle which is visible on mobile only -->
                    <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                    <!-- ============================================================== -->
                    <!-- Logo -->
                    <!-- ============================================================== -->
                    <a class="navbar-brand" href="index.html">
                        <!-- Logo icon -->
                        <b class="logo-icon p-l-10">
                            <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                            <!-- Dark Logo icon -->
                            <img src="../../assets/images/logo-icon.png" alt="homepage" class="light-logo" />
                           
                        </b>
                        <!--End Logo icon -->
                         <!-- Logo text -->
                        <span class="logo-text">
                             <!-- dark Logo text -->
                             <img src="../../assets/images/logo-text.png" alt="homepage" class="light-logo" />
                            
                        </span>
                        <!-- Logo icon -->
                        <!-- <b class="logo-icon"> -->
                            <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                            <!-- Dark Logo icon -->
                            <!-- <img src="../../assets/images/logo-text.png" alt="homepage" class="light-logo" /> -->
                            
                        <!-- </b> -->
                        <!--End Logo icon -->
                    </a>
                    <!-- ============================================================== -->
                    <!-- End Logo -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- Toggle which is visible on mobile only -->
                    <!-- ============================================================== -->
                    <a class="topbartoggler d-block d-md-none waves-effect waves-light" href="javascript:void(0)" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><i class="ti-more"></i></a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav float-left mr-auto">
                        <li class="nav-item d-none d-md-block"><a class="nav-link sidebartoggler waves-effect waves-light" href="javascript:void(0)" data-sidebartype="mini-sidebar"><i class="mdi mdi-menu font-24"></i></a></li>
                   
                        <li class=""><p align="center">
                           
  						
						<c:if test= "${0 < showCount}">
		    			
		    			<div class="alert alert-success" role="alert" id="successMessage">
						
						<strong>You have ${showCount} online booking requests --></strong>
		   				</div>
						
						</c:if>
                            
  						</p>
                        </li>
                        
                    </ul>
                    <!-- ============================================================== -->
                    <!-- Right side toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav float-right">
                        
                        <li class="nav-item dropdown">
                            
                            <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark pro-pic" href="/inbox">
                            
                            <button type="button" class="btn btn-primary"><i class="fas fa-bell" style="font-size:24px;color:yellow;"></i>
  							Inbox <span class="badge badge-light" id="inbox"></span>
							</button>
							
							</a>
                            

                        </li>

                        
                        
                        <li class="nav-item dropdown">
                        	<button type="button" class="btn btn-info">
                            <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark pro-pic" href="/processing_jobs" aria-haspopup="true" aria-expanded="false"><img src="../../assets/images/users/car-service.png" alt="user" class="" width="40">
                            <span class="badge badge-light" id="proccss_jobs"></span></button></a>
                            
                        </li>
                        
                        
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark pro-pic" href="" data-toggle="dropdown" 
                            aria-haspopup="true" aria-expanded="false"><img src="../../assets/images/users/1.jpg" alt="user" class="rounded-circle" width="31"></a>
                            
                            <div class="dropdown-menu dropdown-menu-right user-dd animated">
                            
                                <a class="dropdown-item" href="javascript:void(0)" id="nameHolder"><i class="ti-user m-r-5 m-l-5"></i> Welcome </a>
                    			<a class="dropdown-item" href="javascript:void(0)" id="roleHolder"><i class="ti-user m-r-5 m-l-5"></i> Role - </a>
                                <a class="dropdown-item" onclick="logout()" id="sessionout"><i class="fa fa-power-off m-r-5 m-l-5"></i> Logout</a>
                                 
                            </div>
                            
                        </li>
                        
    
                    </ul>
                </div>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar" data-sidebarbg="skin5">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav" class="p-t-30">
                    
                        
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/index" aria-expanded="false"><i class="mdi mdi-view-dashboard"></i><span class="hide-menu">Dashboard</span></a></li>
                        
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" id="jobcard_session2" href="/jobcard" aria-expanded="false"><i class="mdi mdi-border-outside"></i><span class="hide-menu">Job Cards</span></a></li>
                        
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" id="empReg_session2" href="/listEmployeesView" aria-expanded="false"><i class="mdi mdi-account-multiple"></i><span class="hide-menu">Employee Registration</span></a></li>
                        
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" id="EmpAtt_session2" href="/listEmpAttendance" id="jobcard_session2" aria-expanded="false"><i class="mdi mdi-book-open"></i><span class="hide-menu">Employee Attendance</span></a></li>
                        
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" id="EmpSal_session2" href="/listEmpSalary" aria-expanded="false"><i class="mdi mdi-cash"></i><span class="hide-menu">Salary Management</span></a></li>
                        
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" id="Invoice_session2" href="/stock_out_list" aria-expanded="false"><i class="mdi mdi-grid"></i><span class="hide-menu">Invoice</span></a></li>
                        
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" id="Inventory_session2" href="/stock_dashboard" aria-expanded="false"><i class="mdi mdi-chart-areaspline"></i><span class="hide-menu">Inventory</span></a></li>
                        
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" id="Control_session2" href="/adminPanel" aria-expanded="false"><i class="mdi mdi-google-cardboard"></i><span class="hide-menu">Control Panel</span></a></li>
                        
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" id="VehReg_session2" href="/vehicle_registration" id="jobcard_session2" aria-expanded="false"><i class="mdi mdi-car"></i><span class="hide-menu">Vehicle History</span></a></li>
                        
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" id="Checkout_session2" href="/finishJobsList" id="jobcard_session2" aria-expanded="false"><i class="mdi mdi-cart"></i><span class="hide-menu">CHECKOUT</span></a></li>
                        
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" id="Reports_session2" href="/report_section" id="jobcard_session2" aria-expanded="false"><i class="mdi mdi-chart-bar"></i><span class="hide-menu">Reports</span></a></li>
                        
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" id="UserMagt_session2" href="/user_management" id="jobcard_session2" aria-expanded="false"><i class="mdi mdi-account"></i><span class="hide-menu">User Management</span></a></li>
                        
                        
                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
             <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Dashboard - </h4>
                        
                         
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Sales Cards  -->
                <!-- ============================================================== -->
                <div class="row">
                    <!-- Column -->
                    
                    
                    <div class="col-md-6 col-lg-4 col-xlg-7"><a href="index">
                        <div class="card card-hover">
                            <div class="box bg-cyan text-center">
                                <h1 class="font-light text-white"><i class="mdi mdi-view-dashboard"></i></h1>
                                <h6 class="text-white">Dashboard</h6>
                            </div>
                        </div></a>
                    </div>
                    
                   
                    <!-- Column -->
                    <div class="col-md-6 col-lg-4 col-xlg-7"><a href="jobcard" id="jobcard_session">
                        <div class="card card-hover">
                            <div class="box bg-danger text-center">
                                <h1 class="font-light text-white"><i class="mdi mdi-border-outside"></i></h1>
                                <h6 class="text-white">Job Cards</h6>
                            </div>
                        </div></a>
                    </div>
                    <!-- Column -->
                    <div class="col-md-6 col-lg-4 col-xlg-7"><a href="listEmployeesView" id="empReg_session">
                        <div class="card card-hover">
                            <div class="box bg-primary text-center">
                                <h1 class="font-light text-white"><i class="mdi mdi-account-multiple"></i></h1>
                                <h6 class="text-white">Employee Registration</h6>
                            </div>
                        </div></a>
                    </div>
                    <!-- Column -->
                    <!-- Column -->
                    <div class="col-md-6 col-lg-4 col-xlg-7"><a href="listEmpAttendance" id="EmpAtt_session">
                        <div class="card card-hover">
                            <div class="box bg-danger text-center">
                                <h1 class="font-light text-white"><i class="mdi mdi-book-open"></i></h1>
                                <h6 class="text-white">Employee Attendance</h6>
                            </div>
                        </div></a>
                    </div>
                    <!-- Column -->
                    <div class="col-md-6 col-lg-4 col-xlg-7"><a href="listEmpSalary" id="EmpSal_session">
                        <div class="card card-hover">
                            <div class="box bg-secondary text-center">
                                <h1 class="font-light text-white"><i class="mdi mdi-cash"></i></h1>
                                <h6 class="text-white">Employee Salary Management</h6>
                            </div>
                        </div></a>
                    </div>
                     <!-- Column -->
                    <div class="col-md-6 col-lg-4 col-xlg-7"><a href="/stock_out_list" id="Invoice_session">
                        <div class="card card-hover">
                            <div class="box bg-danger text-center">
                                <h1 class="font-light text-white"><i class="mdi mdi-grid"></i></h1>
                                <h6 class="text-white">Invoice</h6>
                            </div>
                        </div></a>
                    </div>
                    
                    
                    <!-- Column -->
                    <div class="col-md-6 col-lg-4 col-xlg-7"><a href="/stock_dashboard" id="Inventory_session">
                        <div class="card card-hover">
                            <div class="box bg-success text-center">
                                <h1 class="font-light text-white"><i class="mdi mdi-chart-areaspline"></i></h1>
                                <h6 class="text-white">Inventory</h6>
                            </div>
                        </div></a>
                    </div>
                     <!-- Column -->
                    
                    <div class="col-md-6 col-lg-4 col-xlg-7"><a href="adminPanel" id="Control_session">
                        <div class="card card-hover">
                            <div class="box bg-warning text-center">
                                <h1 class="font-light text-white"><i class="mdi mdi-google-cardboard"></i></h1>
                                <h6 class="text-white">Control Panel</h6>
                            </div>
                        </div></a>
                    </div>
                    
                    
                    <!-- Column -->
                    <div class="col-md-6 col-lg-4 col-xlg-7"><a href="/vehicle_registration" id="VehReg_session">
                        <div class="card card-hover">
                            <div class="box bg-success text-center">
                                <h1 class="font-light text-white"><i class="mdi mdi-car"></i></h1>
                                <h6 class="text-white">Vehicle History</h6>
                            </div>
                        </div></a>
                    </div>
                    
                    <div class="col-md-6 col-lg-4 col-xlg-7"><a href="/finishJobsList" id="Checkout_session">
                        <div class="card card-hover">
                            <div class="box bg-primary text-center">
                                <h1 class="font-light text-white"><i class="mdi mdi-cart"></i></h1>
                                <h6 class="text-white">CHECKOUT</h6>
                            </div>
                        </div></a>
                    </div>
                    
                    <div class="col-md-6 col-lg-4 col-xlg-7"><a href="/report_section" id="Reports_session">
                        <div class="card card-hover">
                            <div class="box bg-success text-center">
                                <h1 class="font-light text-white"><i class="mdi mdi-chart-bar"></i></h1>
                                <h6 class="text-white">Reports</h6>
                            </div>
                        </div></a>
                    </div>
                    
                    <div class="col-md-6 col-lg-4 col-xlg-7"><a href="/user_management" id="UserMagt_session">
                        <div class="card card-hover">
                            <div class="box bg-cyan text-center">
                                <h1 class="font-light text-white"><i class="mdi mdi-account"></i></h1>
                                <h6 class="text-white">User Management</h6>
                            </div>
                        </div></a>
                    </div>
                    
                    
                    
                </div>
                <!-- ============================================================== -->
                <!-- Sales chart -->
                <!-- ============================================================== -->
                
                <!-- ============================================================== -->
                <!-- Sales chart -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Recent comment and chats -->
                <!-- ============================================================== -->
                <div class="row">
                    <!-- column -->
                    <div class="col-lg-6">
                        
                        <!-- Card -->
                        
                        <!-- card -->
                        
                        <!-- card new -->
                        
                    </div>
                    <!-- column -->

                    <div class="col-lg-6">
                        <!-- Card -->
                        
                        <!-- card -->
                        
                        <!-- accoridan part -->
                        
                        <!-- toggle part -->
                        
                        <!-- Tabs -->
                        
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- Recent comment and chats -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer text-center">
            
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="../../assets/libs/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="../../assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="../../assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="../../assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="../../assets/extra-libs/sparkline/sparkline.js"></script>
    <!--Wave Effects -->
    <script src="../../dist/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="../../dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="../../dist/js/custom.min.js"></script>
    <!--This page JavaScript -->
    <!-- <script src="../../dist/js/pages/dashboards/dashboard1.js"></script> -->
    <!-- Charts js Files -->
    <script src="../../assets/libs/flot/excanvas.js"></script>
    <script src="../../assets/libs/flot/jquery.flot.js"></script>
    <script src="../../assets/libs/flot/jquery.flot.pie.js"></script>
    <script src="../../assets/libs/flot/jquery.flot.time.js"></script>
    <script src="../../assets/libs/flot/jquery.flot.stack.js"></script>
    <script src="../../assets/libs/flot/jquery.flot.crosshair.js"></script>
    <script src="../../assets/libs/flot.tooltip/js/jquery.flot.tooltip.min.js"></script>
    <script src="../../dist/js/pages/chart/chart-page-init.js"></script>
    
    
    <script>

	var userName = localStorage.getItem("storageName");
	var sessionName = localStorage.getItem("storageUserName");

	$('.page-title').append("<i>Welcome</i> "+"<b>"+userName+"</b>");
	$('#nameHolder').append("<b>"+userName+"</b>");
	$('#roleHolder').append("<b>"+sessionName+"</b>");
	

	</script>
	
	
	<script>

	// Granting permissions on user roles.
	
	var sessionName = localStorage.getItem("storageUserName");
	
	if (sessionName == 'manager') {
		

		$('#UserMagt_session, #UserMagt_session2').click(function (e) {
        	e.preventDefault();
        	swal("Access Denied!", "You have no permission !", "warning");
    	});
   	
    
	}else if (sessionName == 'employee') { 



    	$('#UserMagt_session, #UserMagt_session2, #Checkout_session, #Checkout_session2, #Control_session, #Control_session, #Control_session2, #empReg_session, #empReg_session2, #EmpAtt_session, #EmpAtt_session2, #EmpSal_session, #EmpSal_session2, #Checkout_session, #Checkout_session2').click(function (e) {
        	e.preventDefault();
        	swal("Access Denied!", "You have no permission !", "warning");
    	});


		
	}else if(sessionName == 'admin'){

		// all permissions available ...

	}else if(sessionName == 'accountOfficer'){

		

		$('#UserMagt_session, #UserMagt_session2, #Control_session, #Control_session2, #EmpSal_session, #EmpSal_session2, #empReg_session, #empReg_session2').click(function (e) {
        	e.preventDefault();
        	swal("Access Denied!", "You have no permission !", "warning");
    	});
    	


	}else if (sessionName == 'owner'){

		$('#UserMagt_session, #UserMagt_session2').click(function (e) {
        	e.preventDefault();
        	swal("Access Denied!", "You have no permission !", "warning");
    	});


	}else{

		// nothing ...

	}
	


	
    </script>
    
    <script>
    
    function logout() {

			
			swal({
				  title: "LOG OUT!",
				  text: "Do you want to logout?",
				  icon: "warning",
				  buttons: true,
				  dangerMode: true,
				})
				.then((willDelete) => {
				  if (willDelete) {

					  window.location.href = "/";	
					  
				  
				  } else {

				  }
				});
			
		
	};
    
</script>   
    
    
    
    
    
    
    
    
    

</body>

</html>