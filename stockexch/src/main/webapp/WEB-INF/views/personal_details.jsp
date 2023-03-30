<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.stockex.stockexch.Entities.User" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Zen+Maru+Gothic:wght@300&display=swap" rel="stylesheet">
	<meta charset="UTF-8">
	<title>Personal Details</title>
	<style>
		body {
			margin: 0;
			padding: 0;
			background-color: #222;
			color: #eee;
			font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
		}
		.container {
			margin-top: 50px;
			margin-right: auto;
			margin-bottom: 50px;
			margin-left: auto;
			display: flex;
			flex-direction: column;
			justify-content: center;
			align-items: center;
			padding: 50px;
			background-color: #313131;
			border-radius: 5px;
			box-shadow: 0px 0px 10px #595858;
			width: 100%;
			max-width: 500px;
		}
		h1 {
                margin: 0;
                font-style: normal;
                font-family: "Zen Maru Gothic", sans-serif;
                font-weight: bold;
            }
		h2 {
			margin-top: 0;
			margin-bottom: 0px;
			font-weight: bold;
			font-size: 32px;
			color: #eee;
		}
</style>
</head>
<body style="width:95%;margin-left:auto;margin-right:auto;">
	<h1>ON TRADING</h1>
	<nav style="display:flex; flex-direction:row; text-align:column-reverse;" >
		<a href="/">Back to home</a>
		<a href="/ch">Edit Personal Details</a>
	</br>
	</nav>
	<div class="container">
	
	
	<h2>Account Summary</h2>
	<div> <% User user = (User) request.getSession().getAttribute("user"); %>
		<br>First Name: <%= user.getFirst_name() %></br>
		<br>Last Name: <%= user.getLast_name() %></br>
		<br>Address: <%= user.getUser_address() %></br>
		<br>Email: <%= user.getEmail() %></br>
	</div>
</div>
</body>
</html>
