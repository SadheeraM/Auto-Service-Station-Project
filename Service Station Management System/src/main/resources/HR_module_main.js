  
//save new employee

function saveAddEmpForm() {


	$.ajax({

		url : "/empSave",
		type : "POST",
		data : $("#example-form").serialize(),
		success : function(response) {

			if(response === "sucss"){
			
				swal("Good job!", "New Employee is Saved!", "success");
			
			}else if(response === "unsucss"){
				
				swal("There is an error!", "New Employee is Not Saved!", "error");	
				
			}else{
				
				
				swal("An internal error occurred!", "New Employee is Not Saved!", "error");
			}
	
		}
	});

};


//get age of employees

function getAge(DOB) {
    
	var today = new Date();
    var birthDate = new Date(DOB);
    var age = today.getFullYear() - birthDate.getFullYear();
    var m = today.getMonth() - birthDate.getMonth();
    if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
        
    	age = age - 1;
    
    }

    return age;
}


	

$(document).ready(listEmployees);
function listEmployees(){

	
	$.ajax({
        url: '/listEmployees',
        type: 'post',
        data:{},
        success: function (data) {
            
            var row = '<thead><tr>' +
                
                	  '</tr></thead><tbody>';
            
            for (var i = 0; i < data.length; i++) {
                row += '<tr><td style="display:none;">' + data[i].emp_id +
                	
                	'</td><td>' + '<img src="../../assets/images/users/index.jpg" width="175">' + '<br>' +
                	
                	
                	
                	'<a href="/addEmployeeUpdate?employeeId='+data[i].emp_id+'" class="btn btn-success btn-sm">'+
					'<i class="fas fa-edit" style="font-size:20px;color:black"></i></a>' +" "+
					
					
					'<button type="button" class="btn btn-danger btn-sm deleteEmployee">' +
					'<i class="fas fa-trash" style="font-size:20px;color:black"></i></button>' +" "+
                	
					'<button type="button" class="btn btn-info btn-sm viewPrf">' + 
 					'more info...'+'</button>' +
                	
                	'</td><td>' +"<p style='font-size:20px;color:blue'>"+data[i].empFname+" "+data[i].empLname +
 					"</p>"+"Employee ID: "+"OTK_EMP"+ data[i].emp_id +
 					"<br>"+"Gender: "+data[i].empGender+"<br>"+"Employee Type: "+data[i].empTypeJob+"<br>" +
 					"Age: "+ getAge(data[i].empDOB) + "<br>" + 
 					
 					"<div style='display:none;' id=prof"+data[i].emp_id+">Address: " + data[i].empAddrss + "<br>" +
 					"NIC: " + data[i].empNIC + "<br>" +
 					"Status: " + data[i].empStatus + "<br>" +
 					"Job Start Date: " + data[i].empJobStDate + "<br>" +
 					"Contact No: " + data[i].empContNo + "<br>" +
 					"Work Experience: " + data[i].empWkExp + "<br>" +
 					"Educational Qualifications: " + data[i].empEduQualfi + "<br>" +
 					"Email: " + data[i].empEmail + "<br>" +
 					"Additional Information: " + data[i].empAddInfo + "<br>" +
 					
 					
 					"</div>" +
 					
 					
					
					'</td></tr>';
            }
            row += '</tbody>';

            $("#employees_list").html(row);
			
			
            //get id for delete Employee
			$('tbody').on('click', '.deleteEmployee', function () {
                
				var cs = $(this).closest('tr');
		        var id = cs.find('td:eq(0)').text();
		        
		        deleteEmployee(id);
              
            });
			
			//get id for view Employee Profile
			$('tbody').on('click', '.viewPrf', function () {
                
				var cs = $(this).closest('tr');
		        var id = cs.find('td:eq(0)').text();
		        
		        
		        //viewProfEmployee(id);
              
            });
			
			$('tbody').on('click', '.viewPrf', function () {
                
				var cs = $(this).closest('tr');
		        var id = cs.find('td:eq(0)').text();
		        var divID = "prof"+id;
		        
		        viewEmployeeProfile(divID);
		        
              
            });
			
           
        },
        
    });
	
};	
	


function viewEmployeeProfile(divID) {
	  
	var x = document.getElementById(divID);
	  if (x.style.display === "none") {
	    x.style.display = "block";
	  } else {
	    x.style.display = "none";
	  }
	}



function deleteEmployee(id) {

			swal({
				  title: "Delete Employee !",
				  text: "Do you want to delete this Employee !",
				  icon: "warning",
				  buttons: true,
				  dangerMode: true,
				})
				.then((willDelete) => {
				  if (willDelete) {
						  
					  $.ajax({
							url: '/updateEmployee?theId='+id+'&theDeleted='+"Yes",
							type: "get",
							success : function(data){
										
										listEmployees();	
										swal({
											title: "Good job!",
											text: "The Employee has been deleted !",
											icon: "success",
								  	  
											});
										
									}
							});
					  
				  } else {
					  //...
				  }
				});
			};
	
	
	
/**	

function viewProfEmployee(id) {

				
							  
						  $.ajax({
								url: '/findEmpProfile?theId='+id,
								type: "get",
								success : function(data){
											
											var fname = data.empFname;
											var lname = data.empLname;
											var address = data.empAddrss;
											var gender = data.empGender;
											var nic = data.empNIC;
											
											var fullname = fname+" "+lname+" "+address+" "+gender+" "+nic;
												
											swal("Profile",fullname,"info");
											
											
											
										}
								});
						  
					  
				};		

*/
				

		