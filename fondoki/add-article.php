<?php
session_start();
if(isset($_SESSION["email"]) && !empty($_SESSION["email"]) && isset($_SESSION["pass"]) && !empty($_SESSION["pass"]) ){

}else {
  header("Location:../admin/index.php");
}
?>
<?php

include_once("admin/connect/connection.php");
    	
      if($connect){

  $directory = "images/";
  $file =  $directory.basename($_FILES["fileto"]["name"]);
  $nom = $_POST["name"];
  $descr = $_POST["descr"];
  $checkin= $_POST['checkin'];
  $lat  = $_POST['lat'];
  $len = $_POST['len'];
  $adress = $_POST['adress'];
  $stars = $_POST['stars'];
  $prix = $_POST['price'];
  $city = $_POST['CityName'];
  $trapurl = $_POST['trapurl'];

  $pathparts = pathinfo($file);



$p = intval($prix);
$st = intval($stars);
 $la = floatval($lat);
 $le = floatval($len);


if(!empty($nom) && !empty($checkin) && !empty($city) && !empty($lat) && !empty($len) && !empty($prix) && !empty($stars) && !empty($adress) && !empty($descr) && !empty($trapurl) ) {

    $ext =  $pathparts["extension"];

    if($ext == "jpg" || $ext == "png") {
      
     move_uploaded_file($_FILES["fileto"]["tmp_name"], $file);
    
     $file = "http://192.168.43.215/fondoki/".$file;

  $query = mysqli_query($connect,"INSERT INTO hotels VALUES(NULL,'$nom','$st','$p','$city','$adress','$trapurl','$la','$le','$descr','$checkin','$file')");

    }else{
     echo "Your file is not supported";
    }

}else {
  echo "ERROR ! , try again";
}

   header("location:admin/hotel.php");
    }


?>
