<?php
$response = array();
require_once __DIR__ . '/db_connect.php';

$data = json_decode(file_get_contents("php://input"));

if (isset($data->email)) {
    $email = mysqli_real_escape_string($conn, $data->email);
    $result = mysqli_query($conn, "SELECT cus_id, field_7, field_8, field_9, created_date 
                                   FROM complaint WHERE email='$email'");

    if (mysqli_num_rows($result)) {
        $complaints = array();
        while ($row = mysqli_fetch_assoc($result)) {
            $complaints[] = $row;
        }
        $response["success"] = 1;
        $response["complaints"] = $complaints;
    } else {
        $response["success"] = 0;
        $response["message"] = "No complaints found for this user.";
    }
    echo json_encode($response);
    exit;
}

$response["success"] = 0;
$response["message"] = "Invalid request.";
echo json_encode($response);
?>
