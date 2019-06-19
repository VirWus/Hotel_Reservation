<?php


$response = array();


if (isset($_GET['vile']) && isset($_GET['days'])&& isset($_GET['nbadulte'])&& isset($_GET['nbenfant']) ) {

    
    $vile = $_GET['vile'];
    $date = $_GET['days'];
    
    $nbadulte = (int) $_GET['nbadulte'];
    $nbenfant = (int)$_GET['nbenfant'];

    include_once("db_connect.php");

    

    $result = mysqli_query($connect,"SELECT * FROM hotels WHERE cityname = '$vile' ");

if (mysqli_num_rows($result) > 0) {
 
    $response["fondoki"] = array();

    while ($row =  mysqli_fetch_assoc($result)) {

        
        $data = array();

        $data["name"] = $row["name"];

        $data["stars"] = $row["stars"];


        //////////////////////  
        $prix = (int) $row["price"];

        $total = (($prix * $nbadulte) +($nbenfant*($prix / 2))) * $date;

        $data["price"] = $total;
        ////////////////////////////
        
        $data["address"] = $row["adress"];
        
        $data["tripurl"] = $row["tripurl"];
        
        $data["lat"] = $row["lat"];
        
        $data["len"] = $row["len"];
        
        $data["descr"] = $row["descr"];

        $data["photo"] = $row["photo"];

       
        array_push($response["fondoki"], $data);
    }

    $response["success"] = 1;


    echo json_encode($response);
} else {
    $response["success"] = 0;
    $response["message"] = "No data found";

    echo json_encode($response);
}
} else {
    $response["success"] = 0;
    $response["message"] = "Please complete the action before starting your request";

 
    echo json_encode($response);
}

?>
