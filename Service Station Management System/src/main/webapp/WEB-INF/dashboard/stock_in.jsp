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
    <link rel="stylesheet" type="text/css" href="../../assets/libs/select2/dist/css/select2.min.css">
    <link rel="stylesheet" type="text/css" href="../../assets/libs/jquery-minicolors/jquery.minicolors.css">
    <link rel="stylesheet" type="text/css" href="../../assets/libs/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
    <link rel="stylesheet" type="text/css" href="../../assets/libs/quill/dist/quill.snow.css">
    <link href="../../dist/css/style.min.css" rel="stylesheet">
    

    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script src="../../dist/js/jquery-3.5.1.min.js"></script>

<script src="../../module1_main3.js"></script>

<script src="../../form_validation_of_booking2.js"></script>

<script src="../../dist/js/sweetalert.min.js"></script>

<style type="text/css">


.error {
  color: red;
  margin-left: 5px;
}

.modal-content {
  
  background-color: lightyellow;
  
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
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav float-left mr-auto">
                        <li class="nav-item d-none d-md-block"><a class="nav-link sidebartoggler waves-effect waves-light" href="javascript:void(0)" data-sidebartype="mini-sidebar"><i class="mdi mdi-menu font-24"></i></a></li>
                        <!-- ============================================================== -->
                        <!-- create new -->
                        <!-- ============================================================== -->
                        
                        <li class="">
                        
                        <c:if test="${not empty message1}">
                        
                        <div class="alert alert-success" role="alert" id="successMessage">
						
						<strong>You have online booking requests1 --></strong>
		   				</div>
						
						</c:if>
  						
                        </li>
                        
                        
                        <!-- ============================================================== -->
                        <!-- Search -->
                        <!-- ============================================================== -->
                        
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
                            <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark pro-pic" href="/">
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
        <div class="page-wrapper" style="height:100vh">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Stock In Form</h4>
                        
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="/jobcard">Job-Card List</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Stock In</li>
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
            <div class="container-fluid" id="ccc">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                
                    
                    <form id="stockINForm">
                    <div class="col-md-14">
                        
                        <div class="card" style="height:70vh">
                            <div class="card-body">
                                <h5 class="card-title"></h5>
                                
                                <table>
                                <tr>
                                <td style="width:500px">
                                
                                
                                
                                <div class="row mb-3 align-items-center">
                                    <div class="col-lg-4 col-md-12 text-right">
                                        <span>Item Description : </span>
                                    </div>
                                    
                                    
                                    
                                    <div class="col-lg-8 col-md-12" data-toggle="tooltip" title="Select Item">
                                        
                                        <select class="form-control custom-select" style="width: 100%; height:36px;" id="stock_item_description" 
                                        name="stock_item_description">
                                            
                                            <option value="" disabled selected hidden>Select Item</option>
                                            
                                        </select>
                                      	<span class="error_form" id=""></span>
                                        
                                    </div>
                                    
                                    
                                    
                                </div>
                                
                                </td>
                                <td style="width:500px">
                                
                                <div class="row mb-3 align-items-center">
                                    <div class="col-lg-4 col-md-12 text-right">
                                        <span>Item Price (Rs) : </span>
                                    </div>
                                    <div class="col-lg-8 col-md-12">
                                        <input type="text" class="form-control" id="stock_item_price" name="stock_item_price" placeholder="">
                                        <span class="error_form" id=""></span>
                                    </div>
                                </div>
                                
                                </td>
                                </tr>
                                <tr>
                                <td>
                                
                                
                                
                                
                                </td>
                                
                                </tr>
                                <tr>
                                <td>
                                
                                <div class="row mb-3 align-items-center">
                                    <div class="col-lg-4 col-md-12 text-right">
                                        <span>Item Date : </span>
                                    </div>
                                    <div class="col-lg-8 col-md-12">
                                        <input type="text" class="form-control" id="datepicker-autoclose" name="stock_item_date" placeholder="mm / dd / yyyy">
                                    <span class="error_form" id=""></span>
                                    </div>
                                </div>
                                
                                
                                
                                </td>
                                <td>
                                
                                
                                
                                <div class="row mb-3 align-items-center">
                                    <div class="col-lg-4 col-md-12 text-right">
                                        <span>Item Quantity : </span>
                                    </div>
                                    <div class="col-lg-8 col-md-12">
                                        <input type="text" data-toggle="tooltip" title="Enter Quantity" class="form-control" id="stock_item_quantity" 
                                        name="stock_item_quantity" placeholder="" >
                                        <span class="error_form" id=""></span>
                                    </div>
                                </div>
                                
                                
                                </td>
                                </tr>
                                <tr>
                                <td>
                                
                                <div class="row mb-3 align-items-center">
                                    <div class="col-lg-4 col-md-12 text-right">
                                        <span>Item Code : </span>
                                    </div>
                                    <div class="col-lg-8 col-md-12">
                                        <input type="text" class="form-control" id="stock_item_no" name="stock_item_no" placeholder="" readonly>
                                    	<span class="error_form" id=""></span>
                                    </div>
                                </div>
                                </td>
                                <td>
                                
                                
                                
                                <div class="row mb-3 align-items-center">
                                    <div class="col-lg-4 col-md-12 text-right">
                                        <span>Item Amount (Rs) : </span>
                                    </div>
                                    <div class="col-lg-8 col-md-12">
                                        <input type="text" class="form-control" id="stock_item_amount" name="stock_item_amount" placeholder="">
                                    <span class="error_form" id=""></span>
                                    </div>
                                </div>
                                
                                
                                 
                                </td>
                                </tr>
                                
                                
                                <input type="hidden" id="isAccept" name="isAccept" value="1">	
                                <input type="hidden" id="status" name="status" value="Pending">	
                                <tr>
                                
                                
                                <td>
                                
                                <div class="">
                                <div class="card-body">
                                
                                	<a href="/stock_dashboard" class="btn btn-secondary" id="">&nbspBack&nbsp</a>
                                    <button type="button" class="btn btn-success" onclick="saveBillForm()">&nbspSave&nbsp</button>
                                    <button type="reset" class="btn btn-primary">Reset&nbsp</button>
                                    
                                </div>
                            </div>
                            </td>
                            </tr>
                                
                                </table>
                                
                            </div>
                        </div>
                        
                        <div>
                           
                        <c:if test="${not empty message1}">
                        
                        <div class="alert alert-warning" role="alert" id="successMessage">
						<p align="center">
						<strong>${message1}</strong>
						</p>
		   				</div>
						
						</c:if>
                         
                       </div>
                        
                    </div>
                    </form>
                    
                    
</div>
                		
                        <!-- ============================================================== -->
                        <!-- Search -->
                        <!-- ============================================================== -->
                        
                    </div>
                
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Right sidebar -->
                <!-- ============================================================== -->
                <!-- .right-sidebar -->
                <!-- ============================================================== -->
                <!-- End Right sidebar -->
                <!-- ============================================================== -->
            </div>
            
            
            
            <!-- Available Times Modal -->
            
            
            <div id="timeAvailableModal" class="modal fade">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header flex-column">
						<div class="icon-box1">
							
							<i class="material-icons"></i>
						
						</div>
						<h4 class="modal-title w-100" align="center">Hours already booked !</h4>
						
					</div>
					<div class="modal-body">
							
							<div align="center">
							<p id="available_times"></p>
							
	
							
							<div class="modal-footer justify-content-center">

							<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>


							</div>
							
	
					</div>

				</div>
			</div>
		</div>
        </div>    
            
            
            
            
            
<script>
                    
    function saveBillForm() {

	$.ajax({

		url : "/save_stock_in",
		type : "POST",
		data : $("#stockINForm").serialize(),
		success : function(response) {

			if (response === "not_sucess") {

				swal({
					icon : "warning",
					text : "",
				});
				
				

			}
			else if (response === "sucess") {

				
				swal({
					
					title: "Saved!",
					icon : "success",
					text : "Saved New Stock!",

					
				});
					
					$('#stockINForm')[0].reset();
					

			} else {

				swal("ERROR!");
			}

		}
	});
	
	

}
                    
</script> 




<script> 


$(document).ready(loadStockItems);
function loadStockItems() {
    $.ajax({
        url: "/item_list",
        type: 'get',
        data: {},
        success: function (data) {
            
            for (var i = 0; i < data.length; i++) {
                $('select[name="stock_item_description"]').append("<option value='"+ data[i] +"'>" + data[i] +"</option>");
            }

        },
        
    });
}
            
            
</script>


<script> 


//$(document).ready(loadItemsNo());
function loadItemsNo() {

	var item_des = $('#stock_item_description').val();

    $.ajax({
        url: "/find_item_no?theItemDes="+item_des+"",
        type: 'get',
        data: {},
        success: function (data) {
            
            
            $('#stock_item_no').val(data);

        },
        
    });
}
            
            
</script>  

<script> 

$("#stock_item_description").focusout(function(){
	loadItemsNo();
    });          
            
</script>


<script>

function cal_amount() {

var unit_price = $('#stock_item_price').val();
var quantity = $('#stock_item_quantity').val();

 //alert(unit_price);
$('#stock_item_amount').val(unit_price * quantity);

}



</script>


<script>

$("#stock_item_quantity").focusout(function(){
	cal_amount();
    });

</script>
            
            
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
        
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    
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
    <!-- This Page JS -->
    <script src="../../assets/libs/inputmask/dist/min/jquery.inputmask.bundle.min.js"></script>
    <script src="../../dist/js/pages/mask/mask.init.js"></script>
    <script src="../../assets/libs/select2/dist/js/select2.full.min.js"></script>
    <script src="../../assets/libs/select2/dist/js/select2.min.js"></script>
    <script src="../../assets/libs/jquery-asColor/dist/jquery-asColor.min.js"></script>
    <script src="../../assets/libs/jquery-asGradient/dist/jquery-asGradient.js"></script>
    <script src="../../assets/libs/jquery-asColorPicker/dist/jquery-asColorPicker.min.js"></script>
    <script src="../../assets/libs/jquery-minicolors/jquery.minicolors.min.js"></script>
    <script src="../../assets/libs/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="../../assets/libs/quill/dist/quill.min.js"></script>
    
    
    
    
    
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
    
    
    
    
    
    <script>
        //***********************************//
        // For select 2
        //***********************************//
        $(".select2").select2();

        /*colorpicker*/
        $('.demo').each(function() {
        //
        // Dear reader, it's actually very easy to initialize MiniColors. For example:
        //
        //  $(selector).minicolors();
        //
        // The way I've done it below is just for the demo, so don't get confused
        // by it. Also, data- attributes aren't supported at this time...they're
        // only used for this demo.
        //
        $(this).minicolors({
                control: $(this).attr('data-control') || 'hue',
                position: $(this).attr('data-position') || 'bottom left',

                change: function(value, opacity) {
                    if (!value) return;
                    if (opacity) value += ', ' + opacity;
                    if (typeof console === 'object') {
                        console.log(value);
                    }
                },
                theme: 'bootstrap'
            });

        });
        /*datwpicker*/
        jQuery('.mydatepicker').datepicker();
        jQuery('#datepicker-autoclose').datepicker({
            autoclose: true,
            todayHighlight: true
        });
        var quill = new Quill('#editor', {
            theme: 'snow'
        });

    </script>
</body>

</html>