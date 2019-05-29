<?php
session_start();
	include ("conexion.php");
		if (isset($_POST['nombre']) and isset($_POST['carnet'])){
		include ('conexion.php');
		$nom=$_POST['nombre'];
		$con=$_POST['carnet'];

		$nomusuario = mysqli_real_escape_string($conexion, $_POST['nombre']);
		$password = mysqli_real_escape_string($conexion, $_POST['carnet']);

		$consultaBD= "SELECT * from usuario where Carnet='$nomusuario' and Clave='$password' and tipo='1' ";
		$admin= "SELECT * from usuario where Carnet='$nomusuario' and Clave='$password' and tipo='0' ";
		$comprobacion=$conexion->query($consultaBD);
		$com2=$conexion->query($admin);     
		  if($comprobacion->num_rows > 0){  
		    
					
						$_SESSION['alumno']=$_POST['carnet'];
						header("location: cliente.php");
						exit();
					
			}else{
				echo "<script> alert('Usuario o contraseña no coinciden'); </script><br>
				<button><a href='index.php'>Regresar</a></button>";
			}
			if ($com2->num_rows > 0) {
				$_SESSION['admin']=$_POST['nombre'];
				header('location: administrador.php');
				exit();
			}
	}else{
		header('location:log.php');
	}



						
?>