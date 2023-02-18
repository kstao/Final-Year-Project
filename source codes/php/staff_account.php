<?php

include ('connect.php');
 
if ($_SERVER["REQUEST_METHOD"] == "POST"){
	$role = $conn->real_escape_string($_POST['role']);

	if($role == 2)
		$role = 'courier';
	else if($role == 3)
		$role = 'general issue';
	else if ($role == 4)
		$role = 'customer service'; 
	else if ($role == 6)
		$role = 'chatbot'; 

	$sql = "SELECT * FROM feedback WHERE feedback_issue = '".$role."'";
    $result = $conn->query($sql);
    $return_arr = array();

	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			$feedback_status = $row['feedback_status'];
			$feedback_type = $row['feedback_type'];

			$return_arr[] = array(
				"feedback_status" => $feedback_status,
				"feedback_type" => $feedback_type
			);
		}
		$sentData=["result" => true, "feedback" => $return_arr];
		echo json_encode($sentData);
	}
	else { 
		$sentData=["result" => false, "value" => "Error"];
		echo json_encode($sentData);
	}

	$conn->close();
}
?>