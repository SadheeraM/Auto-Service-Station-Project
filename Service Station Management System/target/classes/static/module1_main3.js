

/**
function saveAddForm() {

	$.ajax({

		url : "/save2",
		type : "POST",
		data : $("#addForm").serialize(),
		success : function(response) {

			if (response != null) {

				// window.location.reload();
				swal("Good job!", "New Job Card is Saved !", "success");

			} else {

				swal("ERROR ! New Job Card is Not Saved !");
			}

		}
	});

};
*/		


// load existing data in delete modal


$('document').ready(function() {

	$('.table #edit').on('click', function() {
	
		var id = $(this).parent().find('#id12').val();

		$.ajax({
			type : 'GET',
			url : '/find?employeeId=' + id,

			success : function(employee) {

					
				swal({
					  title: "Delete !",
					  text: "Do you want to delete this Job Card !",
					  icon: "warning",
					  buttons: true,
					  dangerMode: true,
					})
					.then((willDelete) => {
					  if (willDelete) {
							  
						  $.ajax({
								url: "/deleteJobCard",
								type: "post",
									data: {

										id:employee.id,
										customerName:employee.customerName,
										vehicleNo:employee.vehicleNo,
										typeOfVehicle:employee.typeOfVehicle,
										serviceType:employee.serviceType,
										date:employee.date,
										time:employee.time,
										contactNo:employee.contactNo,
										email:employee.email,
										isAccept:"1",
										isCancel:"1",
									},
										success : function(data){
											
											
										}
									
							});

						  
						  	setTimeout("window.location = '/jobcard'",600);
						  	
						  	swal({
						  	  title: "Good job!",
						  	  text: "The Job Card has been deleted !",
						  	  icon: "success",
						  	  button: false,
						  	});
						  
					  
					  } else {
						  
						  //swal("The Job Card has been not deleted !");
						  //setTimeout('swal("The Job Card has been deleted !")',1000);
					  }
					});
			}
		
		});
	
	});
});

//load existing data in start modal

function startJob(id) {
	

		$.ajax({
			type : 'GET',
			url : '/find?employeeId=' + id,

			success : function(employee) {

					
				swal({
					  title: "Start !",
					  text: "Do you want to start this Job !",
					  icon: "info",
					  buttons: true,
					  dangerMode: true,
					})
					.then((willDelete) => {
					  if (willDelete) {
							  
						  $.ajax({
								url: "/startJobCard",
								type: "post",
									data: {

										id:employee.id,
										customerName:employee.customerName,
										vehicleNo:employee.vehicleNo,
										typeOfVehicle:employee.typeOfVehicle,
										serviceType:employee.serviceType,
										date:employee.date,
										time:employee.time,
										contactNo:employee.contactNo,
										email:employee.email,
										isAccept:"1",
										status:"Active",
									},
										success : function(data){
											
											swal({
											  	  title: "Good job!",
											  	  text: "The Job Card has been started !",
											  	  icon: "success",
											  	  
											  	});
											
											listBookings();
											
											
										}
									
							});

						  
						  	//setTimeout("window.location = '/jobcard'",600);
						  	
						  	
						  
					  
					  } else {
						  
						  //swal("The Job Card has been not deleted !");
						  //setTimeout('swal("The Job Card has been deleted !")',1000);
					  }
					});
			}
		
		});
	
};

  
//load existing data in start modal

$('document').ready(function() {

	
	$('.table #start').on('click', function() {
	
		var id = $(this).parent().find('#start_btn_id').val();
		
		$.ajax({  
		type: 'GET',
		url: '/find?employeeId=' + id,
		success: function(employee) {
			
			//alert(employee.customerName);
			$('#startModal #startid').val(employee.id);
			$('#startModal #startcustomerName').val(employee.customerName);
			$('#startModal #startvehicleNo').val(employee.vehicleNo);
			$('#startModal #starttypeOfVehicle').val(employee.typeOfVehicle);
			$('#startModal #startserviceType').val(employee.serviceType);
			$('#startModal #startdate').val(employee.date);
			$('#startModal #starttime').val(employee.time);
			$('#startModal #startcontactNo').val(employee.contactNo);
			$('#startModal #startemail').val(employee.email);
			
			
		}
	});
		
	});
	
  });
  

//update inbox count in 5 sec...
	
$('document').ready(function() {
	
		update()
    	setInterval(function(){
        update()
    	}, 5000)
		
		function update(){
		
		$.ajax({  
		type: 'GET',
		url: '/inboxcount',
		success: function(data) {
			
			if(data>0){
			
			$('#inbox').empty();
			
			$( "#inbox" ).append(data);
			
			}else{
			
				$('#inbox').empty();
			}
			
		}
	});
	
	}	
	
  });



