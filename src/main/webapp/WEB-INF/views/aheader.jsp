<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Medicare Dashboard</title>
<link rel="stylesheet" href="css/bootstrap.css">
<script src="js/jquery-3.4.1.js"></script>
<script src="js/bootstrap.js"></script>
<style>
body{
background-image:url(images/bg2.jpg);
background-size:100% 100%;
min-height:100vh;
}
</style>
</head>
<body>
<h5 class="float-left m-2">Role : ${sessionScope.role }</h5>
<h5 class="float-right m-2">Welcome ${sessionScope.uname }</h5>
<div class="jumbotron p-5 bg-transparent text-center mb-0 rounded-0 border-bottom">
	<h5>Welcome to Medicare Billing System Portal</h5>
</div>
<div class="container-fluid">
<div class="row">
	<div class="col-sm-2 p-0">
		<div class="list-group">
		<c:if test="${sessionScope.role =='Admin' }">
		<!--  <a href="/patients" class="list-group-item list-group-item-action">Patients</a>
		  <a href="/doctors" class="list-group-item list-group-item-action">Doctors</a> 
		  <a href="/diagservices" class="list-group-item list-group-item-action">Diagnostic Service</a>
		  <a href="/tests" class="list-group-item list-group-item-action">Update Test Result</a>
		  
		  -->
		  <a href="/frontdesks" class="list-group-item list-group-item-action">Front Desk Staff</a>
		  
	    </c:if>
	    <c:if test="${sessionScope.role =='FrontDesk' }">
		  <a href="/patientregbyfd" class="list-group-item list-group-item-action">Patient Registration</a>	
		  <a href="/patientbilling" class="list-group-item list-group-item-action">Patient Billing</a>	
		  	  
		  
		  <a href="/viewfronttdesk" class="list-group-item list-group-item-action">Patients</a>		
		    
	    </c:if>
	    <c:if test="${sessionScope.role =='User' }">
	     <a href="/viewpatientsbyuser" class="list-group-item list-group-item-action">Patients</a>	
	    <a href="/patientregbyuser" class="list-group-item list-group-item-action">Patient Registration</a>	
		  <a href="/patientbill" class="list-group-item list-group-item-action">View Patient Bill</a>	
		 
	  </c:if>
		  <a href="/logout" class="list-group-item list-group-item-action">Logout</a>
		</div>
	</div>
	<div class="col-sm-10">