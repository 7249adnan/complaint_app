<?php
$response = array();
require_once __DIR__ . '/db_connect.php';

$data = json_decode(file_get_contents("php://input"));

if (isset($data->complaint_no)) {
    $complaint_no = intval($data->complaint_no);
    $result = mysqli_query($conn, "SELECT cus_id, email, field_7, field_8, field_9, field_10, field_11, created_date 
                                   FROM complaint WHERE cus_id='$complaint_no'");

    if (mysqli_num_rows($result)) {
        $row = mysqli_fetch_assoc($result);

        $response["success"] = 1;
        $response["details"] = $row;
    } else {
        $response["success"] = 0;
        $response["message"] = "Complaint not found.";
    }

    echo json_encode($response);
    exit;
}

$response["success"] = 0;
$response["message"] = "Invalid request.";
echo json_encode($response);
?>
