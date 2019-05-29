 <link rel="stylesheet" href="ESTILOS/index0.css">
 
 <br>
 <br>

<form action="" method="get">


Modelo<input type="text" name="modeloEquipo" placeholder="NK21678R" required autofocus>
Numero de Serie<input type="text" name="Nserie" placeholder="JD6798YH07" required autofocus>
Nombre del equipo<input type="text" name="NomEquipo" placeholder="PC021" required autofocus>

<BR>
Tipo de Equipo
<select name="tipo_equipo">
<option>[-Seleccione una opcion-]</option>
<option value="1">Monitor</option>
<option value="2">Computadora</option>
<option value="3">Cañon</option>
<option value="4">Bocina</option>
<option value="5">Teclado</option>
</select>
<BR>
<BR>
Carrera a la que Pertenece<input type="text" name="CarreraP" placeholder="Tecnico En Ingenieria De Sistemas Informaticos" required autofocus>
Descripcion <textarea name="descripcion" placeholder="Escriba aqui una pequeña descripcio del equipo" required autofocus></textarea>

Fecha de Registro<input type="text" name="FechaR" placeholder="01/01/2012" required autofocus>
<br>



<input type="submit"  value="ENVIAR" id="boton">
</form>