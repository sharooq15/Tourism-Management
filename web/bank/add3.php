<?php
$conn=mysqli_connect('localhost','root','anand999','paytm');
if(!$conn)
	die('Cannot connect to database');
$username=$_POST['username'];
$password=$_POST['password'];
$sql1="SELECT * FROM bank WHERE username='$username' ";
$result=mysqli_query($conn,$sql1);
if ($result->num_rows == 0)
{
session_start('signup');
$card=$_SESSION['card'];
$sql="UPDATE bank SET username='$username' , password='$password' WHERE card='$card'";
if(!mysqli_query($conn,$sql))
	echo "ERROR :".mysqli_error($conn);
else
{echo "Record Updated Successfully.";
session_unset('signup');
}}
else{
	echo "!!!!";
}
?>