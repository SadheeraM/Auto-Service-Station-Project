<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../../assets/images/favicon.png">
    <title>OTEK Auto Service Station</title>
    <!-- Custom CSS -->
    <link rel="stylesheet" type="text/css" href="../../assets/extra-libs/multicheck/multicheck.css">
    <link href="../../assets/libs/datatables.net-bs4/css/dataTables.bootstrap4.css" rel="stylesheet">
    <link href="../../dist/css/style.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="../../assets/libs/select2/dist/css/select2.min.css">
    
    
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

<style type="text/css">

.page {
  
  width: 100%;
  background-color: powderblue;
}

</style>


</head>

<body>
    
    
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
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                             <span class="d-none d-md-block">Create New <i class="fa fa-angle-down"></i></span>
                             <span class="d-block d-md-none"><i class="fa fa-plus"></i></span>   
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                        </li>
                        <!-- ============================================================== -->
                        <!-- Search -->
                        <!-- ============================================================== -->
                        <li class="nav-item search-box"> <a class="nav-link waves-effect waves-dark" href="javascript:void(0)"><i class="ti-search"></i></a>
                            <form class="app-search position-absolute">
                                <input type="text" class="form-control" placeholder="Search &amp; enter"> <a class="srh-btn"><i class="ti-close"></i></a>
                            </form>
                        </li>
                    </ul>
                    <!-- ============================================================== -->
                    <!-- Right side toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav float-right">
                        <!-- ============================================================== -->
                        <!-- Comment -->
                        <!-- ============================================================== -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle waves-effect waves-dark" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="mdi mdi-bell font-24"></i>
                            </a>
                             <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                        </li>
                        <!-- ============================================================== -->
                        <!-- End Comment -->
                        <!-- ============================================================== -->
                        <!-- ============================================================== -->
                        <!-- Messages -->
                        <!-- ============================================================== -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle waves-effect waves-dark" href="" id="2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="font-24 mdi mdi-comment-processing"></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right mailbox animated bounceInDown" aria-labelledby="2">
                                <ul class="list-style-none">
                                    <li>
                                        <div class="">
                                             <!-- Message -->
                                            <a href="javascript:void(0)" class="link border-top">
                                                <div class="d-flex no-block align-items-center p-10">
                                                    <span class="btn btn-success btn-circle"><i class="ti-calendar"></i></span>
                                                    <div class="m-l-10">
                                                        <h5 class="m-b-0">Event today</h5> 
                                                        <span class="mail-desc">Just a reminder that event</span> 
                                                    </div>
                                                </div>
                                            </a>
                                            <!-- Message -->
                                            <a href="javascript:void(0)" class="link border-top">
                                                <div class="d-flex no-block align-items-center p-10">
                                                    <span class="btn btn-info btn-circle"><i class="ti-settings"></i></span>
                                                    <div class="m-l-10">
                                                        <h5 class="m-b-0">Settings</h5> 
                                                        <span class="mail-desc">You can customize this template</span> 
                                                    </div>
                                                </div>
                                            </a>
                                            <!-- Message -->
                                            <a href="javascript:void(0)" class="link border-top">
                                                <div class="d-flex no-block align-items-center p-10">
                                                    <span class="btn btn-primary btn-circle"><i class="ti-user"></i></span>
                                                    <div class="m-l-10">
                                                        <h5 class="m-b-0">Pavan kumar</h5> 
                                                        <span class="mail-desc">Just see the my admin!</span> 
                                                    </div>
                                                </div>
                                            </a>
                                            <!-- Message -->
                                            <a href="javascript:void(0)" class="link border-top">
                                                <div class="d-flex no-block align-items-center p-10">
                                                    <span class="btn btn-danger btn-circle"><i class="fa fa-link"></i></span>
                                                    <div class="m-l-10">
                                                        <h5 class="m-b-0">Luanch Admin</h5> 
                                                        <span class="mail-desc">Just see the my new admin!</span> 
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <!-- ============================================================== -->
                        <!-- End Messages -->
                        <!-- ============================================================== -->

                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark pro-pic" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="../../assets/images/users/1.jpg" alt="user" class="rounded-circle" width="31"></a>
                            <div class="dropdown-menu dropdown-menu-right user-dd animated">
                                <a class="dropdown-item" href="javascript:void(0)"><i class="ti-user m-r-5 m-l-5"></i> My Profile</a>
                                <a class="dropdown-item" href="javascript:void(0)"><i class="ti-wallet m-r-5 m-l-5"></i> My Balance</a>
                                <a class="dropdown-item" href="javascript:void(0)"><i class="ti-email m-r-5 m-l-5"></i> Inbox</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="javascript:void(0)"><i class="ti-settings m-r-5 m-l-5"></i> Account Setting</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="javascript:void(0)"><i class="fa fa-power-off m-r-5 m-l-5"></i> Logout</a>
                                <div class="dropdown-divider"></div>
                                <div class="p-l-30 p-10"><a href="javascript:void(0)" class="btn btn-sm btn-success btn-rounded">View Profile</a></div>
                            </div>
                        </li>
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
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
        
            
        
        <div class="page-wrapper">
        
        
        
        
        
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                
                
                
                
                
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Invoice</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Invoice</li>
                                </ol>
                            </nav>
                        </div>
                        
                        
                        
                        
                    </div>
                    
                    <div class="ml-auto text-right">
                    
						<input type='button' class='' id='btn' value='Print' onclick='printDiv();'> 
						           
  					</div>
                </div>
            </div>
            
            <div class="container-fluid">
            
            
  				<!-- print button -->
  				
  				 
				
              
                <div class="row">
                    <div class="col-md-12" id="printDiv">
                        <div class="card card-body printableArea">
                            <h3><b>INVOICE</b> <span class="pull-right"></span></h3>
                            
                            <hr>
                            
                            <script type="text/javascript">
        		
								var invoiceID1 = localStorage.getItem("sendID1");
								$('.pull-right').append("#0000"+invoiceID1);
      			
        					</script>
        					
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="pull-left">
                                        <address>
                                            <h3> &nbsp;<b class="text-danger">OTEK AUTO SERVICE STATION</b></h3>
                                            <p class="text-muted m-l-5">MAIN STREET,
                                                <br/> KOSNATHOTA,
                                                <br/> GODAKAWELA.
                                                <br/> 045-2241051</p>
                                        </address>
                                    </div>
                                    <div class="pull-right text-right">
                                        <address>
                                            
                                            
                                            
                                            
                                             <br/>
                                             
                                              
                                              
                                              
                                              
                                             <span> PAYMENT METHOD - CASH</span><br/>
                                             <span id=user> USER - </span>
                                             
                                             <script type="text/javascript">
     
												var userName = localStorage.getItem("storageName");
												$('#user').append(userName);
												

												
        			
        									</script>
                                                
                                            <p class="m-t-30 invoice_date"><b>Invoice Date :</b> <i class="fa fa-calendar"></i> </p>
                                            
                                            
                                            <script type="text/javascript">
     
                                            $(document).ready(displayDate);	
                                            function displayDate(){

                        						var date1 = new Date();

                        						var dd = (date1.getDate() < 10 ? '0' : '') + date1.getDate();
                        						var mm = ((date1.getMonth() + 1) < 10 ? '0' : '') + (date1.getMonth() + 1);
                        						var yyyy = date1.getFullYear();
                        						var today = mm+"/"+dd+"/"+yyyy;
                        						
                        						//alert(today);
                        						
                        						$('.invoice_date').append(today);
                        						
                        						
                            				}
        			
        									</script>
        									
        									
                                            
                                            
                                            
                                        </address>
                                    </div>
                                </div>
                                
                                
                                
                                
                        <form id="invoiceItems">
                        
                        
                        <input type="hidden" id="forId" name="forId" class="form-control" placeholder="forKey">
                        <input type="hidden" id="fullName" name="fullName" class="form-control" placeholder="fullName">
                        <input type="hidden" id="vehNo" name="vehNo" class="form-control" placeholder="vehNo">
                        <input type="hidden" id="invoDate" name="invoDate">
                        <input type="hidden" id="today" name="today">
			            
			            <div class="form-row" class="col-10">
			              <div class="col-5">
			                
			              <select class="select2 form-control custom-select" id="item_list" name="item_list">
			              
			              <option selected>Description</option>
			              
			            
			              </select>
			              <span class="error_form" id="error_message"></span>
			            
			            </div>
			              
			              
			              <div class="col-1">
			              
			              
			              
			                <input type="text" id="quantity" name="quantity" class="form-control" placeholder="Qty">
			                
			                <input type="hidden" id="unitPrice" name="unitPrice" class="form-control" placeholder="unitPrice">
			                
			                
			                
			                <span class="error_form" id="error_message"></span>
			              </div>
			              
			              
			              <div class="col-2">
			              
		                
			                	<input type="text" id="discount" name="discount" class="form-control" placeholder="Discount">
								<input type="hidden" id="amount" name="amount" class="form-control" placeholder="amount">
								<input type="hidden" id="subTotal" name="subTotal" class="form-control" placeholder="Sub Total">
								<input type="hidden" id="totalAmount" name="totalAmount" class="form-control" placeholder="Total">
								<input type="hidden" id="checkedBy" name="checkedBy" class="form-control" placeholder="checkedBy">
								<input type="hidden" id="invoiceId" name="invoiceId" class="form-control" placeholder="invoiceId">
								<input type="hidden" id="paidStatus" name="paidStatus" class="form-control" placeholder="paidStatus">
								<input type="hidden" id="paymentMethod" name="paymentMethod" class="form-control" placeholder="CASH">
								<input type="hidden" id="subTotalDiscount" name="subTotalDiscount" class="form-control" placeholder="subTotalDiscount">
								<input type="hidden" id="nextService" name="nextService" class="form-control" placeholder="Next Service">
								<input type="hidden" id="currentMeter" name="currentMeter" class="form-control" placeholder="currentMeter">
			                
			                <span class="error_form" id="error_message"></span>
			              </div>
			              
			              
			              <script>
			              
			              function runSetItemprice(){

			              		var show_price = setItemPrice();

			              		$('#unitPrice').val(show_price);

			              		var quantity = $('#quantity').val();

			              		var discount = $('#discount').val();

			              		var discount_amount = show_price * quantity * discount/100;

			              		var amount = show_price * quantity - discount_amount;

			              		$('#amount').val(amount);



			              		
			              	     
								var invoic_ID = localStorage.getItem("send_id");
								$('#forId').val(invoic_ID);
								
	
								var invoiceDate = localStorage.getItem("sendDATE");
								$('#invoDate').val(invoiceDate);

								var invo_fullName = localStorage.getItem("send_full_name");
								$('#fullName').val(invo_fullName);

								var invoiceVehNo = localStorage.getItem("send_VEH_NO");
								$('#vehNo').val(invoiceVehNo);
								


								saveAll();
								

			              }

			              

			              </script>
		              
			              <div class="col-2">
			              
			              <button type="button" class="btn btn-primary" onclick="runSetItemprice()">
			              Add
			              </button>
			              
			              <button type="button" class="btn btn-primary" onclick="listBillItems()">
			              ->
			              </button>
			              
			             

			              
			            </div>
			            </form>
			            
			            
			            
			            
			            <div class="page">
						<div class="card-body">
						
						<div class="table">
						
							<table id="table_Bill_list" class="table">
								
							</table>
							
							<div class="card-body">
                                
 							
 							
 							
 							
					
        					</div>
							
						</div>

					</div>
				</div>
			            
			            
			            
                              
                                
                                <div class="col-md-12">
                                
                                <br>
                                
                                <button type="button" class="btn btn-primary" onclick="showSubTotal()">
			              		Total Amount
			              		</button>
			              		
                                    <div class="pull-right m-t-30 text-right">
                                        <h5><u>Sub - Total amount</u></h5><h5 id="sub_total"></h5>
                                        
                                        <p><u>Special Discount <u><h5 id="total_discount"><b></b></h5></p>
                                        
                                        
                                        <hr>
                                        
                                        <h3><u>Total</u></h3><h4 id="total"></h4>
                                        
                                        
                                        <script>

                                        function showSubTotal(){


                                        	var date1 = new Date();

            								var dd = (date1.getDate() < 10 ? '0' : '') + date1.getDate();
            								var mm = ((date1.getMonth() + 1) < 10 ? '0' : '') + (date1.getMonth() + 1);
            								var yyyy = date1.getFullYear();
            								var today = mm+"/"+dd+"/"+yyyy;

            								$('#today').val(today);

                                            

                                        	var totalSub = runFinalizeTotal();

                                        	
                                        	$('#sub_total').empty();
                                        	$('#sub_total').append("Rs. "+totalSub +".00");

                                        	//$('#total').empty();
                                        	//$('#total').append("Rs. "+totalSub +".00");

                                        	//var ttt = localStorage.getItem("subTotal");
            								$('#subTotal').val(totalSub);

            							

            								var userName1 = localStorage.getItem("storageName");
            								$('#checkedBy').val(userName1);

            								var invoiceID2 = localStorage.getItem("sendID1");
            								$('#invoiceId').val("#0000"+invoiceID2);
            								$('#forId1').val(invoiceID2);

            								$('#paidStatus').val("yes");

            								$('#paymentMethod').val("CASH");


            								var getVehNo = localStorage.getItem("send_VEH_NO");


            								



            								$.ajax({
            							        url: '/no_of_veh_no?theVehNo='+getVehNo+'',
            							        type: 'get',
            							        data:{},
            							        success: function (data) {

            							        	var cal_discount = 	totalSub * 5/100;
            							            var totalAmountWithDiscount = totalSub - cal_discount;

             							        	if(data >= 3){

             							        		
             							        		$('#subTotalDiscount').val(cal_discount);
                 							       		$('#totalAmount').val(totalAmountWithDiscount);
                 							        	
                 							        	$('#total_discount').empty();
                                                    	$('#total_discount').append("Rs. "+cal_discount);

                                                    	$('#total').empty();
                                                    	$('#total').append("Rs. "+totalAmountWithDiscount);

             							        		

                 							        }else{

                 							        	$('#totalAmount').val(totalSub);
                 							        	$('#subTotalDiscount').val("0");

                 							        	$('#total_discount').empty();
                                                    	$('#total_discount').append("");

                                                    	$('#total').empty();
                                                    	$('#total').append("Rs. "+totalSub+".00");

                     							    }   
              										
            										
            							        },
            							        
            							    });
            								
                                      }
                                        
                                        </script>
                                        
                                        
                                    </div>
                                    <div class="clearfix"></div>
                                    <hr>
                                    
                                    
                                    
                                    
                                    
                                    
                                    <div class="text-right">
                                    
                                    	<a href="/index" class="btn btn-secondary" id="">&nbspBack&nbsp</a>
                                    	
                                        <button class="btn btn-danger" type="button" onclick="saveBillForm1()"> Proceed to payment </button>
                                        
                      
                                        
                                        
                                    </div>
                                </div>
                                
                                
                                <script>
                                function runFinalizeTotal(){

                                	var id = localStorage.getItem("send_id");
                                	var date = localStorage.getItem("sendDATE");
                                
                                	var subTotal;

                                $.ajax({  
                                	
                                	type: 'GET',
                                	async:false,
                                	url: '/totalSubBill?theId='+id+'&theDate='+date+'',
                                	
                                	success: function(data) {
                                		
                                		subTotal = data;
                                		//$('#sub_total').append("ABC");
                                		
                                	}
                                	
                                	});
                                		return subTotal;	
                                    
                                
                                }
                                </script>
                                <script>
                                
                                
                                //print the bill 
                                
								function printDiv(){

  									var divToPrint=document.getElementById('printDiv');

  									var newWin=window.open('','Print-Window');

  									newWin.document.open();

  									newWin.document.write('<html><body onload="window.print()">'+divToPrint.innerHTML+'</body></html>');

  									newWin.document.close();

  									//setTimeout(function(){newWin.close();},10);

									}
                                </script> 
                                
                                
                                
                                
                                
                                
