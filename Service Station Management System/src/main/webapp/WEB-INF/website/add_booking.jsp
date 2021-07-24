<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html lang="en">

   <head>
   <title>OTECK Service station</title>

	  <link rel="stylesheet" href="css/components.css">
      <link rel="stylesheet" href="css/icons.css">
      <link rel="stylesheet" href="css/responsee.css">
      <link rel="stylesheet" href="owl-carousel/owl.carousel.css">
      <link rel="stylesheet" href="owl-carousel/owl.theme.css">
      
      <!-- CUSTOM STYLE -->   
         
      <link rel="stylesheet" href="css/template-style.css">
      <link href="https://fonts.googleapis.com/css?family=Barlow:100,300,400,700,800&amp;subset=latin-ext" rel="stylesheet">  
      <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script> 
      <script type="text/javascript" src="js/jquery-ui.min.js"></script> 
      <script type="text/javascript" src="js/validation.js"></script> 
      

    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../../assets/images/favicon.png">
    <title>Matrix Template</title>
    <!-- Custom CSS -->
    <link rel="stylesheet" type="text/css" href="../../assets/libs/select2/dist/css/select2.min.css">
    <link rel="stylesheet" type="text/css" href="../../assets/libs/jquery-minicolors/jquery.minicolors.css">
    <link rel="stylesheet" type="text/css" href="../../assets/libs/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
    <link rel="stylesheet" type="text/css" href="../../assets/libs/quill/dist/quill.snow.css">
    <link href="../../dist/css/style.min.css" rel="stylesheet">
    


<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script src="../../dist/js/jquery-3.5.1.min.js"></script>

<script src="../../dist/js/sweetalert.min.js"></script>

<script src="../../website_form_validation_final.js"></script>

<style type="text/css">

table, th, td {

  background-color: #ffffff;
  border-collapse: collapse;
  
}
.backgroundIMG{

	background-image: url(img/SS_IMG4.jpg);
 	background-color: #aabbff;
 	opacity: 0.9;

}

#myImg{

	opacity: 0.9;

}

.back{

  	background-color: #ffffff; 
  	
}

#ccc{

  margin-top: -4%;;	
  margin-left: auto;
  margin-right: auto;
 	

}


</style>

