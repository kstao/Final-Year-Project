<?php

include ('connect.php');
 
if ($_SERVER["REQUEST_METHOD"] == "POST"){
    
	$sql = "SELECT feedback_type, feedback_issue, feedback_status FROM `feedback`;";
    $result = $conn->query($sql);
    $return_arr = array();

	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			$feedback_type = $row['feedback_type'];
			$feedback_issue = $row['feedback_issue'];
			$feedback_status = $row['feedback_status'];

			$return_arr[] = array(
				"feedback_type" => $feedback_type,
				"feedback_issue" => $feedback_issue,
				"feedback_status" => $feedback_status
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