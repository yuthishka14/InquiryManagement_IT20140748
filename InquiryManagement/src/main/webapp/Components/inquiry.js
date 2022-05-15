$(document).ready(function(){
if ($("#alertSuccess").text().trim() == "")
{
$("#alertSuccess").hide();
}
$("#alertError").hide();
});
$(document).on("click", "#btnSave", function(event)
{ 
// Clear alerts---------------------
 $("#alertSuccess").text(""); 
 $("#alertSuccess").hide(); 
 $("#alertError").text(""); 
 $("#alertError").hide(); 
// Form validation-------------------
var status = validateInquiryForm(); 
if (status != true) 
 { 
 $("#alertError").text(status); 
 $("#alertError").show(); 
 return; 
 } 
// If valid------------------------
var type = ($("#hidInquiryIDSave").val() == "") ? "POST" : "PUT"; 
 $.ajax( 
 { 
 url : "InquirysAPI", 
 type : type, 
 data : $("#formInquiry").serialize(), 
 dataType : "text", 
 complete : function(response, status) 
 { 
 onInquirySaveComplete(response.responseText, status); 
 } 
 }); 
});

function onInquirySaveComplete(response, status)
{
	location.reload(); 
if (status == "success") 
 { 
 var resultSet = JSON.parse(response); 
 if (resultSet.status.trim() == "success") 
 { 
 $("#alertSuccess").text("Successfully saved."); 
 $("#alertSuccess").show(); 
 $("#divInquiryGrid").html(resultSet.data); 
 } else if (resultSet.status.trim() == "error") 
 { 
 $("#alertError").text(resultSet.data); 
 $("#alertError").show(); 
 } 
 } else if (status == "error") 
 { 
 $("#alertError").text("Error while saving."); 
 $("#alertError").show(); 
 } else
 { 
 $("#alertError").text("Unknown error while saving.."); 
 $("#alertError").show(); 
 }
$("#hidInquiryIDSave").val(""); 
$("#formInquiry")[0].reset(); 
}


// UPDATE==========================================
$(document).on("click", ".btnUpdate", function(event)
		{ 
		$("#hidInquiryIDSave").val($(this).data("inquiryid")); 
		 $("#nic").val($(this).closest("tr").find('td:eq(0)').text()); 
		 $("#name").val($(this).closest("tr").find('td:eq(1)').text()); 
		 $("#address").val($(this).closest("tr").find('td:eq(2)').text()); 
		 $("#postalCode").val($(this).closest("tr").find('td:eq(3)').text()); 
		 $("#issue").val($(this).closest("tr").find('td:eq(4)').text()); 
		});




$(document).on("click", ".btnRemove", function(event)
		{ 
		 $.ajax( 
		 { 
		 url : "InquirysAPI", 
		 type : "DELETE", 
		 data : "inquiryNo=" + $(this).data("inquiryid"),
		 dataType : "text", 
		 complete : function(response, status) 
		 { 
		 onInquiryDeleteComplete(response.responseText, status); 
		 } 
		 }); 
		});
		
function onInquiryDeleteComplete(response, status)
{ 
	location.reload();
if (status == "success") 
 { 
 var resultSet = JSON.parse(response); 
 if (resultSet.status.trim() == "success") 
 { 
 $("#alertSuccess").text("Successfully deleted."); 
 $("#alertSuccess").show(); 
 $("#divInquiryGrid").html(resultSet.data); 
 } else if (resultSet.status.trim() == "error") 
 { 
 $("#alertError").text(resultSet.data); 
 $("#alertError").show(); 
 } 
 } else if (status == "error") 
 { 
 $("#alertError").text("Error while deleting."); 
 $("#alertError").show(); 
 } else
 { 
 $("#alertError").text("Unknown error while deleting.."); 
 $("#alertError").show(); 
 } 
}


// CLIENT-MODEL================================================================
function validateInquiryForm()
{
	// CODE
	if ($("#nic").val().trim() == "")
	{
	return "Insert Nic no.";
	}
	// NAME
	if ($("#name").val().trim() == "")
	{
	return "Insert Name.";
}
	// ADDRESS
	if ($("#address").val().trim() == "")
	{
	return "Insert Address.";
}
	// POSTALCODE
	if ($("#postalCode").val().trim() == "")
	{
	return "Insert PostalCode.";
	}


// ISSUE------------------------
if ($("#issue").val().trim() == ""){
	
	return "Insert issue.";
}
	return true;
}