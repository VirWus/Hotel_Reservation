<?php
session_start();
if(isset($_SESSION["email"]) && !empty($_SESSION["email"]) && isset($_SESSION["pass"]) && !empty($_SESSION["pass"]) ){

}else {
  header("Location:../admin/index.php");
}
?>
<?php
if($_GET){
	$id = $_GET['id'];

		include_once("connect/connection.php");
		$sql = "UPDATE reservation set accepted = '1' where id='$id'";
			$r=mysqli_query($connect, $sql);

			header("location:reservation.php");
		}
			?>
