<?php
	session_start();
	
?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
	<title>Sistema</title>
		
        <link rel="stylesheet" href="ESTILOS/index0.css">
		<link rel="stylesheet" href="ESTILOS/responsive.css">
	
</head>

 
<body background="IMAGENES/fondo6.jpg">
	
	<header id="main-header">
		
		<a id="logo-header">
		<img src='IMAGENES/itca.png' style="width:20%; height:95%;">
			
		</a> 
 
 
	</header>
 
	
	<center><section id="main-content">
	
			
	
		
		<div class="content" style="margin-left:40%;";>
				
<form action="validar.php" method="post">
<center><img src="IMAGENES/icon-1740415_960_720.png" width="100" height="100"></center>


<input type="text" name="nombre" placeholder="Jeansy01" required autofocus>
<input type="password" name="carnet" placeholder="********" required autofocus>

<input type="submit"  value="ENVIAR" id="boton">
</form>

			</div>
			
	 
	</section> 
 </center>
	
	
	
	
</body>
<?php
require_once("footer.php")
?>
</html>