<script>                                
$(document).ready(listBillItems);
function listBillItems(){
	
	
	var id = localStorage.getItem("send_id");
	var date = localStorage.getItem("sendDATE");
    
	$.ajax({
        url: '/listBillItems?theId='+id+'&theDate='+date+'',
        type: 'get',
        data:{},
        success: function (data) {

         
            
            var row = '<thead class="thead-dark"><tr>' +
                '<th style="display:none;">Id</th>' +
                '<th>Description</th>' +
                '<th>Unit Price</th>' +
                '<th>Qty</th>' +
                '<th>Discount</th>' +
                '<th>Amount</th>' +
                
                '<th>Action</th>' +
                '</tr></thead><tbody>';
            
            for (var i = 0; i < data.length; i++) {
                row += '<tr><td style="display:none;">' + data[i].id + 
					'</td><td>' + data[i].item_list +
					'</td><td>' + data[i].unitPrice +
					'</td><td>' + data[i].quantity +
					'</td><td>' + data[i].discount + " % " +
					'</td><td>' + data[i].amount +
					
					
					'</td><td>' + 
					

                '<a href="/showFormForUpdate?employeeId='+data[i].id+'" class="btn btn-danger">'+
				'<i class="fas fa-close" style="font-size:20px;color:black"></i></a>';
                	
            }
            row += '</tbody>';

           

            $("#table_Bill_list").html(row);
            
			$('#table_Bill_list').DataTable({
			    destroy: true,
			    
			    "lengthMenu": [[5, 10, 15, -1], [5, 10, 15, "All"]],
			    
			    "order": [[ 5, "asc" ],[ 6, "asc" ]]
				});
			
			
			/**
			$('.dataTable tbody').on('click', '.deleteBooking', function () {
                
				var cs = $(this).closest('tr');
		        var id = cs.find('td:eq(0)').text();
		        
		        alert(id); //call edit function
		        
		        
               
            });
			*/
            
        },
        
    });
	
};








