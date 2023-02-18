<?php

include ('connect.php');
 
if ($_SERVER["REQUEST_METHOD"] == "POST"){

	$sql = "SELECT * FROM feedback_unknown WHERE feedback_status != 'Complete' ORDER BY feedback_priority DESC";
    $result = $conn->query($sql);
    $return_arr = array();

	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			$feedback_id = $row['feedback_id'];
			$feedback_desc = $row['feedback_desc'];
			$feedback_status = $row['feedback_status'];
			$feedback_date = $row['feedback_date'];
			$feedback_sentiment = $row['feedback_sentiment'];
			$feedback_urgency = $row['feedback_urgency'];
			$feedback_update = $row['feedback_update'];
			$feedback_priority = $row['feedback_priority'];

			$return_arr[] = array(
				"feedback_id" => $feedback_id,
				"feedback_desc" => $feedback_desc,
				"feedback_status" => $feedback_status,
				"feedback_date" => $feedback_date,
				"feedback_sentiment" => $feedback_sentiment,
				"feedback_urgency" => $feedback_urgency,
                "feedback_update" => $feedback_update,
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