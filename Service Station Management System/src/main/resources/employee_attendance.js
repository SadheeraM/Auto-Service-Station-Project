


function show_Attendance(){
	
	var date = $('#attDate').val();
	listEmpAttendance(date);
	attendance_Form(date);
	loadEmployees();
	
}




function show_Attendance2(){
	
	var date = $('#attDate').val();
	listEmpAttendance(date);

	
}



function no_of_Employees() { 
	
	var noEmp;
	
	$.ajax({  
		type: 'GET',
		url: '/no_of_Active_Employees',
		async:false,
		success: function(data) {
			
			noEmp = data; 
			
		}
		
	});
			return noEmp;
			
}



function employees_entered_per_day() {
    
	var date = $('#attDate').val();
	var enmEntered;
    
    $.ajax({
        url: "/employees_Entered_per_day?theDate="+date,
        type: 'get',
        async:false,
        success: function (data) {
        
        	enmEntered = data;

        }
        
    });
    		return enmEntered;
}




function duplicate_emp_per_day() {
    
	var date = $('#attDate').val();
	var dupEntry;
    
    $.ajax({
        url: "/dup_emp_per_day?theDate="+date,
        type: 'get',
        async:false,
        success: function (data) {
        
        	dupEntry = data;

        }
        
    });
    		return dupEntry;
}






function show_Attendance3(){
	
	var date = $('#attDate').val();
	var countEmp = no_of_Employees();
	var empEntered = employees_entered_per_day();
	var dupEmpEntry = duplicate_emp_per_day();
	
	swal({
		  title: "Sumbit!",
		  text: "Do you want to submit this Attendance Report!",
		  icon: "warning",
		  buttons: true,
		  dangerMode: false,
		})
		.then((willDelete) => {
		  if (willDelete) {
							
					if(countEmp === empEntered && dupEmpEntry === ""){
			  
			  		saveEmpAttendance(date);
					afterSubmit();
					
					
					//setTimeout("window.location = '/listEmpAttendance'",500);
			  	
					swal({
						title: "Good job!",
						text: "The Attendance Report has been submitted!",
						icon: "success",
						//buttons: false,
					});
					
					
					}else if(dupEmpEntry >= "2"){
						
						swal("","Employee attendance is duplicated!","warning");
						
					}else if(countEmp !== empEntered){
							
						swal("","Attendance Report is Incomplete!","warning");
					
					}else{
						
						swal("","Attendance report cannot be submitted!","warning");
						
					}
			  	
					
		  
		  } else {
			  
			  //swal("The Job Card has been not deleted !");
			  //setTimeout('swal("The Job Card has been deleted !")',1000);
		  }
		});
	

}

// show last submit date in the table 

$(document).ready(showTableOnLoad());
function showTableOnLoad(){
	
	
	
	$.ajax({  
		type: 'GET',
		url: '/lastSubmitDate',
		success: function(data) {
			
			listEmpAttendance(data);	
			
		}
		
	});
			
	
}



// list employee attendance table				

//$(document).ready(listEmpAttendance(date));


//$(document).ready(listEmpAttendance(date));
function listEmpAttendance(date){
			    
				$.ajax({
			        url: '/empAttendance?theDate='+date,
			        type: 'post',
			        data:{},
			        success: function (data) {
			            
			            var row = '<thead class="thead-dark"><tr>' +
			                '<th style="display:none;">Id</th>' +
			                '<th>Employee Name</th>' +
			                '<th>Status</th>' +
			                '<th>In Time</th>' +
			                '<th>Out Time</th>' +
			                '<th>Over Time</th>' +
			                '<th class="action_thead">Action</th>' +
			                
			                '</tr></thead><tbody>';
			            
			            for (var i = 0; i < data.length; i++) {
			                row += '<tr><td style="display:none;">' + data[i][5] + 
								'</td><td>' + data[i][0] +" "+ data[i][1] +
								'</td><td>' + data[i][2] +
								'</td><td>' + data[i][3] +
								'</td><td>' + data[i][4] +
								'</td><td>' + data[i][7] +" - "+ data[i][8] +
								
								'</td><td class="action_td">' + 
								
								
								
								'<button type="button" class="btn btn-danger btn-sm deleteAttendance">' +
								'<i class="fas fa-close" style="font-size:20px;color:black"></i></button>' +" "+
			                	
			                    '</td></tr>';
			            }
			            row += '</tbody>';

			            $("#att_list").html(row);
			            
			            
			            
			            for (var i = 0; i < data.length; i++) {
							
							
						    if (data[i][6] === 'yes')
	
						    	afterSubmit();
						    	
						    
						    else
						    	
						    	beforeSubmit();
						
			            }
			            
			            
			            
			            
			            //get id for delete Employee Attendance
						$('tbody').on('click', '.deleteAttendance', function () {
			                
							var cs = $(this).closest('tr');
					        var id = cs.find('td:eq(0)').text();
					        
					        deleteEmpAttendance(id);
			              
			            });
						
						
						//get date for save Employee Attendance
						$('#attendance_Form').on('click', '.save', function () {
							
					        //var date = $('#attDate').val();
					        show_Attendance3();
					        //$(this).prop('disabled', true);
			              
			            });
						
			            
			        },
			        
			    });
				
			};
			

