<?php
	$pass="";
	$usu= "root";
	$bd="proyecto";
	$localhost="localhost";
	$conexion= mysqli_connect($localhost, $usu, $pass, $bd) or die(mysqli_error);
?>