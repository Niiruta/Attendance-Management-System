<?php
require 'connect.php';

	$stmt=$conn->query("UPDATE student SET
								attendance = 0
							WHERE
								student_no = '$_REQUEST[student_id]'
							");
		// unset($_POST['login']);
		// $result = $rojalstmt->execute($_POST['login']);	
        header('location:student.php');
	

?>