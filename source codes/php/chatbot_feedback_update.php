<?php

include ("connect.php");

if ($_SERVER["REQUEST_METHOD"] == "POST"){
	$feedback_id = $conn->real_escape_string($_POST['feedback_id']);
	$feedback_update = $conn->real_escape_string($_POST['feedback_update']);

	$sql = "UPDATE feedback_unknown SET feedback_status = 'In progress', feedback_update = '".$feedback_update."' WHERE feedback_id = '".$feedback_id. "'";

	if (mysqli_query($conn, $sql)) {
		$sentData=["result" => true];
        echo json_encode($sentData);

	} else {
		echo "Error updating record: " . mysqli_error($conn);
	}
	$conn->close();
}
?>
