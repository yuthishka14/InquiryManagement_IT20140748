<%@page import="com.Inquiry"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inquiry Management</title>

<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.6.0.min.js"></script>
<script src="Components/inquiry.js"></script>

</head>
<body>

<div class="container"><div class="row"><div class="col-6"> 
<h1>Inquiry Management</h1>
<form id="formInquiry" name="formInquiry" method="post" action="inquiry.jsp">
 NIC: 
 <input id="nic" name="nic" type="text" 
 class="form-control form-control-sm">
 <br> Name: 
 <input id="name" name="name" type="text" 
 class="form-control form-control-sm">
 <br> Address: 
 <input id="address" name="address" type="text" 
 class="form-control form-control-sm">
 <br> Postal code: 
 <input id="postalCode" name="postalCode" type="text" 
 class="form-control form-control-sm">
 <br>Issue: 
 <input id="issue" name="issue" type="text" 
 class="form-control form-control-sm">
 <br>
 <input id="btnSave" name="btnSave" type="button" value="Save" 
 class="btn btn-primary">
 <input type="hidden" id="hidInquiryIDSave" 
 name="hidInquiryIDSave" value="">
</form>
<div id="alertSuccess" class="alert alert-success"></div>
<div id="alertError" class="alert alert-danger"></div>
<br>
<div id="divInquiryGrid">
 <%
 Inquiry inquiryObj = new Inquiry(); 
 out.print(inquiryObj.readInquiry()); 
 %>
</div>
</div> </div> </div> 

</body>
</html>