//update processing jobs count in 5 sec...

$('document').ready(function() {
	
		update()
    	setInterval(function(){
        update()
    	}, 5000)
		
		function update(){
		
		$.ajax({  
		type: 'GET',
		url: '/processjobscount',
		success: function(data) {
			
			if(data>0){
			
			$('#proccss_jobs').empty();
			
			$( "#proccss_jobs" ).append(data);
			
			}else{
			
				$('#proccss_jobs').empty();
			}
			
		}
	});
	
	}	
	
  });

  
  
//save new job

function saveForm() {


	$.ajax({

		url : "/saveJobCard",
		type : "POST",
		data : $("#addForm").serialize(),
		success : function(response) {

			if (response === "already_booked") {

				swal({
					icon : "warning",
					text : "The time you requested has already been booked !",
				});

			}
			else if (response === "sucss") {

				swal("Good job!", "New Job Card is Saved !", "success");
				$('#addForm')[0].reset();

			} else {

				swal("ERROR ! The Job Card is Not Saved !");
			}

		}
	});

};


function saveEditForm() {

	$.ajax({

		url : "/saveJobCard",
		type : "POST",
		data : $("#editForm").serialize(),
		success : function(response) {

			if (response === "already_booked") {

				swal({
					icon : "warning",
					text : "The time you requested has already been booked !",
				});

			}
			else if (response === "sucss") {

				setTimeout("window.location = '/jobcard'",600);
				swal({
				  	  title: "Good job !",
				  	  text: "The Job Card is Edited !",
				  	  icon: "success",
				  	  button: false,
				  	});
					
					$('#addForm')[0].reset();

			} else {

				swal("ERROR ! The Job Card is Not Saved !");
			}

		}
	});

};


// save form data using serialize command...
/**
 * $(document).ready(function() { $("#save_data").click(function() {
 * 
 * 
 * $.ajax({
 * 
 * url: "/save2", type: "post", data: $("#addform").serialize(),
 * 
 * }); }); });
 */



function saveForm2(){
	
	$.ajax({
		url: "/save2",
		type: "post",
			data: {

				customerName:$('#customerName').val(),
				vehicleNo:$('#vehicleNo').val(),
				typeOfVehicle:$('#typeOfVehicle').val(),
				serviceType:$('#serviceType').val(),
				date:$('#date').val(),
				time:$('#time').val(),
				contactNo:$('#contactNo').val(),
				email:$('#email').val(),

				success : function(data){
					swal("Good job!", "You clicked the button!", "success");
				}
			}
		});
};
  
//load add new job form 
  
$(document).ready(function(){
  $("#ajaxbtn").click(function(){
    $("#page").load("/showFormForAdd #ccc");
  });
});
  

//load jquery data table and make changes
 

//FadeOut msg flash msg

$(document).ready(function(){
  
    $("#successMessage").fadeOut(8500);
  
});


/**
function availableTime(){
	   	
	$.ajax({  
		type: 'POST',
		url: '/available_time_slots',
		data:{},
		success: function(data) {
 
			for (var i = 0; i < data.length; i++) {
                
				//alert(data[i].time);
				//$('#time_message').empty();
				
				$( "#time_message" ).append(data[i].time+" , ");
				
            }
			
		}
	});
	
	
	  
};
*/

//show already booked times...

function availableTime(){
   	
	var abc = $('#datepicker-autoclose').val();
	
	$.ajax({  
		type : 'GET',
		url : '/findAvailableTime?theDate=' + abc,
		success: function(data) {
			
			$('#timeAvailableModal').modal('show');
			$('#timeAvailableModal #available_times').empty();
			
			if(abc === ""){
				
				$('#timeAvailableModal #available_times').append("<b>Please select a date!</b>");
				
			}else if(data.length !== 0) {
			
			for (var i = 0; i < data.length; i++) {
 				
				
				$('#timeAvailableModal #available_times').append(data[i].time + " ------> " + "Already booked!" + "<br>" + "<br>");
				
				
            }
			
				$('#timeAvailableModal #available_times').append("<b>Select a time other than the time above</b>" + "<br>");
			
			}else{
				
				$('#timeAvailableModal #available_times').append("<b>No Bookings!</b>");
			}	
		}
	});
	
	
	  
};





