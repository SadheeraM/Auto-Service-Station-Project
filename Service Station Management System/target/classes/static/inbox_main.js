//load existing data in delete...

function deleteInboxBooking(id) {
	
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
										isCancel:"1",
									},					
										success : function(data){
											
											listInbox();
											
											swal({
											  	  title: "Good job!",
											  	  text: "The Job Card has been deleted !",
											  	  icon: "success",
											  	  
											  	});
											
										}
									
							});

					  
					  } else {
						  
						  //swal("The Job Card has been not deleted !");
						  //setTimeout('swal("The Job Card has been deleted !")',1000);
					  }
					});
			}
		
		});
	
};
	
  
//load existing data in edit modal

function editBooking(id) {
	
		
		
		$.ajax({  
		type: 'GET',
		url: '/find?employeeId=' + id,
		success: function(employee) {
			
			
			$('#editModal #edit_id').val(employee.id);
			$('#editModal #edit_customerName').val(employee.customerName);
			$('#editModal #edit_vehicleNo').val(employee.vehicleNo);
			$('#editModal #edit_typeOfVehicle').val(employee.typeOfVehicle);
			$('#editModal #edit_serviceType').val(employee.serviceType);
			$('#editModal #datepicker-autoclose').val(employee.date);
			$('#editModal #edit_time').val(employee.time);
			$('#editModal #edit_contactNo').val(employee.contactNo);
			$('#editModal #edit_email').val(employee.email);
			
			
		}
	});
		
};


//Save Inbox Edit form ...

function saveInboxEditForm() {

	$.ajax({

		url : "/saveJobCard",
		type : "POST",
		data : $("#editForm").serialize(),
		success : function(response) {

			if (response === "already_booked") {
				
				$("#inbox_error_message").html("<p style='color:red;'>The time you requested has already been booked !</p>");

			}
			else if (response === "sucss") {
				
				listInbox();
				
				//setTimeout("window.location = '/inbox'",700);

				swal("Good job!", "Job Card is Edited !", "success")
				.then((value) => {
					
					window.location = '/inbox';
					$('#editModal').modal('hide');
					
					
				});
				
					//$('#editModal').modal('hide');
					

			} else {

				swal("ERROR ! The Job Card is Not Saved !");
			}
				
		}
	});

};



//load existing data in accept modal

function acceptBooking(id) {

		
		$.ajax({  
		type: 'GET',
		url: '/find?employeeId=' + id,
		success: function(employee) {
			
			
			$('#acceptModal #accept_id').val(employee.id);
			$('#acceptModal #accept_customerName').val(employee.customerName);
			$('#acceptModal #accept_vehicleNo').val(employee.vehicleNo);
			$('#acceptModal #accept_typeOfVehicle').val(employee.typeOfVehicle);
			$('#acceptModal #accept_serviceType').val(employee.serviceType);
			$('#acceptModal #accept_date').val(employee.date);
			$('#acceptModal #accept_time').val(employee.time);
			$('#acceptModal #accept_contactNo').val(employee.contactNo);
			$('#acceptModal #accept_email').val(employee.email);
			
			
			$('#accept_customerName').empty(); $( "#accept_customerName" ).append(employee.customerName);
			$('#accept_vehicleNo').empty(); $( "#accept_vehicleNo" ).append(employee.vehicleNo);
			$('#accept_typeOfVehicle').empty(); $( "#accept_typeOfVehicle" ).append(employee.typeOfVehicle);
			$('#accept_serviceType').empty(); $( "#accept_serviceType" ).append(employee.serviceType);
			$('#accept_date').empty(); $( "#accept_date" ).append(employee.date);
			$('#accept_time').empty(); $( "#accept_time" ).append(employee.time);
			$('#accept_contactNo').empty(); $( "#accept_contactNo" ).append(employee.contactNo);
			$('#accept_email').empty(); $( "#accept_email" ).append(employee.email);
			
		}
	});
		
};



//Accept the Job Card and send an email...


$('document').ready(function() {

	
	$('#sendEmail').on('click', function() {
	
		$.ajax({

			url : "/saveInbox",
			type : "POST",
			data : $("#sendEmailForm").serialize(),
			success : function(response) {
				
				//setTimeout("window.location = '/inbox'",600);
				listInbox();
				
				swal({
				  	  title: "Accepted !",
				  	  text: "An Email is Sent !",
				  	  icon: "success",
				  	  
				  	});


			}
			
		
		});
		
		//For SMS Sender
		$.ajax({

			url : "/sendSMS",
			type : "POST",
			data : $("#sendEmailForm").serialize(),
			success : function(response) {


			}
		
		});
		
		//swal("Please wait...").fadeOut(1000);
		swal({
		  	  
		  	  text: "Please wait a few seconds...",
		  	  button: false,
		  	  closeOnClickOutside: false,
		  	  
		  	});
		
		
	});
	
  });



//load inbox table data 

$(document).ready(listInbox);
function listInbox(){
    
	$.ajax({
        url: '/listInbox',
        type: 'post',
        data:{},
        success: function (data) {
            
            var row = '<thead class="thead-dark"><tr>' +
                '<th style="display:none;">Id</th>' +
                '</tr></thead><tbody>';
            
            for (var i = 0; i < data.length; i++) {
                row += '<tr><td style="display:none;">' + data[i].id +
                	'</td><td>' + '<h5><span class="badge badge-pill badge-info">Inbox</span></h5>' +
					'</td><td>' + data[i].typeOfVehicle +
					'</td><td>' + data[i].serviceType +
					'</td><td>' + data[i].date +
					'</td><td>' + data[i].time +
					
					'</td><td>' + '<a href="#acceptModal" class="btn btn-info acceptBooking" data-toggle="modal">'+
					'<i class="fas fa-eye" style="font-size:20px;color:black"></i></a>' +" "+
					
					'<a href="#editModal" class="btn btn-success editBooking" id="edit" data-toggle="modal">' +
					'<i class="fas fa-edit" style="font-size:20px;color:black"></i></a>' +" "+
					
					
					'<button type="button" class="btn btn-danger deleteBooking" id="deleteBtn">' +
					'<i class="fas fa-trash" style="font-size:20px;color:black"></i></button>'+
                    '</td></tr>';
            }
            row += '</tbody>';

            $("#table_Inbox").html(row);
			//$("#table_list").DataTable();
			
			
            $('tbody').on('click', '.acceptBooking', function () {
                
				var cs = $(this).closest('tr');
		        var id = cs.find('td:eq(0)').text();
		        
		        acceptBooking(id);
          });
			
            
            $('tbody').on('click', '.deleteBooking', function () {
                
				var cs = $(this).closest('tr');
		        var id = cs.find('td:eq(0)').text();
		        
		        deleteInboxBooking(id);
              
            });
            
            $('tbody').on('click', '.editBooking', function () {
                
				var cs = $(this).closest('tr');
		        var id = cs.find('td:eq(0)').text();
		        
		        editBooking(id);
              
            });
			

            
        },
        
    });
	
};
  







