$(document).ready(list_finish_jobs);
function list_finish_jobs(){
    
	$.ajax({
        url: '/find_finish_Jobs',
        type: 'get',
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
					
					
					'<a href="/invoicePage" class="btn btn-success deleteBooking" id="deleteBtn" onclick="">' +
					'CHECKOUT</a>'+
                    '</td></tr>';
            }
            row += '</tbody>';

            $("#table_list_finish_Jobs").html(row);
			
			$('#table_list_finish_Jobs').DataTable({
			    destroy: true,
			    
			    "lengthMenu": [[5, 10, 15, -1], [5, 10, 15, "All"]],
			    
			    "order": [[ 5, "asc" ],[ 6, "asc" ]]
				});
			
			
			//get id for delete Booking
			$('.dataTable tbody').on('click', '.deleteBooking', function () {
                
				var cs = $(this).closest('tr');
		        var id = cs.find('td:eq(0)').text();
		        
		        show_invoice_datails(id);
		        
		        
           });
			
			
        },
        
    });
	
	
};




function show_invoice_datails(id){
	
	var inv_id = id;
	var vehice_no;
	
	$.ajax({
        url: '/getInvoiceDetails?id='+inv_id+'',
        type: 'get',
        async:false,
        data:{},
        success: function (data) {
            
            	
        		var inv_id = data[0][0];
         		localStorage.setItem("sendID1",inv_id);
         		
         		var inv_id2 = data[0][0];
         		localStorage.setItem("send_id",inv_id2);
         		
         		var inv_date = data[0][3];
         		localStorage.setItem("sendDATE",inv_date);
         		
         		var inv_veh_no = data[0][12];
         		vehice_no = data[0][12];
         		localStorage.setItem("send_VEH_NO",inv_veh_no);
         		
         		var inv_full_name = data[0][2];
         		localStorage.setItem("send_full_name",inv_full_name);
         		
         		
         		
           
        },
        
        
    });

			return vehice_no;
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
					  updateookingAsPAID();
					  
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



// updated booking as paid
function updateookingAsPAID() {
	
	var bookID = localStorage.getItem("sendID1");
	


	$.ajax({

		url : "/updateBookingAsPaid?theId="+bookID+"",
		type : "GET",
		//data : $("#invoiceItems").serialize(),
		success : function(response) {

			//alert("updated");

		}
	});
	


}





function saveFinalizeBillForm() {
	
	//var vehicle_number =  localStorage.getItem("inv_veh_no");
	var abc = localStorage.getItem("sendID1");
	
	var vehile_NUMBER = show_invoice_datails(abc);
	
	var next_METER = parseInt($('#currentMeter').val())+10000;
	

	$.ajax({

		url : "/saveBill",
		type : "POST",
		
		data: {

			
			forId:$('#forId').val(),
			
			invoDate:$('#invoDate').val(),
			
			fullName:$('#fullName').val(),
			
			vehNo:vehile_NUMBER,
			
			checkedBy:$('#checkedBy').val(),
			
			invoiceId:$('#invoiceId').val(),
			
			paidStatus:$('#paidStatus').val(),
			
			paymentMethod:$('#paymentMethod').val(),
			
			subTotal:$('#subTotal').val(),
			
			item_list:"Summary of bill",
			
			totalAmount:$('#totalAmount').val(),
			
			subTotalDiscount:$('#subTotalDiscount').val(),
			
			currentMeter:$('#currentMeter').val(),
			
			nextService:next_METER,
			
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








