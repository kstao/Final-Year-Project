<?php

include ('connect.php');
 
if ($_SERVER["REQUEST_METHOD"] == "POST"){
	$tracking_number = $conn->real_escape_string($_POST['tracking_number']);

	$sql = "SELECT * FROM delivery_details WHERE tracking_number = '".$tracking_number."'";
	$result = $conn->query($sql);

	if ($result->num_rows == 1) {
		while($row = $result->fetch_assoc()) { 
			$sentData=[	"result" 	=> true ];
			echo json_encode($sentData);
		}
	}
	else { 
		$sentData=["result" => false];
		echo json_encode($sentData);
	}

	$conn->close();
}
?>