$(document).ready(listBookings);
function listBookings(){
    
	$.ajax({
        url: '/list',
        type: 'post',
        data:{},
        success: function (data) {
            
            var row = '<thead class="thead-dark"><tr>' +
                '<th style="display:none;">Id</th>' +
                '<th>Customer Name</th>' +
                '<th>Vehicle No</th>' +
                '<th>Vehicle Type</th>' +
                '<th>Service Type</th>' +
                '<th>Date</th>' +
                '<th>Time</th>' +
                '<th>********Action********</th>' +
                '</tr></thead><tbody>';
            
            for (var i = 0; i < data.length; i++) {
                row += '<tr><td style="display:none;">' + data[i].id + 
					'</td><td>' + data[i].customerName +
					'</td><td>' + data[i].vehicleNo +
					'</td><td>' + data[i].typeOfVehicle +
					'</td><td>' + data[i].serviceType +
					'</td><td>' + data[i].date +
					'</td><td>' + data[i].time +
					
					'</td><td>' + '<button type="button" class="btn btn-info startJob">Start</button>' +" "+
					
					'<a href="/showFormForUpdate?employeeId='+data[i].id+'" class="btn btn-success">'+
					'<i class="fas fa-edit" style="font-size:20px;color:black"></i></a>' +" "+
					
					
					'<button type="button" class="btn btn-danger deleteBooking" id="deleteBtn" onclick="">' +
					'<i class="fas fa-trash" style="font-size:20px;color:black"></i></button>'+
                    '</td></tr>';
            }
            row += '</tbody>';

            $("#table_list").html(row);
			//$("#table_list").DataTable();
			$('#table_list').DataTable({
			    destroy: true,
			    
			    "lengthMenu": [[5, 10, 15, -1], [5, 10, 15, "All"]],
			    
			    "order": [[ 5, "asc" ],[ 6, "asc" ]]
				});
			
			
			//get id for delete Booking
			$('.dataTable tbody').on('click', '.deleteBooking', function () {
                
				var cs = $(this).closest('tr');
		        var id = cs.find('td:eq(0)').text();
		        
		        deleteBooking(id); //call edit function
		        
		        
               
            });
			
			//get id for start Job
			$('.dataTable tbody').on('click', '.startJob', function () {
                
				var cs = $(this).closest('tr');
		        var id = cs.find('td:eq(0)').text();

		        startJob(id);
		        
               
            });

            
        },
        
    });
	
};



//list deleted bookings 

$(document).ready(listDeletedBookings);
function listDeletedBookings(){
    
	$.ajax({
        url: '/listDeletedBookings',
        type: 'post',
        data:{},
        success: function (data) {
            
            var row = '<thead class="thead-dark"><tr>' +
                '<th style="display:none;">Id</th>' +
                '<th>Customer Name</th>' +
                '<th>Vehicle No</th>' +
                '<th>Vehicle Type</th>' +
                '<th>Service Type</th>' +
                '<th>Date</th>' +
                '<th>Time</th>' +
                '<th>Action</th>' +
                '</tr></thead><tbody>';
            
            for (var i = 0; i < data.length; i++) {
                row += '<tr><td style="display:none;">' + data[i].id + 
					'</td><td>' + data[i].customerName +
					'</td><td>' + data[i].vehicleNo +
					'</td><td>' + data[i].typeOfVehicle +
					'</td><td>' + data[i].serviceType +
					'</td><td>' + data[i].date +
					'</td><td>' + data[i].time +
					
					'</td><td>' + 
					
					
					'<button type="button" class="btn btn-danger deleteBooking" id="deleteBtn" onclick="">' +
					'<i class="fas fa-trash" style="font-size:20px;color:black"></i></button>'+
                    '</td></tr>';
            }
            row += '</tbody>';

            $("#table_list1").html(row);
			//$("#table_list").DataTable();
			$('#table_list1').DataTable({
			    destroy: true,
			    
			    "lengthMenu": [[5, 10, 15, -1], [5, 10, 15, "All"]],
			    
			    "order": [[ 5, "asc" ],[ 6, "asc" ]]
				});
			
			
			//get id for delete Booking
			$('.dataTable tbody').on('click', '.deleteBooking', function () {
                
				var cs = $(this).closest('tr');
		        var id = cs.find('td:eq(0)').text();
		        
		        deleteBooking1(id); //call edit function
		        
		        
               
            });
			
			

            
        },
        
    });
	
};




