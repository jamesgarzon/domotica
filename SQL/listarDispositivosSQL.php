<?php
require('ConexionDB.php');

// function ListarDispositivosSQL(){
	$conexion = ConectarDB();
	$sql =" SELECT *
	FROM Dispositivo ";
	$resultadoDatos = mysqli_query($conexion, $sql);

	$resultadoDatosRetornar = mysqli_fetch_all($resultadoDatos,MYSQLI_ASSOC);
	// mysqli_close($conexion);
	// echo $resultadoDatosRetornar;
 // }
?>
