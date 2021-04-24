<?php
//conectamos con el servidor
$con= pg_connect("host='localhost' dbname=siccopes port=5432 user=postgres password=admin1996") ;
//verificamos la conexion
if($con){
 echo "Conectado";
}else { echo "No se pudo conectar con el servidor";
}
//$consulta= "INSERT INTO aa_hola_mundo VALUES (3, 'tres',04)";
//$result = pg_query($consulta) or die('La consulta fallo: ' . pg_last_error());
?>
