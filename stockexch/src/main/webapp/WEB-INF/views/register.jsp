<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<style>
		div {
			padding-top: 50px;
			padding-right: 50px;
			padding-bottom: 50px;
			padding-left: 50px;
		}
		label {
			display: inline-block;
			width: 150px;
			text-align: right;
		}
	</style>
	<meta charset="UTF-8">
	<title>Register</title>
</head>
<body style="width:95%;margin-left:auto;margin-right:auto;">
	<h1>Octavian Bank Registration Form</h1>
	<nav style="display:flex; flex-direction:row; justify-content:space-between;">
		<a href="/">Back to home</a>
	</nav>
	<div style="flex-direction:column; justify-content:center; align-items: center;">
		<form method="POST">
			<label>Firstname:</label>
			<input type="text" name="firstName"/><br>
			<label>Lastname: </label>
			<input type="text" name="lastName"/><br>
			<label>Address:  </label>
			<input type="text" name="address"/><br>
			<label>Email:    </label>
			<input type="text" name="email"/><br>
			<label>Password :</label>
			<input type="password" name="pass"/><br>
			<input type="submit" name="register" value="Register"/>
		</form>
		Have an account? <a href="/login">Click here.</a>
	</div>
</body>
</html>