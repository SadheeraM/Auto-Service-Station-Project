$(document).ready(listEmpSalList());
function listEmpSalList(){
			    
				$.ajax({
			        url: '/empSalMangmtList',
			        type: 'get',
			        data:{},
			        success: function (data) {
			            
			            var row = '<thead class="thead-dark"><tr>' +
			                '<th style="display:none;">Id</th>' +
			                '<th>Employee Name</th>' +
			                '<th>From</th>' +
			                '<th>To</th>' +
			                '<th>Full Days</th>' +
			                '<th>Half Days</th>' +
			                '<th>O.T Hours</th>' +
			                '<th>Total Amount</th>' +
			                '<th>Status</th>' +
			                '<th class="action_thead">Action</th>' +
			                
			                '</tr></thead><tbody>';
			            
			            for (var i = 0; i < data.length; i++) {
			                row += '<tr><td style="display:none;">' + data[i][7] + 
			                	'</td><td>' + data[i][0] +" "+ data[i][1] +
			                	'</td><td>' + data[i][4] +
								'</td><td>' + data[i][5] +
								'</td><td>' + data[i][6] +" days"+
								'</td><td>' + data[i][7] +" days"+
								'</td><td>' + data[i][8] +""+
								'</td><td>' +""+ data[i][9] +
								'</td><td>' + data[i][10] +			//data[i][3] --> employee Id(FK)
								'</td><td class="action_td">' + 
								
								
								'<button type="button" class="btn btn-danger btn-sm deleteAttendance">' +
								'<i class="fas fa-close" style="font-size:20px;color:black"></i></button>' +" "+
			                	
			                    '</td></tr>';
			            }
			            row += '</tbody>';

			            $("#emp_sal_magenmt").html(row);
			            
			            //$("#emp_sal_magenmt").DataTable();
			            $('#emp_sal_magenmt').DataTable({
						    destroy: true,
						    
						    "lengthMenu": [[5, 10, 15, -1], [5, 10, 15, "All"]],
						    
						    "order": [[ 3, "desc" ]]
							});
						
						
			            
			        },
			        
			    });
				
			};
			
			
		
			

// load employees list in drop down
$(document).ready(loadEmployeesDropDown());
function loadEmployeesDropDown() {
	$.ajax({
		url : "/listEmployees",
		type : 'post',
		data : {},
		success : function(data) {

			for (var i = 0; i < data.length; i++) {
				$('select[name="empName"]').append(
						"<option value='" + data[i].empFname + "'>"
								+ data[i].empFname + " " + data[i].empLname
								+ "</option>");
			}

		},

	});
}			
			
			
			

