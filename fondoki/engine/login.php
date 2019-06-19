<?php
session_start();
if(isset($_SESSION["email"]) && !empty($_SESSION["email"]) && isset($_SESSION["pass"]) && !empty($_SESSION["pass"]) ){
header("Location:../admin/admin.php");
}else {
$email = $_POST["email"];
$pass = $_POST["password"];
if(!empty($email) && !empty($pass)){

  include_once("connect/connection.php");
  $query = mysqli_query($connect,"SELECT * FROM users WHERE  email = '$email' AND pass='$pass'");
  $row = mysqli_num_rows($query);
  if($row > 0){

if(isset($_POST["remember"])){
  $_SESSION["email"] = $email;
  $_SESSION["pass"] = $pass;

}
header("Location:../admin/hotel.php");
 
  }else {
    echo "Error wrong email or password";
  }
}else {
  echo "Verify your email or password";
}
}
 ?>
