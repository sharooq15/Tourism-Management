<?php
$conn=mysqli_connect('localhost','root','anand999','paytm');
if(!$conn)
	die('Cannot connect to database');
$username = $_POST['username'];
$password=$_POST['password'];
$sql="SELECT * from bank WHERE username='$username'&&password='$password'";
$result=mysqli_query($conn,$sql);
if ($result->num_rows == 1 && $row = $result->fetch_assoc()) {
    	session_start('login');
		$_SESSION['card']=$row['card'];
		$_SESSION['name']=$row['name'];
		$_SESSION['ac_balance']=$row['ac_balance'];
		$_SESSION['cvv']=$row['cvv'];
		$_SESSION['ex_month']=$row['ex_month'];
		$_SESSION['ex_year']=$row['ex_year'];
		
		header('Location: my_account1.php');
} else {
		header('Location: login1_w.php');
}

?>
