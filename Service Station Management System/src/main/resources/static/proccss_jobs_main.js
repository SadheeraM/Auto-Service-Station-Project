

$(document).ready(listProccssJobs);
function listProccssJobs(){
    
	$.ajax({
        url: '/listProccssJobs',
        type: 'post',
        data:{},
        success: function (data) {
            
            var row = '<thead class="thead-dark"><tr>' +
                '<th style="display:none;">Id</th>' +
                '</tr></thead><tbody>';
            
            for (var i = 0; i < data.length; i++) {
                row += '<tr><td style="display:none;">' + data[i].id + 
					'</td><td>' + data[i].customerName +
					'</td><td >' + data[i].vehicleNo +
					'</td><td>' + data[i].typeOfVehicle +
					'</td><td>' + data[i].serviceType +
					'</td><td>' + data[i].time +
					
					'</td><td>' + '<button type="button" class="btn btn-secondary finishJobNow">&nbspFinish&nbsp</button>' +" "+
					
					'<button type="button" class="btn btn-danger cancelJobNow">Cancel</button>' +" "+
					
                    '</td></tr>';
            }
            row += '</tbody>';

            $("#table_proccs_jobs").html(row);
			
			
			
			//get id for delete Booking
			$('tbody').on('click', '.finishJobNow', function () {
                
				var cs = $(this).closest('tr');
		        var id = cs.find('td:eq(0)').text();
		        
		        finishProccssBooking(id);
		        //$(this).prop('disabled', true);
		        //disableBtn(id);
              
            });
			
			//get id for start Job
			$('tbody').on('click', '.cancelJobNow', function () {
                
				var cs = $(this).closest('tr');
		        var id = cs.find('td:eq(0)').text();

		       cancelProccssBooking(id);
		        
               
            });

            
        },
        
    });
	
};



function cancelProccssBooking(id) {
	
	$.ajax({
		type : 'GET',
		url : '/find?employeeId=' + id,

		success : function(employee) {

				
			swal({
				  title: "Cancel !",
				  text: "Do you want to cancel this Job !",
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
									status:"Active",
								},					
									success : function(data){
										
										listProccssJobs();
										
										swal({
										  	  title: "Good job!",
										  	  text: "The Job Card has been canceled !",
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


function finishProccssBooking(id) {
	
	$.ajax({
		type : 'GET',
		url : '/find?employeeId=' + id,

		success : function(employee) {
			
			if(employee.isFinish === "1"){
				
				swal("This Job is already finished !");
				
			}else{
				
			

				
			swal({
				  title: "Finish !",
				  text: "Do you want to finish this Job !",
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
									isFinish:"1",
									status:"Active",
								},					
									success : function(data){
										
										listProccssJobs();
										
										swal({
										  	  title: "Good job!",
										  	  text: "The Job Card has been finished !",
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
			}
	
	});

};


function disableBtn(id){

$.ajax({  
	type: 'GET',
	url: '/find?employeeId=' + id,
	success: function(employee) {
		
		if(employee.isCancel !== 1){
			
			$('.finishJobNow').prop('disabled', true);
			
		}else{
			
			//do nothing...
		}
		
		
	}
});
};






