<?php
require 'admin/connect.php';
if(isset($_POST['login'])){
	$student = $_POST['student_id'];
	$rojalstmt=$conn->query("UPDATE student SET
								attendance = 1
							WHERE
								student_no = $student
							");
		// unset($_POST['login']);
		// $result = $rojalstmt->execute($_POST['login']);	
		if($result == true)	{
			echo "Updated";
			header('location:index.php');
		}
		else echo "Record Not Updated";
	}

?>
<!DOCTYPE html>
<html lang = "eng">
	<head>
		<meta charset = "utf-8" />
		<title>Attendance Management System</title>
		<meta name = "viewport" content = "width=device-width, initial-scale=1" />
		<link rel = "stylesheet" type = "text/css" href = "css/bootstrap.css"/>
	</head>
	<body class = "alert-info">
		<nav class = "navbar navbar-inverse navbar-fixed-top">
			<div class = "container-fluid">
				<div class = "navbar-header">
					<img src = "admin/images/logoo.png" width = "300px" height = "50px"/>
					<p class = "navbar-text pull-right">Attendance Management System</p>
				</div>
			</div>
		</nav>
		<div class = "container-fluid">
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<div class = "col-lg-3"></div>
			<div class = "col-lg-6 well">
				<h2>Attendance Login</h2>
				<br />
				<div id = "result"></div>
				<br />
				<br />
				<form method="POST" action="index.php">
					<div class = "form-group">
						<label>Student ID:</label>
						<input type = "number"  name="student_id" class = "form-control" required = "required"/>
						<br />
						<br />
						<div id = "error"></div>
						<br />

						<input type = "submit"  name="login" value="Login" class = "btn btn-primary btn-block"><span class = "glyphicon glyphicon-login"></span>
					</div>
				</form>
			</div>
		</div>
	</body>
	<script src = "js/jquery.js"></script>
	<script src = "js/bootstrap.js"></script>
	<!-- <script src = "js/login.js"></script> -->
</html>