function afterSubmit() {
			
	$('.deleteAttendance').css('display','none');
	$('#attendance_Form').css('display','none');
	$('.action_thead').css('display','none');
	$('.action_td').css('display','none');
	$('.edit').css('display','block');
	
	
};	


function beforeSubmit() {

	//$('.deleteAttendance').prop('disabled', false);
	//$('.att_form').show();
	$('.att_form').css('display','block');
	$('.edit').css('display','none');


};

function saveEmpAttendance(date) {

	$.ajax({
			url: '/saveEmpAttendance?theDate='+date,
			type: "get",
			success : function(data){
														
				show_Attendance2();									
						
			},
				
			});
									  
};	





function undoSave(){
	
	var date = $('#attDate').val();
	
	swal({
		  title: "Edit!",
		  text: "Do you want to edit this attendance report!",
		  icon: "info",
		  buttons: true,
		  dangerMode: false,
		})
		.then((willDelete) => {
		  if (willDelete) {
							
			  		
			  	undoSaveEmpAttendance();
			  	setTimeout(function(){ show_Attendance(); }, 150);
			  
		  } else {
			  
			  
		  }
		});
	

}




function undoSaveEmpAttendance() {
	
	var date = $('#attDate').val();

	$.ajax({
			url: '/undoSaveEmpAttendance?theDate='+date,
			type: "get",
			success : function(data){
														
				
						
			},
			
				
			});
	
									  
};

			
			
			
function deleteEmpAttendance(id) {

	$.ajax({
		url: '/deleteEmpAttendance?theId='+id,
		type: "get",
		success : function(data){
											
			show_Attendance2();									
			
			},
	
		});
						  

};	



// load employees list in drop down
function loadEmployees() {
    $.ajax({
        url: "/listEmployees",
        type: 'post',
        data: {},
        success: function (data) {
            
            for (var i = 0; i < data.length; i++) {
                $('select[name="employees_list"]').append("<option value='"+ data[i].empFname +"'>" + data[i].empFname +" "+ data[i].empLname +"</option>");
            }

        },
        
    });
}



function validateAbsent() {
	
	var status = $("input[name='attStatus']:checked").val();
	
	if(status === "AB" ){
		
		//$('#attendance_Form #inTime').css('display','none');
		//$('#attendance_Form #outTime').css('display','none');
		//$('#attendance_Form #inTimeLabel').css('display','none');
		//$('#attendance_Form #outTimeLabel').css('display','none');
		$('#attendance_Form #inTime').prop("disabled",true);
		$('#attendance_Form #outTime').prop("disabled",true);
		$("#employeeInTime_error_message").hide();
		$("#employeeOutTime_error_message").hide();
		$("#inTime").css("border-bottom", "0.5px solid #FFFFFF");
		$("#outTime").css("border-bottom", "0.5px solid #FFFFFF");
		
	}else{
		
		
		//$('#attendance_Form #inTime').css('display','block');
		//$('#attendance_Form #outTime').css('display','block');
		//$('#attendance_Form #inTimeLabel').css('display','block');
		//$('#attendance_Form #outTimeLabel').css('display','block');
		$('#attendance_Form #inTime').prop("disabled",false);
		$('#attendance_Form #outTime').prop("disabled",false);
	}

}