function show_invoice_datails(id){
	
	var inv_id = id;
	
	$.ajax({
        url: '/getInvoiceDetails?id='+inv_id+'',
        type: 'get',
        data:{},
        success: function (data) {
            
            	
        		var inv_id = data[0][0];
         		localStorage.setItem("sendID1",inv_id);
         		
         		var inv_id2 = data[0][0];
         		localStorage.setItem("send_id",inv_id2);
         		
         		var inv_date = data[0][3];
         		localStorage.setItem("sendDATE",inv_date);
         		
         		var inv_veh_no = data[0][12];
         		localStorage.setItem("send_VEH_NO",inv_veh_no);
         		
         		var inv_full_name = data[0][2];
         		localStorage.setItem("send_full_name",inv_full_name);
         		
         		
         		
           
        },
        
        
    });

	
}


$(document).ready(loadServiceItems);
function loadServiceItems() {
    $.ajax({
        url: "/serviceItemsCharges",
        type: 'get',
        data: {},
        success: function (data) {
            
            for (var i = 0; i < data.length; i++) {
                $('select[name="item_list"]').append("<option value='"+ data[i].itemDescription +"'>" + data[i].itemDescription +"</option>");
            }

        },
        
    });
}



function setItemPrice(){
	
	
	var itemPrice;
	var itemDes = $('#item_list').val();
	

$.ajax({  
	
	type: 'GET',
	async:false,
	url: '/serviceItemsPrice?theItemDes='+itemDes+'',
	
	success: function(data) {
		
		itemPrice = data;
		
	}
	
	});
		return itemPrice;
		
}



