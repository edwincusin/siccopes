<?php
//conectamos con el servidor de la bbd
$dbconn= pg_connect("host='localhost' dbname=siccopes port=5432 user=postgres password=admin1996") ;
//verificamos la conexion establecida con un mensaje
if($dbconn){
 echo "Conectado";

}else { echo "No se pudo conectar con el servidor, error";
}

/*
// Realizando una consulta SQL
$query = 'SELECT * FROM public.sexo';
$result = pg_query($query) or die('La consulta fallo: ' .pg_last_error());

// Imprimiendo los resultados en HTML
echo "<table>\n";
while ($line = pg_fetch_array($result, NULL, PGSQL_ASSOC)) {
    echo "\t<tr>\n";
    foreach ($line as $col_value) {
        echo "\t\t<td>$col_value</td>\n";
    }
    echo "\t</tr>\n";
}
echo "</table>\n";

 //Liberando el conjunto de resultados
pg_free_result($result);

// Cerrando la conexión
pg_close($dbconn);

*/

 
?>



