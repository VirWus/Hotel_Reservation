<?php


$response = array();


if (isset($_GET['nom']) && isset($_GET['username']) && isset($_GET['email']) && isset($_GET['pass'])) {

    
    $nom = $_GET['nom'];
  
    $email = $_GET['email'];
  
    $username = $_GET['username'];

    $pass = $_GET['pass'];


    include_once("db_connect.php");

    
    $result = mysqli_query($connect,"INSERT INTO users VALUES(NULL,'$nom','$email','$username','$pass')");


    if ($result){
       
        $response["success"] = 1;
        $response["message"] = "Your registration is successful";

        
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
