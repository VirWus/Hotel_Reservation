<?php


$response = array();


if (isset($_GET['id_user']) && isset($_GET['date_dep']) && isset($_GET['date_arr']) && isset($_GET['prix']) && isset($_GET['noms']) && isset($_GET['type'])) {

    
    $id_user = $_GET['id_user'];
  
    $date_dep = $_GET['date_dep'];
  
    $date_arr = $_GET['date_arr'];

    $prix = $_GET['prix'];

    $noms = $_GET['noms'];
  
    $type = $_GET['type'];
  
    $hotel =  $_GET['hotel'];//$_GET['hotel'];


    include_once("db_connect.php");

    
    $result = mysqli_query($connect,"INSERT INTO reservation (`id`, `user_id`, `date_arr`, `date_dep`, `prix`, `noms`, `type`, `hotel`, `accepted`) VALUES(NULL,'$id_user','$date_arr','$date_dep','$prix','$noms','$type','$hotel',0)");


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
