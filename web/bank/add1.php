<?php
$conn=mysqli_connect('localhost','root','anand999','paytm');
if(!$conn)
	die('Cannot connect to database');
$card=$_POST['card'];
$name=$_POST['name'];
$ex_month=$_POST['ex_month'];
$ex_year=$_POST['ex_year'];
$sql="SELECT * from bank WHERE card='$card'&& name='$name' && ex_month='$ex_month' && ex_year='$ex_year' ";
$result=mysqli_query($conn,$sql);
if ($result->num_rows == 1 && $row = $result->fetch_assoc()) 
{
	$space="";
	if($row['username']='$space' && $row['password']='$space')
	{session_start('signup');
		$_SESSION['card']=$row['card'];
		$_SESSION['name']=$row['name'];
		header('Location: add2.php');
	}
	else 
	{
		header('Location: add2_w.php');
	}
}
else{
		header('Location: add_w.php');
}

?>