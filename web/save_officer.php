<?php
/*********************

**** CPanel ******************
*********/

/* Following code will match user login credentials */

// array for JSON response
$response = array();

// include db connect class
require_once __DIR__ . '/db_connect.php';

// connecting to db


$data = json_decode(file_get_contents("php://input"));

$get_user_id = ($data->user_id);
$get_admin_id = ($data->password);
$get_fname = ($data->name);
$get_lname = ($data->email);
$get_mobile = ($data->mobile);
$get_place = ($data->place);
$get_dept = ($data->dept);

if(empty($get_admin_id) || empty($get_fname) || empty($get_lname) || empty($get_mobile))
{
	$response["success"] = 2;
	echo json_encode($response);
}
else if (strlen($get_mobile) != 10) 
{
	$response["success"] = 3;
	echo json_encode($response);
}
else
{
	// get customer 
	$result = mysqli_query($conn,"UPDATE staff_login SET name='$get_fname', email='$get_lname', mobile='$get_mobile' , password='$get_admin_id', place='$get_place', dept='$get_dept' WHERE user_id = '$get_user_id' ");

	// check for empty result
	if($result)
	{
		// success
		$response["success"] = 1;
		
		// echoing JSON response
		echo json_encode($response);
	}
	else 
	{
		// unsuccess
		$response["success"] = 0;
		
		// echoing JSON response
		echo json_encode($response);
	}
}	
?>