</head>



   <body class="primary-color-red backgroundIMG">
      <!--
	 <div>
			<a href=><img src="icons/online-booking.png" alt="online booking icon" style="width:225px;height:115px;"></a>
	  </div>
	  -->
    	
      <!-- HEADER -->
      
      <header class="grid">
        <!-- Top Navigation -->
        <nav class="s-12 grid background-none background-primary-hightlight">
           
           <div class="top-nav s-12 l-9"> 
              <ul class="top-ul right chevron">
                <li><a style="font-size: 17px;" href="index">Home</a></li>
                <li><a style="font-size: 17px;" href="aboutUs">About Us</a></li>
                <li><a style="font-size: 17px;" href="services" data-toggle="dropdown">Services</a>
                        
				</li>
				<li><a style="font-size: 17px;" href="gallery">Locations</a></li>
                <li><a style="font-size: 17px;" href="features">Contact Us</a></li>
                
				
				</ul>
           </div>
		   
		   <!-- online booking logo -->
		   <a href="/website/booking" class="m-12 l-3 padding-0x logo"><img src="icons/online-booking.png" style="width:275px;height:115px;" align="right"></a>
        
		</nav>
		
		
      </header>
		
      
      <!-- MAIN -->
      
      
      
      <div class="">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        
                        <div class="ml-auto text-right">
                            
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
                
                    
                    <form id="addBookForm">
                    <div class="col-md-14" align="center">
                     <h3 class="page-title" align="center">Make Your Reservation</h3>   
                        
                        <div class="form_card" style="width:1000px ; background-color:#ffffff">
                            
                            <div class="card-body">
                                <h5 class="card-title"></h5>
                                
                                <table>
                                <tr>
                                <td style="width:500px">
                                
                                
                                
                                <div class="row mb-3 align-items-center">
                                    <div class="col-lg-4 col-md-12 text-right" style="color:#000000">
                                        <span><b>Customer Name : </b></span>
                                    </div>
                                    <div class="col-lg-8 col-md-12">
                                        <input type="text" class="form-control" id="customerName" name="customerName" placeholder="Enter Customer Name">
                                        <span class="error_form" id="customerName_error_message"></span>
                                    </div>
                                </div>
                                
                                </td>
                                <td style="width:500px">
                                
                                <div class="row mb-3 align-items-center">
                                    <div class="col-lg-4 col-md-12 text-right" style="color:#000000">
                                        <span><b>Vehicle No : </b></span>
                                    </div>
                                    <div class="col-lg-8 col-md-12">
                                        <input type="text" class="form-control" id="vehicleNo" name="vehicleNo" placeholder="Ex : PA-1234">
                                        <span class="error_form" id="vehicleNo_error_message"></span>
                                    </div>
                                </div>
                                
                                </td>
                                </tr>
                                <tr>
                                <td>
                                
                                <div class="row mb-3 align-items-center">
                                    <div class="col-lg-4 col-md-12 text-right" style="color:#000000">
                                        <span><b>Vehicle : </b></span>
                                    </div>
                                    
                                    <div class="col-lg-8 col-md-12" data-toggle="tooltip" title="Choose Type of Vehicle">
                                        
                                        <select class="form-control custom-select" style="width: 100%; height:36px;" id="typeOfVehicle" 
                                        name="typeOfVehicle">
                                            
                                            <option value="" disabled selected hidden>Select your vehicle</option>
                                            <option value="Bus">Bus</option>
											<option value="Cab">Cab</option>
											<option value="Car">Car</option>
											<option value="JCB">JCB</option>
											<option value="Jeep">Jeep</option>
											<option value="Lorry">Lorry</option>
											<option value="Motor-Cycle">Motor-Cycle</option>
											<option value="Three-wheel">Three-wheel</option>
											<option value="Tractor">Tractor</option>
											<option value="Truck">Truck</option>
											<option value="Van">Van</option>
											<option value="Other">Other</option>
                                            
                                        </select>
                                        <span class="error_form" id="typeOfVehicle_error_message"></span>
                                    </div>
                                </div>
                                
                                
                                </td>
                                <td>
                                
                                <div class="row mb-3 align-items-center">
                                    <div class="col-lg-4 col-md-12 text-right" style="color:#000000">
                                        <span><b>Service Type : </b></span>
                                    </div>
                                    
                                    <div class="col-lg-8 col-md-12" data-toggle="tooltip" title="To select multiple services; press and hold 
                                    the 'Ctrl' button and click on the services you want in the list.">
                                    
                                        <select class="form-control m-t-15" multiple="multiple" style="height: 85px;width: 100%;" id="serviceType" 
                                        name="serviceType">
                                            
                                                <option value="" disabled selected>Select service type</option>
                                                <option value="Exterior Cleaning">Exterior Cleaning</option>
                                                <option value="Interior Cleaning">Interior Cleaning</option>
                                                <option value="Body Wash">Body Wash</option>
                                                <option value="Full Service">Full Service</option>
                                                <option value="Oil Change">Oil Change</option>
                                                <option value="Filter Change">Filter Change</option>
       									</select>
       									
       									
       									<span class="error_form" id="serviceType_error_message"></span>
                                    </div>
                                </div>
                                
                                </td>
                                </tr>
                                <tr>
                                <td>
                                
                                <div class="row mb-3 align-items-center">
                                    <div class="col-lg-4 col-md-12 text-right" style="color:#000000">
                                        <span><b>Date : </b></span>
                                    </div>
                                    <div class="col-lg-8 col-md-12">
                                        <input type="text" class="form-control" id="datepicker-autoclose" name="date" placeholder="mm / dd / yyyy">
                                    	<span class="error_form" id="date_error_message"></span>
                                    </div>
                                </div>
                                
                                
                                
                                </td>
                                <td>
                                
                                <div class="row mb-3 align-items-center">
                                    <div class="col-lg-4 col-md-12 text-right" style="color:#000000">
                                        <span><b>Time : </b></span>
                                        <button type="button" class="btn btn-info rounded-circle" data-toggle="tooltip" title="You can check the schedule here" onclick="availableTime()"><i>t</i></button>
                                    </div>
                                    
                               <div class="col-lg-8 col-md-12">
                                        
                                        <!-- <input type="time" class="form-control" id="time" name="time" data-toggle="tooltip" title="Enter the time">  -->
                                        
                                        <select class="form-control custom-select" style="width: 100%; height:36px;" id="time" 
                                        name="time">
                                            
                                            <option value="" selected hidden>Select the time</option>
                                            <option value="08:00 AM - 09:00 AM">08:00 AM - 09:00 AM</option>
											<option value="09:00 AM - 10:00 AM">09:00 AM - 10:00 AM</option>
											<option value="10:00 AM - 11:00 AM">10:00 AM - 11:00 AM</option>
											<option value="11:00 AM - 12:00 PM">11:00 AM - 12:00 PM</option>
											<option value="01:00 PM - 02:00 PM">01:00 PM - 02:00 PM</option>
											<option value="02:00 PM - 03:00 PM">02:00 PM - 03:00 PM</option>
											<option value="03:00 PM - 04:00 PM">03:00 PM - 04:00 PM</option>
											<option value="04:00 PM - 05:00 PM">04:00 PM - 05:00 PM</option>
											<option value="05:00 PM - 06:00 PM">05:00 PM - 06:00 PM</option>
                                            
                                        </select>
                                        
                                        <span class="error_form" id="time_error_message"></span>
                                        
                                    </div>
                                    </div>
                                    
                                    
                                    <div id="aaa">
                                    
                                    </div>
                                    
                                
                                </td>
                                </tr>
                                <tr>
                                <td>
                                
                                <div class="row mb-3 align-items-center">
                                    <div class="col-lg-4 col-md-12 text-right" style="color:#000000">
                                        <span><b>Contact No : </b></span>
                                    </div>
                                    <div class="col-lg-8 col-md-12">
                                        <input type="text" class="form-control" id="contactNo" name="contactNo" placeholder="Ex : 0770123456">
                                        <span class="error_form" id="contactNo_error_message"></span>
                                    </div>
                                </div>
                                </td>
                                <td>
                                
                                <div class="row mb-3 align-items-center">
                                    <div class="col-lg-4 col-md-12 text-right" style="color:#000000">
                                        <span><b>Email : </b></span>
                                    </div>
                                    <div class="col-lg-8 col-md-12">
                                        <input type="email" data-toggle="tooltip" title="Email address is optional !" class="form-control" id="email" 
                                        name="email" placeholder="otekautoservice@gmail.com">
                                        <span class="error_form" id="email_error_message"></span>
                                    </div>
                                </div>
                                </td>
                                </tr>
                                
                                <input type="hidden" id="status" name="status" value="Pending">
                                	
                                	
                                <tr>
                                
                                
                                <td>
                                
                                <div class="">
                                <div class="card-body">
                                
                                	<a href="/website/index" class="btn btn-secondary back" id="">&nbspBack&nbsp</a>
                                    <button type="button" id="" class="btn btn-success" onclick="validateBookForm()">&nbspSave&nbsp</button>
                                    <button type="reset" class="btn btn-primary">Reset&nbsp</button>
                                    
                                </div>
                            </div>
                            </td>
                            </tr>
                                
                                </table>
                                
                            </div>
                        </div>
                        
                    </div>
                    </form>
                    


