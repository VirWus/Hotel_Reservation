<?php


$response = array();


if (isset($_GET['email']) && isset($_GET['pass']) ) {

    
    $email = $_GET['email'];
    $pass = $_GET['pass'];
    
    include_once("db_connect.php");

    
    $result = mysqli_query($connect,"SELECT * FROM users WHERE email = '$email' AND pass = '$pass'");

    $num=mysqli_fetch_array($result);

    if ($num){
       
        $response["success"] = 1;
        $response["message"] = "Your registration is successful";
        $response["id"]= $num['id'];
        
        echo json_encode($response);
    } else {
       
        $response["success"] = 0;
        $response["message"] = "The system detects an error, please try again";
        
      
        echo json_encode($response);
    }
} else {
    $response["success"] = 0;
    $response["message"] = "Please complete the action before starting your request";

 
    echo json_encode($response);
}

?>
