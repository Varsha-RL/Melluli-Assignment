<%@page import="com.melluli.challenge.springapp.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
User user = new User();
user = (User) request.getAttribute("user");
%>
<!DOCTYPE html>
<html>
<head>  <!-- style="background-color: #5cb85c;" -->
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

</head>
<body>
	<nav class="navbar  navbar-fixed-top" style="background-color: #5cb85c; color: white;">
		<div class="container-fluid">
		    <div class="navbar-header row">
		      <label style="font-size: 22px; padding-top:10px; margin-left: 25px;">User Details</label>
		    </div>
		  </div>
	</nav>
	<br>
	<div class="container" style="margin-top:50px">
		<form class="form-group">
			<div class="row">
				<div class="col-xs-4 text-right">
					<label for="userId">User Id :</label>
				</div>
				<div class="col-xs-3">
					<input type="text" class="form-control" readonly name="${user.id}" value="${user.id}"/>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-4 text-right">
					<label for="name">User Name :</label>
				</div>
				<div class="col-xs-3">
					<input type="text" class="form-control" readonly name="${user.name}" value="${user.name}">
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-4 text-right">
					<label for="gender">Gender :</label>
				</div>
				<div class="col-xs-3">
					<input type="text" class="form-control" readonly name="${user.gender}" value="${user.gender}">
				</div>
			</div>
			<br>
			<div class="row">
			 	<div class="col-xs-4 text-right">
					<label for="sel1">City :</label>
				</div>
				<div class="col-xs-3">
					<input type="text" class="form-control" readonly name="${user.city}" value="${user.city}">
				</div>
				<%-- <div class="col-xs-3">
					<select class="form-control" id="city"  name="${user.city}" value="${user.city}">
					    <option>Banglore</option>
					    <option>Mysore</option>
					    <option>Davangere</option>
					    <option>Chitra Durga</option>
					  </select>
				</div> --%>
			</div>
			<br>
			<div class="row">
			 	<div class="col-xs-4 text-right">
					<label for="sel1">Country :</label>
				</div>
				<div class="col-xs-3">
					<input type="text" class="form-control" readonly  name="${user.country}" value="${user.country}">
				</div>
				<%-- <div class="col-xs-3">
					<select class="form-control" id="country"  name="${user.country}" value="${user.country}">
					    <option>India</option>
					    <option>United States</option>
					    <option>Russia</option>
					    <option>Australia</option>
					  </select>
				</div> --%>
			</div>
			<br>
			<div class="row">
				<div class="text-right col-xs-7">
					<a type="button" class="btn btn-success" href="http://localhost:8080/Melluli-challenge-Project/users">Back</a>
				</div>
			</div>
		</form>
	</div>
	
	
</body>
</html>