function saveAll() {
	
	saveBillForm();
	
	
	setTimeout(function() { 
		
		listBillItems();
		
	}, 10);

}



function saveBillForm1() {
	

				
			swal({
				  title: "Payment!",
				  text: "Finish the payment?",
				  icon: "info",
				  buttons: true,
				  //dangerMode: true,
				})
				.then((willDelete) => {
				  if (willDelete) {
						  
					  saveFinalizeBillForm();
					  
					  
					  swal({
					  	  title: "PAID!",
					  	  text: "The invoice is saved!",
					  	  icon: "success",
					  	  
					  	});
					  
				  
				  } else {
					  

				  }
				});
		}
	










function saveBillForm() {

	$.ajax({

		url : "/saveBill",
		type : "POST",
		data : $("#invoiceItems").serialize(),
		success : function(response) {

			if (response === "not_sucess") {

				swal({
					icon : "warning",
					text : "The time you requested has already been booked !",
				});
				
				

			}
			else if (response === "sucess") {

				
				
					
					$('#invoiceItems')[0].reset();
					cal_next_km();

			} else {

				swal("ERROR ! The Job Card is Not Saved !");
			}

		}
	});
	
	

};




function saveFinalizeBillForm() {

	$.ajax({

		url : "/saveBill",
		type : "POST",
		
		data: {

			
			forId:$('#forId').val(),
			
			invoDate:$('#today').val(),
			
			fullName:$('#fullName').val(),
			
			vehNo:$('#vehNo').val(),
			
			checkedBy:$('#checkedBy').val(),
			
			invoiceId:$('#invoiceId').val(),
			
			paidStatus:$('#paidStatus').val(),
			
			paymentMethod:$('#paymentMethod').val(),
			
			subTotal:$('#subTotal').val(),
			
			item_list:"Summary of bill",
			
			totalAmount:$('#totalAmount').val(),
			
			subTotalDiscount:$('#subTotalDiscount').val(),
			
			currentMeter:$('#currentMeter').val(),
			
			nextService:$('#nextService').val(),
			
		},
		
		
		success : function(response) {

			if (response === "not_sucess") {

				swal({
					icon : "warning",
					text : "The time you requested has already been booked !",
				});
				
				

			}
			else if (response === "sucess") {

				
				
					
					$('#invoiceItems')[0].reset();
					cal_next_km();

			} else {

				swal("ERROR ! The Job Card is Not Saved !");
			}

		}
	});
	
	

};

                                
</script>                                 
                                
                                
                                                           
                                
                                
                                
                                
                            </div>
                        </div>
                    </div>
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
    
    
    <script src="../../assets/libs/select2/dist/js/select2.full.min.js"></script>
    <script src="../../assets/libs/select2/dist/js/select2.min.js"></script>
    
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