function deleteBooking1(id) {

	
	$.ajax({  
		type: 'GET',
		url: '/find?employeeId=' + id,
		success: function(employee) {	
			
			swal({
				  title: "Delete !",
				  text: "Do you want to permanently delete this job card?",
				  icon: "warning",
				  buttons: true,
				  dangerMode: true,
				})
				.then((willDelete) => {
				  if (willDelete) {
						  
					  $.ajax({
							url: "/deleteJobCard",
							type: "post",
								data: {

									id:employee.id,
									customerName:employee.customerName,
									vehicleNo:employee.vehicleNo,
									typeOfVehicle:employee.typeOfVehicle,
									serviceType:employee.serviceType,
									date:employee.date,
									time:employee.time,
									contactNo:employee.contactNo,
									email:employee.email,
									isAccept:"1",
									isCancel:"trash",
								},
									success : function(data){
										
										listDeletedBookings();	
										
									}
								});
						
					  
					  	//setTimeout("window.location = '/jobcard'",600);
					  	
					  	swal({
					  	  title: "Good job!",
					  	  text: "The Job Card has been deleted !",
					  	  icon: "success",
					  	  
					  	});
					  
				  
				  } else {
					  
					  //swal("The Job Card has been not deleted !");
					  //setTimeout('swal("The Job Card has been deleted !")',1000);
				  }
				});
			
		}
	});
		
};



	
	
	
//list deleted bookings 

$(document).ready(listDeletedUnAcceptedBookings);
function listDeletedUnAcceptedBookings(){
    
	$.ajax({
        url: '/listDelUnAcceptBookings',
        type: 'post',
        data:{},
        success: function (data) {
            
            var row = '<thead class="thead-dark"><tr>' +
                '<th style="display:none;">Id</th>' +
                '<th>Customer Name</th>' +
                '<th>Vehicle No</th>' +
                '<th>Vehicle Type</th>' +
                '<th>Service Type</th>' +
                '<th>Date</th>' +
                '<th>Time</th>' +
                '<th>Action</th>' +
                '</tr></thead><tbody>';
            
            for (var i = 0; i < data.length; i++) {
                row += '<tr><td style="display:none;">' + data[i].id + 
					'</td><td>' + data[i].customerName +
					'</td><td>' + data[i].vehicleNo +
					'</td><td>' + data[i].typeOfVehicle +
					'</td><td>' + data[i].serviceType +
					'</td><td>' + data[i].date +
					'</td><td>' + data[i].time +
					
					'</td><td>' + 
					
					
					'<button type="button" class="btn btn-danger deleteBooking" id="deleteBtn" onclick="">' +
					'<i class="fas fa-trash" style="font-size:20px;color:black"></i></button>'+
                    '</td></tr>';
            }
            row += '</tbody>';

            $("#table_list3").html(row);
			//$("#table_list").DataTable();
			$('#table_list3').DataTable({
			    destroy: true,
			    
			    "lengthMenu": [[5, 10, 15, -1], [5, 10, 15, "All"]],
			    
			    "order": [[ 5, "asc" ],[ 6, "asc" ]]
				});
			
			
			//get id for delete Booking
			$('.dataTable tbody').on('click', '.deleteBooking', function () {
                
				var cs = $(this).closest('tr');
		        var id = cs.find('td:eq(0)').text();
		        
		        deleteBooking2(id); //call edit function
		        
		        
               
            });
			
			

            
        },
        
    });
	
};	
	
	
		
	
function deleteBooking2(id) {

	
	$.ajax({  
		type: 'GET',
		url: '/find?employeeId=' + id,
		success: function(employee) {	
			
			swal({
				  title: "Delete !",
				  text: "Do you want to permanently delete this job card?",
				  icon: "warning",
				  buttons: true,
				  dangerMode: true,
				})
				.then((willDelete) => {
				  if (willDelete) {
						  
					  $.ajax({
							url: "/deleteJobCard",
							type: "post",
								data: {

									id:employee.id,
									customerName:employee.customerName,
									vehicleNo:employee.vehicleNo,
									typeOfVehicle:employee.typeOfVehicle,
									serviceType:employee.serviceType,
									date:employee.date,
									time:employee.time,
									contactNo:employee.contactNo,
									email:employee.email,
									//isAccept:"1",
									isCancel:"inbox_trash",
								},
									success : function(data){
										
										listDeletedUnAcceptedBookings();	
										
									}
								});
						
					  
					  	//setTimeout("window.location = '/jobcard'",600);
					  	
					  	swal({
					  	  title: "Good job!",
					  	  text: "The Job Card has been deleted !",
					  	  icon: "success",
					  	  
					  	});
					  
				  
				  } else {
					  
					  //swal("The Job Card has been not deleted !");
					  //setTimeout('swal("The Job Card has been deleted !")',1000);
				  }
				});
			
		}
	});
		
};	
	
	
	
	
	
	

