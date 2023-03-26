<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.stockex.stockexch.Entities.User" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<meta charset="UTF-8">
	<title>Personal Details</title>
</head>
<body style="width:95%;margin-left:auto;margin-right:auto;">
	<h1>Book Shop Personal Details</h1>
	<nav style="display:flex; flex-direction:row; justify-content:space-between;">
		<a href="/">Back to home</a>
		<a href="/ch">Edit Personal Details</a>
	</nav>
	<div> <% User user = (User) request.getSession().getAttribute("user"); %>
		<br>First Name: <%= user.getFirst_name() %></br>
		<br>Last Name: <%= user.getLast_name() %></br>
		<br>Address: <%= user.getUser_address() %></br>
		<br>Email: <%= user.getEmail() %></br>
	</div>
</body>
</html>