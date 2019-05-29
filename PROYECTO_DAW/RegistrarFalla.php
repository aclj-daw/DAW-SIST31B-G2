 <link rel="stylesheet" href="ESTILOS/index0.css">
 
 <br>
 <br>

<form action="" method="get">



Nombre del equipo<input type="text" name="NomEquipoFalla" placeholder="PC021" required autofocus>

<BR>
Tipo de falla
<select name="tipo_equipo">
<option>[-Seleccione una opcion-]</option>
<option value="1">de sistema</option>
<option value="2">de hardeware</option>

</select>
<BR>
<BR>
Descripcion <textarea name="descripcionFalla" placeholder="Escriba aqui una pequeña descripcio de la falla" required autofocus></textarea>

Fecha de Reporte<input type="text" name="FechaFalla" placeholder="01/01/2012" required autofocus>
<br>



<input type="submit"  value="ENVIAR" id="boton">
</form>