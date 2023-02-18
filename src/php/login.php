<?php

include ('connect.php');
 
if ($_SERVER["REQUEST_METHOD"] == "POST"){
	$username = $conn->real_escape_string($_POST['username']);
	$password = $conn->real_escape_string($_POST['password']);

	$sql = "SELECT * FROM users WHERE username = '".$username. "' AND password = '".$password. "'";
	$result = $conn->query($sql);

	if ($result->num_rows == 1) {
		while($row = $result->fetch_assoc()) { 
			$sentData=[	"result" 	=> true,
						"username" 	=> $row['username'], 
						"id" 		=> $row['user_id'], 
						"role"		=> $row['role']];
			echo json_encode($sentData);
		}
	}
	else { 
		$sentData=["result" => false, "value" => $username];
		echo json_encode($sentData);
	}

	$conn->close();
}
?>