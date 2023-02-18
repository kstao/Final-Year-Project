<?php

include ('connect.php');
 
if ($_SERVER["REQUEST_METHOD"] == "POST"){
	$issue = $conn->real_escape_string($_POST['issue']);
	$type = $conn->real_escape_string($_POST['type']);
	$desc = $conn->real_escape_string($_POST['desc']);
    $sentiment = $conn->real_escape_string($_POST['sentiment']);
    $urgency = $conn->real_escape_string($_POST['urgency']);
    $id = $conn->real_escape_string($_POST['id']);
    $priority = $conn->real_escape_string($_POST['priority']);
    $tracking_number = $conn->real_escape_string($_POST['tracking_number']);

	$sql = "INSERT INTO feedback (feedback_issue, feedback_type, feedback_desc, feedback_status, feedback_sentiment, feedback_urgency, user_id, feedback_priority, tracking_number)
			VALUES ('".$issue."', '".$type."', '".$desc."', 'Sent', '".$sentiment."', '".$urgency."', '".$id."', '".$priority."', '".$tracking_number."')";

    // echo json_encode('result' => $sql);
	if ($conn->query($sql) === TRUE) {
		$jsonData = array(
			'result' => true,
			'value' => 'ok'
	    );
		echo json_encode( $jsonData );
	} else {
		$jsonData = array(
			'result' => false,
			'value' => 'no'
		);
		echo json_encode( $jsonData );
	}

	$conn->close();
}
?>