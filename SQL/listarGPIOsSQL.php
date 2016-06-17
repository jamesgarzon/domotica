<?php
header("Content-Type: text/html;charset=utf-8");
require('ConexionDB.php');
function listarGPIOsSQL(){
	$conexion = ConectarDB();
	$sql ="SELECT idPin
	FROM GPIO
  WHERE disponible=true";
	$result = mysqli_query($conexion, $sql);

	// $resultadoDatosRetornar = mysqli_fetch_all($resultadoDatos,MYSQLI_ASSOC);
	$data = [];
	while ($row = $result->fetch_assoc()) {
		// $row=array_map('utf8_encode', $row);
		// $row['disponible'] = (bool)$row['disponible'];
		$data[]= (int)$row['idPin'] ;
    // $data[] = $row;
	}
	mysqli_close($conexion);
	return $data;
 }
?>
