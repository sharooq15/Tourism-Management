<?php
session_start();
//$admin="admin";
echo $_SESSION['username']."<br/>";
echo $_SESSION['password'];
if($_SESSION['username']='$admin' && $_SESSION['password']='$admin')
		{
		//header('Location: admin_view.php');
		}
		else{
header('Location: my_account1.php');

		}
?>