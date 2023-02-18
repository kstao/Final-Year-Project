<?php

include ('connect.php');
 
if ($_SERVER["REQUEST_METHOD"] == "POST"){
    $id = $conn->real_escape_string($_POST['id']);

	$sql = "SELECT * FROM feedback WHERE user_id = '".$id."' ORDER BY feedback_date DESC";
    $result = $conn->query($sql);
    $return_arr = array();

	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			$feedback_id = $row['feedback_id'];
			$feedback_issue = $row['feedback_issue'];
			$feedback_type = $row['feedback_type'];
			$feedback_desc = $row['feedback_desc'];
			$feedback_desc = $row['feedback_desc'];
			$feedback_status = $row['feedback_status'];
			$feedback_date = $row['feedback_date'];
			$feedback_update = $row['feedback_update'];

			$return_arr[] = array(
				"feedback_id" => $feedback_id,
				"feedback_issue" => $feedback_issue,
				"feedback_type" => $feedback_type,
				"feedback_desc" => $feedback_desc,
				"feedback_status" => $feedback_status,
				"feedback_date" => $feedback_date,
				"feedback_update" => $feedback_update
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