<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
    <title>Matrix Template - The Ultimate Multipurpose admin template</title>
    <!-- Custom CSS -->
    <link rel="stylesheet" type="text/css" href="../../assets/extra-libs/multicheck/multicheck.css">
    <link href="../../assets/libs/datatables.net-bs4/css/dataTables.bootstrap4.css" rel="stylesheet">
    <link href="../../dist/css/style.min.css" rel="stylesheet">

    
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="../../dist/js/jquery-3.5.1.min.js"></script>

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>


<script src="../../dist/js/jquery-3.5.1.min.js"></script>



<script src="../../form_validation.js"></script>

<script src="../../dist/js/sweetalert.min.js"></script>

<link href="../../dist/css/modal_styles.css" rel="stylesheet">

<style>


body {
	font-family: 'Varela Round', sans-serif;
}


</style>



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
               
                
                <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav float-left mr-auto">
                        <li class="nav-item d-none d-md-block"><a class="nav-link sidebartoggler waves-effect waves-light" href="javascript:void(0)" data-sidebartype="mini-sidebar"><i class="mdi mdi-menu font-24"></i></a></li>
                        <!-- ============================================================== -->
                        <!-- create new -->
                        <!-- ============================================================== -->
                        <li class=""><p align="center">
                           
                        <c:if test="${not empty message1}">
                        
                        <script type="text/javascript">
                        $(document).ready(function(){
	  					
                        	setTimeout('swal("Great Job !", "${message1}" , "success")',300); 
	  						
						});
                        </script>
						
						</c:if>

						
						<c:if test= "${0 < showCount}">
		    			
		    			<div class="alert alert-success" role="alert" id="successMessage">
						
						<strong>You have ${showCount} online booking requests --></strong>
		   				</div>
						
						</c:if>
                            
  						</p>
                        </li>
                       
                    </ul>
                    

                    <ul class="navbar-nav float-right">

                        
                        <!-- Notifications handling -->
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
                            <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark pro-pic" onclick="logout()">
                            <img src="../../assets/images/users/1.jpg" alt="user" class="rounded-circle" width="31">
                            </a>
                            
                            
                            
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
                        
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/jobcard" aria-expanded="false"><i class="mdi mdi-border-outside"></i><span class="hide-menu">Job Cards</span></a></li>
                        
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/listEmployeesView" aria-expanded="false"><i class="mdi mdi-account-multiple"></i><span class="hide-menu">Employee Registration</span></a></li>
                        
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/listEmpAttendance" id="jobcard_session2" aria-expanded="false"><i class="mdi mdi-book-open"></i><span class="hide-menu">Employee Attendance</span></a></li>
                        
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/listEmpSalary" aria-expanded="false"><i class="mdi mdi-cash"></i><span class="hide-menu">Salary Management</span></a></li>
                        
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/stock_out_list" aria-expanded="false"><i class="mdi mdi-grid"></i><span class="hide-menu">Invoice</span></a></li>
                        
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/stock_dashboard" aria-expanded="false"><i class="mdi mdi-chart-areaspline"></i><span class="hide-menu">Inventory</span></a></li>
                        
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/adminPanel" aria-expanded="false"><i class="mdi mdi-google-cardboard"></i><span class="hide-menu">Control Panel</span></a></li>
                        
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/vehicle_registration" id="jobcard_session2" aria-expanded="false"><i class="mdi mdi-car"></i><span class="hide-menu">Vehicle History</span></a></li>
                        
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/finishJobsList" id="jobcard_session2" aria-expanded="false"><i class="mdi mdi-cart"></i><span class="hide-menu">CHECKOUT</span></a></li>
                        
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/report_section" id="jobcard_session2" aria-expanded="false"><i class="mdi mdi-chart-bar"></i><span class="hide-menu">Reports</span></a></li>
                        
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/user_management" id="jobcard_session2" aria-expanded="false"><i class="mdi mdi-account"></i><span class="hide-menu">User Management</span></a></li>
                        
                        
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
        <div class="page-wrapper" id="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Vehicle History</h4>
                      
                        
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="/index">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Vehicle History</li>
                                     
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
                <!-- Start Page Content -->
                <!-- ============================================================== -->

                             
                                
                  				<table>
                                <tr>
                                <td style="width:500px">
                                
                                
                                <div class="row mb-3 align-items-left">
                                    <div class="col-lg-4 col-md-12 text-right">
                                        <span>Vehicle No : </span>
                                    </div>
                                    <div class="col-lg-5 col-md-12">
                                        <input type="text" class="form-control" id="vehi_no" name="vehi_no" placeholder="Enter Vehicle No">
                                    	<button type="button" class="btn btn-info col-lg-12" onclick="listAllVehicles()">Search</button>
                                    </div>
                                    
                                </div>
                                
                                </td>
                                
                               
                                 
                                </tr>              
                                </table>
                                
                                
	

				<div class="page">
					<div class="card-body">
						
						<div class="table-responsive">
						
							<table id="table_vehicle_list" class="table">
								
							</table>
							
							<div class="card-body">
                                
 							<a href="/index" class="btn btn-secondary col-lg-2" id="">&nbspBack&nbsp</a>
 							
 							<a class="btn btn-success col-lg-2" href="/vehicle_registration_invoice_items">Service History</a>
					
        					</div>
							
						</div>

					</div>
				</div>
				
			</div>
		</div>
		

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


<script>


$(document).ready(listAllVehicles);
function listAllVehicles(){

	var vehicle_no = $('#vehi_no').val();

	localStorage.setItem("session_vehicleNo",vehicle_no);
    
	$.ajax({
        url: '/listAllVehicles?theVehicleNo='+vehicle_no+'',
        type: 'get',
        data:{},
        success: function (data) {
            
            var row = '<thead class="thead-dark"><tr>' +
                '<th style="display:none;">Id</th>' +
                '<th>Vehicle No</th>' +
                '<th>Customer Name</th>' +
                '<th>Current Meter</th>' +
                '<th>Next Meter</th>' +
                '<th>Date</th>' +
                '<th>Checked By</th>' +
                
                '</tr></thead><tbody>';
            
            for (var i = 0; i < data.length; i++) {
                row += '<tr><td style="display:none;">' + data[i].id + 
					'</td><td>' + data[i].vehNo +
					'</td><td>' + data[i].fullName +
					'</td><td>' + data[i].currentMeter +" KM"+
					'</td><td>' + data[i].nextService +" KM"+
					'</td><td>' + data[i].invoDate +
					'</td><td>' + data[i].checkedBy +
					
						
                    '</td></tr>';
            }
            row += '</tbody>';

            $("#table_vehicle_list").html(row);
			$('#table_vehicle_list').DataTable({
			    destroy: true,
			    
			    "lengthMenu": [[5, 10, 15, -1], [5, 10, 15, "All"]],
			    
			    "order": [[ 5, "asc" ]]
				});
			
			

            
        },
        
    });
	
};


</script>
			
		

		
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
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="../../assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="../../assets/extra-libs/sparkline/sparkline.js"></script>
    <!--Wave Effects -->
    <script src="../../dist/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="../../dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="../../dist/js/custom.min.js"></script>
    <!-- this page js -->
    <script src="../../assets/extra-libs/multicheck/datatable-checkbox-init.js"></script>
    <script src="../../assets/extra-libs/multicheck/jquery.multicheck.js"></script>
    <script src="../../assets/extra-libs/DataTables/datatables.min.js"></script>


</body>

</html>