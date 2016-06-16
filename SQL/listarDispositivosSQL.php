<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
require('ConexionDB.php');

// function ListarDispositivosSQL(){
	$conexion = ConectarDB();
	$sql =" SELECT *
	FROM Dispositivo ";
 // $result = mysqli_query($conexion, $sql);
 //
 // // $resultadoDatosRetornar = mysqli_fetch_all($resultadoDatos,MYSQLI_ASSOC);
 // while ($row = $result->fetch_assoc()) {
 //    echo $row;
 // }
 // mysqli_close($conexion);
 // echo $resultadoDatosRetornar;
 // // }
 $result = $conexion->query($sql);

// if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
			print_r($row);
        // echo "id: " . $row["id"]. " - Name: " . $row["firstname"]. " " . $row["lastname"]. "<br>";
    }
// } else {
    // echo "0 results";
// }
?>