function cal_sal(){		
	
	setFullDays();
	setHalfDays();
	set_OT_hours()
	alert_OT_hours();
	getEmployeeTypeById();
	getEmpOTSalByType();
	getEmpDaySalByType();
	
	
	
	function getEmployeeId() {

		var empName = $("#empName").val();
	    
		var empId;
		
	    $.ajax({
	        url: "/findEmployeeId?theName="+empName,
	        type: 'get',
	        async:false,
	        data: {},
	        success: function (data) {
	        	
	        	var empIdInt = parseInt(data);
	        	empId = empIdInt;
	        	$("#hr_Emp_Reg_Emp_Id").val(empId);
	        	
	        	
	        },
	        
	    });
	    		return empId;
	}
	
	

	function setFullDays(){
	
		var formDate = $("#FromDate").val();
		var toDate = $("#ToDate").val();
		var emp_ID = getEmployeeId();
		var fullDays;
	
		$.ajax({  
		
			type: 'GET',
			url: '/no_of_Full_Days?theEmpId='+emp_ID+'&theFromDate='+formDate+'&theToDate='+toDate+'',
			async:false,
			data: {},
		
			success: function(data) {
			
				fullDays = data;
				$("#No_Of_FullDays").val(data);
			}
		
			});
				return fullDays;
			
			
	}
	
	
	
	function setHalfDays(){
		
		var formDate = $("#FromDate").val();
		var toDate = $("#ToDate").val();
		var emp_ID = getEmployeeId();
		var empHalfDays;
	
	$.ajax({  
		
		type: 'GET',
		async:false,
		url: '/no_of_Half_Days?theEmpId='+emp_ID+'&theFromDate='+formDate+'&theToDate='+toDate+'',
		
		success: function(data) {
			
			empHalfDays = data;
			$("#No_Of_Half_Days").val(data);
		}
		
		});
			return empHalfDays;
			
	}
	
	
	
	function set_OT_hours(){
		
		var formDate = $("#FromDate").val();
		var toDate = $("#ToDate").val();
		var emp_ID = getEmployeeId(); 
		var total_OT_hours;
		
		$.ajax({  
			
			type: 'GET',
			async:false,
			url: '/total_OT_time?theEmpId='+emp_ID+'&theFromDate='+formDate+'&theToDate='+toDate+'',
			success: function(data) {
			
				total_OT_hours = data;
				$("#No_Of_OT_Hours").val(data);
			}
		
			});
				return total_OT_hours;
			
	}
	
	
	
	function alert_OT_hours(){
		
		var sal_Allowances = $("#Allowances").val();
		
		var totalOTHours = set_OT_hours();
		var empOTFees = getEmpOTSalByType();
		var empDayFees = getEmpDaySalByType();
		var empFullDays = setFullDays();
		var empHalfDays = setHalfDays();
		var empTotalOTFees;
		var empTotalDayFees;
		var abc;
		
		
		
		$.ajax({  
			type: 'GET',
			url: '/total_OT?total_OT_Hours='+totalOTHours+'',
			
			success: function(data) {
				
				empTotalOTFees = data * empOTFees;
				empTotalDayFees = empFullDays * empDayFees;
				empTotalHalfDayFees = empHalfDays * empDayFees/2;
				
				var tol_amout_ot = parseInt(empTotalOTFees);
				var tol_amout_full_days = parseInt(empTotalDayFees);
				var tol_amout_half_days = parseInt(empTotalHalfDayFees);
				var salry_Allowances = parseInt(sal_Allowances);
				
				var T_Amount = tol_amout_ot + tol_amout_full_days + tol_amout_half_days + salry_Allowances; 
				
				
				
				var TotalAmount = T_Amount;
				
				
				$("#sbT_Full_Days").val(empTotalDayFees +" = "+" "+empFullDays+" * "+empDayFees);
				$("#subT_Half_Days").val(empTotalHalfDayFees +" = "+" "+empHalfDays+" * "+empDayFees/2);
				$("#subT_OT_Hours").val(empTotalOTFees +" = "+" "+data+" * "+empOTFees);
				
				$("#Total_Amount").val(TotalAmount);
				
				
				
			}
			
		});
			
	}
	
	
	
	
	
	
	function getEmployeeTypeById() {

		var empId = getEmployeeId();
		var empType;

	    $.ajax({
	        url: "/findEmployeeTypeById?theEmpId="+empId,
	        type: 'get',
	        async:false,
	        data: {},
	        success: function (data) {
	        	
	        	empType = data;
	        	
	        	
	        },
	        
	    });
	    		return empType;
	}
	
	
	function getEmpOTSalByType() {

		var empRole = getEmployeeTypeById();
		var empSalry;

	    $.ajax({
	        url: "/emp_role_ot_sal?empType="+empRole,
	        type: 'get',
	        async:false,
	        data: {},
	        success: function (data) {
	        	
	        	empSalry = data;
	        	
	            
	        	
	        },
	        
	    });
	    		return empSalry;
	}
	
	
	function getEmpDaySalByType() {

		var empRole = getEmployeeTypeById();
		var empSalry;

	    $.ajax({
	        url: "/emp_role_day_sal?empType="+empRole,
	        type: 'get',
	        async:false,
	        data: {},
	        success: function (data) {
	        	
	        	empSalry = data;
	            
	        	
	        },
	        
	    });
	    		return empSalry;
	}
	
	

	
}




function validateEmpSalForm() {
	

	if ($("input[name='Paid_Status']:checked").val()) {
		
		return true;	

	}else{
		
		return false;	
	}		

}





function saveEmpSalForm() {
	
	
	if (validateEmpSalForm()) {


	$.ajax({

		url : "/saveEmpSalary",
		type : "GET",
		data : $("#emp_salary_cal").serialize(),
		success : function(response) {

				if(response === "success"){
					
					swal("Saved !", "Employee Salary Sheet Successfully Saved !", "success");
					$('#emp_salary_cal')[0].reset();
				
				}else{
					
					swal("Not Saved !" , "Employee Salary Sheet Not Saved !" , "warning");
				}
			

		}
	});
	
	}else{
		
		//swal("Please check paid status !");
		swal("Not paid yet !", "The employee is not paid !", "warning");
	}

};