//$(document).ready(attendance_Form);
function attendance_Form(date){

			            
			            var form = '<body>' + 
			            		
			            
			            '<form id="attendance_Form">'+
			            
			            '<div class="form-row">'+
			              '<div class="col-3">'+
			                
			              '<p align="center" id="abc">&nbsp</p>' +
			              
			              '<select class="custom-select mr-sm-2" id="employees_list" name="employees_list">'+
			              
			              '<option selected>Select Employee</option>'+
			              
			            
			              '</select>'+
			              '<span class="error_form" id="employeeName_error_message"></span>' +
			            
			            '</div>'+
			              
			              
	                      
                          '<div class="col-1">'+
			              '<p align="center">Status</p>' +
                          '<div class="btn-group btn-group-toggle" data-toggle="buttons" id="employeeStatus">'+
                          '<label class="btn btn-secondary">'+
                            '<input type="radio" name="attStatus" id="attStatus" autocomplete="off" value="P"> P'+
                          '</label>'+
                          '<label class="btn btn-secondary">'+
                            '<input type="radio" name="attStatus" id="attStatus" autocomplete="off" value="AB"> AB'+
                          '</label>'+
                          
                          '</div>'+
                          '<span class="error_form" id="employeeStatus_error_message"></span>' +
                          '</div>'+'&nbsp&nbsp'+
                          
                          
			              
			              '<div class="col-2">'+
			              '<p align="center" id="inTimeLabel">In Time</p>' +
			                '<input type="time" id="inTime" name="inTime" class="form-control" placeholder="In Time">'+
			                '<span class="error_form" id="employeeInTime_error_message"></span>' +
			              '</div>'+
			              
			              '<div class="col-2">'+
			              '<p align="center" id="outTimeLabel">Out Time</p>' +
			                '<input type="time" id="outTime" name="outTime" class="form-control" placeholder="Out Time">'+
			                '<span class="error_form" id="employeeOutTime_error_message"></span>' +
			              '</div>'+
			              
			              
			              '<div class="col-1">'+
			              '<p>&nbsp</p>' +
			              '<button type="button" class="btn btn-primary" onclick="popUpOTModal()">'+
			              '+ O . T'+
			              '</button>'+
			              '</div>'+
			              
			              
			              '<div class="col-1">'+
			              '<p>&nbsp</p>' +
			              '<button type="button" class="btn btn-primary add" onclick="validateAttendance()">+ Add</button>'+
			              '</div>'+
			              
			              
			              '<div class="col-1">'+
			              '<p>&nbsp</p>' +
			              '<button type="button" class="btn btn-primary save" id="save" onclick="">Submit Report</button>'+
			              '</div>'+
			              
			              '<input type="hidden" id="hr_Emp_Reg_Emp_Id" name="hr_Emp_Reg_Emp_Id" value="">'+
			              
			              '<input type="hidden" id="attDate" name="attDate" value='+date+'>'+
			              
			              '<input type="hidden" id="oT_FromTime" name="oT_FromTime" value="">'+
			              
			              '<input type="hidden" id="oT_ToTime" name="oT_ToTime" value="">'+
			              
			              
			            '</div>'+
			            '</form>'+
			            '</div>'+
			            	
			            	
			            '</body>';

			            $(".att_form").html(form);
			            
			            
			            // set employee id when focus out after selected the employee ...
			            
			            
			            $("#employees_list").focusout(function(){ 
			            	setEmployeeId();
			            });
			            
			            $(".col-1").mouseout(function(){
			            	validateAbsent();
			            });
			            
			            //$("#attDate").click(function(){
			            	//show_Attendance2();
			            //});
			            
			            // onmouseout="show_Attendance()"
				
			};
			

			

function popUpOTModal() {
	
	var employeeName = $('#employees_list option').filter(':selected').text();
	var status = $("input[name='attStatus']:checked").val();
	var employeeInTime = $("#inTime").val();
	var employeeOutTime = $("#outTime").val();
	
	if (status === 'P'){
	
		$('#exampleModalCenter').modal('show');
	
	}else if (status === 'AB'){
		
		swal("Can't add over time, The Employee is absent!");
		
	}else{
		
		swal("Please select status!");
	}

};			
			
			
			
			
			
function saveAttendanceForm() {


				$.ajax({

					url : "/saveAttendance",
					type : "POST",
					data : $("#attendance_Form").serialize(),
					success : function(response) {

						show_Attendance2();
						
						setEmployeeId();
						
						$('#attendance_Form')[0].reset();
						
						document.getElementById("oT_FromTime").value = "";
					        	
						document.getElementById("oT_ToTime").value = "";
				
					}
				});

};	




function add_ot() {
    
	var fromTime = $("#otFrom").val();
	var toTime = $("#otTo").val();
    
    
	document.getElementById("oT_FromTime").value = fromTime;
        	
	document.getElementById("oT_ToTime").value = toTime;    	
        	

}





function setEmployeeId() {
    
	var empName = $('#employees_list').val();
    
    $.ajax({
        url: "/findEmployeeId?theName="+empName,
        type: 'get',
        data: {},
        success: function (data) {
        	
        	var empId = parseInt(data);
            
        	document.getElementById("hr_Emp_Reg_Emp_Id").value = empId;
        	
        	
        	

        },
        
    });
}