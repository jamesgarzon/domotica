<?php
require('ConexionDB.php');

function ListarDispositivosSQL(){
	$conexion = ConectarDB();
	$sql ="SELECT *
	FROM Dispositivo";
	$result = mysqli_query($conexion, $sql);

	// $resultadoDatosRetornar = mysqli_fetch_all($resultadoDatos,MYSQLI_ASSOC);
	$data = [];
	while ($row = $result->fetch_assoc()) {
    $data[] = $row;
	}
	mysqli_close($conexion);
	return $data;
 }
?>
