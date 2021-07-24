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
	<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
    
    
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

<script src="../../module1_main3.js"></script>

<script src="../../form_validation.js"></script>

<script src="../../dist/js/sweetalert.min.js"></script>

<link href="../../dist/css/modal_styles.css" rel="stylesheet">

<style>


body {
	font-family: 'Varela Round', sans-serif;
}


.container-fluid{


width: 750px;

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
                        <h4 class="page-title">Monthly Income Report</h4>
                      
                        
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="/index">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Monthly Income Report</li>
                                     
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
            
            
            					<br/>	
            
            					<form>
           						<table>
                                <tr>
                                <td style="width:500px">
                                
                                
                                
                                <div class="row mb-3 align-items-center">
                                    <div class="col-lg-4 col-md-12 text-right">
                                        <span>From : </span>
                                    </div>
                                    <div class="col-lg-8 col-md-12">
                                        <input type="date" class="form-control" id="datepicker1" name="date1" placeholder="mm / dd / yyyy">
                                    <span class="error_form" id="date1_error_message"></span>
                                    </div>
                                </div>
                                
                                </td>
                                <td style="width:500px">
                                
                                <div class="row mb-3 align-items-center">
                                    <div class="col-lg-4 col-md-12 text-right">
                                        <span>To : </span>
                                    </div>
                                    <div class="col-lg-8 col-md-12">
                                        <input type="date" class="form-control" id="datepicker2" name="date2" placeholder="mm / dd / yyyy">
                                    <span class="error_form" id="date2_error_message"></span>
                                    </div>
                                </div>
                                
                                </td>
                                
                                </tr>
                                
                                
                                
                                <tr>
                                <td style="width:500px">
                                
                                
                                <div class="row mb-3 align-items-center">
                                    <div class="col-lg-4 col-md-12 text-right">
                                        <span>Generate the report : </span>
                                    </div>
                                    <div class="col-lg-8 col-md-12">
                                    
                                        <button type="button" class="btn btn-success" onclick="getTotalAmounts()">Generate</button>
                                        
                                        <span class="error_form" id=""></span>
                                    </div>
                                </div>
                                
                                </td>
                                
                                </tr>
                                
                                
                                
                                </table>
                                </form>
            
            
            <div class="page">
					<div class="card-body">
						
						<div class="table-responsive">
						
							<table id="table_list123" class="table">
								
							</table>
							
							
							
						</div>

					</div>
				</div>
            
            
           
            <div class="container-fluid">
            
                <form>
                
				<input type="hidden" value="" id="value1">
				<input type="hidden" value="" id="value2">
				<input type="hidden" value="" id="value3">
				<input type="hidden" value="" id="value4">
				<input type="hidden" value="" id="value5">
				<input type="hidden" value="" id="value6">
				<input type="hidden" value="" id="value7">
				<input type="hidden" value="" id="value8">
				<input type="hidden" value="" id="value9">
				<input type="hidden" value="" id="value10">
				<input type="hidden" value="" id="value11">
				<input type="hidden" value="" id="value12">
				<input type="hidden" value="" id="value13">
				<input type="hidden" value="" id="value14">
				<input type="hidden" value="" id="value15">
				<input type="hidden" value="" id="value16">
				<input type="hidden" value="" id="value17">
				<input type="hidden" value="" id="value18">
				<input type="hidden" value="" id="value19">
				<input type="hidden" value="" id="value20">
				<input type="hidden" value="" id="value21">
				<input type="hidden" value="" id="value22">
				<input type="hidden" value="" id="value23">
				<input type="hidden" value="" id="value24">
				<input type="hidden" value="" id="value25">
				<input type="hidden" value="" id="value26">
				<input type="hidden" value="" id="value27">
				<input type="hidden" value="" id="value28">
				<input type="hidden" value="" id="value29">
				<input type="hidden" value="" id="value30">
				
				
				
				<input type="hidden" value="" id="x1">
				<input type="hidden" value="" id="x2">
				<input type="hidden" value="" id="x3">
				<input type="hidden" value="" id="x4">
				<input type="hidden" value="" id="x5">
				<input type="hidden" value="" id="x6">
				<input type="hidden" value="" id="x7">
				<input type="hidden" value="" id="x8">
				<input type="hidden" value="" id="x9">
				<input type="hidden" value="" id="x10">
				<input type="hidden" value="" id="x11">
				<input type="hidden" value="" id="x12">
				<input type="hidden" value="" id="x13">
				<input type="hidden" value="" id="x14">
				<input type="hidden" value="" id="x15">
				<input type="hidden" value="" id="x16">
				<input type="hidden" value="" id="x17">
				<input type="hidden" value="" id="x18">
				<input type="hidden" value="" id="x19">
				<input type="hidden" value="" id="x20">
				<input type="hidden" value="" id="x21">
				<input type="hidden" value="" id="x22">
				<input type="hidden" value="" id="x23">
				<input type="hidden" value="" id="x24">
				<input type="hidden" value="" id="x25">
				<input type="hidden" value="" id="x26">
				<input type="hidden" value="" id="x27">
				<input type="hidden" value="" id="x28">
				<input type="hidden" value="" id="x29">
				<input type="hidden" value="" id="x30">
				
				
				</form>
				
				<canvas id="myChart" width="500" height="300"></canvas>
				<br/><br/>
				<canvas id="myChart1" width="500" height="300"></canvas>
				<br/><br/>
				<canvas id="myChart2" width="500" height="300"></canvas>
				
			</div>
		</div>
		
		
			<script type="text/javascript">

			
   
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

<script>

//$(document).ready(getTotalAmounts);
function getTotalAmounts(){


	var fromDate1 = $("#datepicker1").val();
	var toDate1 = $("#datepicker2").val();

	

	from_month = fromDate1.substring(5,7);
	from_day = fromDate1.substring(8,10);
	from_year = fromDate1.substring(0,4);
	
	var fromDate = from_month+"/"+from_day+"/"+from_year;
	
	to_month = toDate1.substring(5,7);
	to_day = toDate1.substring(8,10);
	to_year = toDate1.substring(0,4);
	
	var toDate = to_month+"/"+to_day+"/"+to_year;

	// get daily income
  
	$.ajax({
        url: '/getTotalAmountList?theDate1='+fromDate+'&theDate2='+toDate+'',
        type: 'get',
        async:false,
        data:{},
        
        success: function (data) {

        	if(!$.trim(data)){

        		swal("No data to display", "", "info");

        		$('#value1').val(0);
	        	$('#value2').val(0);
	        	$('#value3').val(0);
	        	$('#value4').val(0);
	        	$('#value5').val(0);
	        	$('#value6').val(0);
	        	$('#value7').val(0);
	        	$('#value8').val(0);
				
			}else{

				$('#value1').val(data[0][0]);
	        	$('#value2').val(data[1][0]);
	        	$('#value3').val(data[2][0]);
	        	$('#value4').val(data[3][0]);
	        	$('#value5').val(data[4][0]);
	        	$('#value6').val(data[5][0]);
	        	$('#value7').val(data[6][0]);
	        	$('#value8').val(data[7][0]);
	        	$('#value9').val(data[8][0]);
	        	$('#value10').val(data[9][0]);
	        	$('#value11').val(data[10][0]);
	        	$('#value12').val(data[11][0]);
	        	$('#value13').val(data[12][0]);
	        	$('#value14').val(data[13][0]);
	        	$('#value15').val(data[14][0]);
	        	$('#value16').val(data[15][0]);
	        	$('#value17').val(data[16][0]);
	        	$('#value18').val(data[17][0]);
	        	$('#value19').val(data[18][0]);
	        	$('#value20').val(data[19][0]);
	        	$('#value21').val(data[20][0]);
	        	$('#value22').val(data[21][0]);
	        	$('#value23').val(data[22][0]);
	        	$('#value24').val(data[23][0]);
	        	$('#value25').val(data[24][0]);
	        	$('#value26').val(data[25][0]);
	        	$('#value27').val(data[26][0]);
	        	$('#value28').val(data[27][0]);
	        	$('#value29').val(data[28][0]);
	        	$('#value30').val(data[29][0]);
			}
 
        	

 			
        },
        
    });


	// get dates for x axis

	$.ajax({
        url: '/getTotalAmountList?theDate1='+fromDate+'&theDate2='+toDate+'',
        type: 'get',
        async:false,
        data:{},
        
        success: function (data) {

        	
        	$('#x1').val(data[0][1]);
        	$('#x2').val(data[1][1]);
        	$('#x3').val(data[2][1]);
        	$('#x4').val(data[3][1]);
        	$('#x5').val(data[4][1]);
        	$('#x6').val(data[5][1]);
        	$('#x7').val(data[6][1]);
        	$('#x8').val(data[7][1]);
        	$('#x9').val(data[8][1]);
        	$('#x10').val(data[9][1]);
        	$('#x11').val(data[10][1]);
        	$('#x12').val(data[11][1]);
        	$('#x13').val(data[12][1]);
        	$('#x14').val(data[13][1]);
        	$('#x15').val(data[14][1]);
        	$('#x16').val(data[15][1]);
        	$('#x17').val(data[16][1]);
        	$('#x18').val(data[17][1]);
        	$('#x19').val(data[18][1]);
        	$('#x20').val(data[19][1]);
        	$('#x21').val(data[20][1]);
        	$('#x22').val(data[21][1]);
        	$('#x23').val(data[22][1]);
        	$('#x24').val(data[23][1]);
        	$('#x25').val(data[24][1]);
        	$('#x26').val(data[25][1]);
        	$('#x27').val(data[26][1]);
        	$('#x28').val(data[27][1]);
        	$('#x29').val(data[28][1]);
        	$('#x30').val(data[29][1]);
        	
        	
			
        },
        
    });

	

	var val_1 = $('#value1').val();
	var val_2 = $('#value2').val();
	var val_3 = $('#value3').val();
	var val_4 = $('#value4').val();
	var val_5 = $('#value5').val();
	var val_6 = $('#value6').val();
	var val_7 = $('#value7').val();
	var val_8 = $('#value8').val();
	var val_9 = $('#value9').val();
	var val_10 = $('#value10').val();
	var val_11 = $('#value11').val();
	var val_12 = $('#value12').val();
	var val_13 = $('#value13').val();
	var val_14 = $('#value14').val();
	var val_15 = $('#value15').val();
	var val_16 = $('#value16').val();
	var val_17 = $('#value17').val();
	var val_18 = $('#value18').val();
	var val_19 = $('#value19').val();
	var val_20 = $('#value20').val();
	var val_21 = $('#value21').val();
	var val_22 = $('#value22').val();
	var val_23 = $('#value23').val();
	var val_24 = $('#value24').val();
	var val_25 = $('#value25').val();
	var val_26 = $('#value26').val();
	var val_27 = $('#value27').val();
	var val_28 = $('#value28').val();
	var val_29 = $('#value29').val();
	var val_30 = $('#value30').val();

	


	var x_val1 = $('#x1').val();
	var x_val2 = $('#x2').val();
	var x_val3 = $('#x3').val();
	var x_val4 = $('#x4').val();
	var x_val5 = $('#x5').val();
	var x_val6 = $('#x6').val();
	var x_val7 = $('#x7').val();
	var x_val8 = $('#x8').val();
	var x_val9 = $('#x9').val();
	var x_val10 = $('#x10').val();
	var x_val11 = $('#x11').val();
	var x_val12 = $('#x12').val();
	var x_val13 = $('#x13').val();
	var x_val14 = $('#x14').val();
	var x_val15 = $('#x15').val();
	var x_val16 = $('#x16').val();
	var x_val17 = $('#x17').val();
	var x_val18 = $('#x18').val();
	var x_val19 = $('#x19').val();
	var x_val20 = $('#x20').val();
	var x_val21 = $('#x21').val();
	var x_val22 = $('#x22').val();
	var x_val23 = $('#x23').val();
	var x_val24 = $('#x24').val();
	var x_val25 = $('#x25').val();
	var x_val26 = $('#x26').val();
	var x_val27 = $('#x27').val();
	var x_val28 = $('#x28').val();
	var x_val29 = $('#x29').val();
	var x_val30 = $('#x30').val();



		var ctx = document.getElementById("myChart");
		var myChart = new Chart(ctx, {
		type: 'bar',
		data: {
			
		labels: [x_val1, x_val2 , x_val3 , x_val4, x_val5, x_val6, x_val7, x_val8, x_val9, x_val10, x_val11, x_val12, x_val13,
		 x_val14, x_val15, x_val16, x_val17, x_val18, x_val19, x_val20, x_val21, x_val22, x_val23, x_val24, x_val25, x_val26, x_val27,
		 x_val28, x_val29, x_val30],

			datasets: [
	   { label: 'Daily Income of the Service station',
	       
	   data: [val_1,val_2,val_3,val_4,val_5,val_6,val_7,val_8,val_9,val_10,val_11,val_12,val_13,val_14,val_15,val_16,val_17,val_18,
		   val_19,val_20,val_21,val_22,val_23,val_24,val_25,val_26,val_27,val_28,val_29,val_30],

	   backgroundColor :[
	       
	   'rgba(255, 129, 102, 1)',
	   'rgba(234, 162, 235, 1)',
	   'rgba(255, 206, 36, 1)',
	   'rgba(75, 192, 192, 1)',
	   'rgba(153, 102, 255, 1)',
	   'rgba(150, 229, 50, 1)',
	   'rgba(100, 125, 255, 1)',
	   'rgba(255, 129, 102, 1)',
	   'rgba(234, 162, 235, 1)',
	   'rgba(255, 206, 36, 1)',
	   'rgba(75, 192, 192, 1)',
	   'rgba(153, 102, 255, 1)',
	   'rgba(150, 229, 50, 1)',
	   'rgba(100, 125, 255, 1)',
	   'rgba(255, 129, 102, 1)',
	   'rgba(234, 162, 235, 1)',
	   'rgba(255, 206, 36, 1)',
	   'rgba(75, 192, 192, 1)',
	   'rgba(153, 102, 255, 1)',
	   'rgba(150, 229, 50, 1)',
	   'rgba(100, 125, 255, 1)',
	   'rgba(255, 129, 102, 1)',
	   'rgba(234, 162, 235, 1)',
	   'rgba(255, 206, 36, 1)',
	   'rgba(75, 192, 192, 1)',
	   'rgba(153, 102, 255, 1)',
	   'rgba(150, 229, 50, 1)',
	   'rgba(100, 125, 255, 1)',
	   'rgba(255, 129, 102, 1)',
	   'rgba(234, 162, 235, 1)',

	   
	   
	],
	}
	]
	},
	options: {
	scales: {
	yAxes: [{
	ticks: {
	   beginAtZero:true
	}
	}]
	}
	}
	});


		var ctx = document.getElementById("myChart1");
		var myChart = new Chart(ctx, {
		type: 'doughnut',
		data: {
		labels: [x_val1, x_val2 , x_val3 , x_val4, x_val5, x_val6, x_val7],
		datasets: [
	   { label: 'Daily Income of the Service station',
	       
	   data: [val_1,val_2,val_3,val_4,val_5,val_6,val_7],

	   backgroundColor :[
	       
	   'rgba(255, 129, 102, 1)',
	   'rgba(234, 162, 235, 1)',
	   'rgba(255, 206, 36, 1)',
	   'rgba(75, 192, 192, 1)',
	   'rgba(153, 102, 255, 1)',
	   'rgba(150, 229, 50, 1)',
	   'rgba(100, 125, 255, 1)',
	   
	],
	}
	]
	},
	options: {
	scales: {
	yAxes: [{
	ticks: {
	   beginAtZero:true
	}
	}]
	}
	}
	});



		var ctx = document.getElementById("myChart2");
		var myChart = new Chart(ctx, {
		type: 'line',
		data: {
		labels: [x_val1, x_val2 , x_val3 , x_val4, x_val5, x_val6, x_val7],
		datasets: [
	   { label: 'Daily Income of the Service station',
	       
	   data: [val_1,val_2,val_3,val_4,val_5,val_6,val_7],

	   backgroundColor :[
	       
	   
	   'rgba(100, 125, 255, 1)',
	   
	   
	],
	}
	]
	},
	options: {
	scales: {
	yAxes: [{
	ticks: {
	   beginAtZero:true
	}
	}]
	}
	}
	});	
    
	
};


</script>

		
            </div>
            
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