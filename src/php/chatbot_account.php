<?php

include ('connect.php');
 
if ($_SERVER["REQUEST_METHOD"] == "POST"){
    

	$sql = "SELECT * FROM feedback_unknown ";
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