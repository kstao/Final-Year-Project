<?php

include ('connect.php');
 
if ($_SERVER["REQUEST_METHOD"] == "POST"){
    
	$sql = "SELECT * FROM feedback WHERE feedback_type = 'complaint'";
    $result = $conn->query($sql);
    $return_arr = array();

	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			$feedback_desc = $row['feedback_desc'];
			$feedback_status = $row['feedback_status'];
			$feedback_priority = $row['feedback_priority'];
			$feedback_issue = $row['feedback_issue'];

			$return_arr[] = array(
				"feedback_desc" => $feedback_desc,
				"feedback_status" => $feedback_status,
				"feedback_issue" => $feedback_issue,
                "feedback_priority" => $feedback_priority
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