<script>

function validateBookForm(){

	addFormValidate();
	
};


function saveBookForm(){


	$.ajax({

		url : "/saveJobCard",
		type : "POST",
		data : $("#addBookForm").serialize(),
		success : function(response) {

			if (response === "already_booked") {

				swal({
					icon : "warning",
					text : "The time you requested has already been booked !",
				});

			}
			else if (response === "sucss") {

				swal("Done!", "Your booking is placed !", "success");
				$('#addBookForm')[0].reset();

			} else {

				swal("ERROR ! Your booking cannot be placed !");
			}

		}
	});


	
	
};

</script>

                    
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
            
  
      
     
       
      <!-- FOOTER -->
      <footer class="grid">
        
        
        <!-- Footer - bottom -->
        <div class="s-12 text-center margin-bottom">
          <p class="text-size-12"></p>
          <p class="text-size-12"></p>
          <p>OTEK Auto Service Station</p>
        </div>
      </footer>                                                                    
      <script type="text/javascript" src="js/responsee.js"></script>
      <script type="text/javascript" src="owl-carousel/owl.carousel.js"></script>
      <script type="text/javascript" src="js/template-scripts.js"></script>
      
      
      
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

<script>      

function availableTime(){
   	
	
	var abc = $('#datepicker-autoclose').val();
	
	$.ajax({  
		type : 'GET',
		url : '/findAvailableTime?theDate=' + abc,
		success: function(data) {
			
			$('#exampleModalCenter').modal('show');
			$('.modal-body').empty();
			$('.modal-bottom').empty();
			

			if(abc === ""){
				
				$('.modal-body').append("<b>Please select a date!</b>");

			}else if(data.length !== 0){

				for (var i = 0; i < data.length; i++) {

	 				$('.modal-body').append(data[i].time + " ------> " + "Already booked!" + "<br>" + "<br>");

           }

					$('.modal-bottom').append("<b>You can select a time other than the time above</b>" + "<br>");

			}else{

					$('.modal-body').append("<b>No Bookings!</b>");
			}
		}
	});
	

	
	
	  
};

</script>

<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
    
    <img id="myImg" src="img/SS_IMG3.jpg" alt="Service_Station" style="width:100%;height:50%">
      
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">____________Service Station Schedule____________</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
      <div class="modal-body" align="center">
      
      </div>
      <div class="modal-bottom" align="center">
      
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</div>


   </body>
</html>