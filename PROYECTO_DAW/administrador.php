<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
	<title>Sistema</title>
		
        <link rel="stylesheet" href="ESTILOS/index1.css">
		<link rel="stylesheet" href="ESTILOS/responsive.css">
	
</head>

 
<body background="IMAGENES/fondo6.jpg">
	
	<header id="main-header" >
		<a id="logo-header">
		<img src='IMAGENES/itca.png' style="width:20%; height:95%;">	
		</a> 	
	</header>
	<header id="cabecera">
			<?php
require_once("menu.php")
?>	
</header>
 
	
	<section id="main-content">
	
		<article>
			<header>
	
			</header>
			
	
			
			<div class="content">
				<a id="logo-header">
	
			
				
				

			</div>
			
		</article> 
	</section> 
 
	<?php 
if (isset($_GET["p"])){
	require_once($_GET["p"]);
}else{
	require_once("administrador.php");
}
?>
<br>
	
</body>
<?php
require_once("footer.php")
?>
</html>