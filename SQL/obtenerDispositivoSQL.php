<?php
header("Content-Type: text/html;charset=utf-8");
require('ConexionDB.php');
function obtenerDispositivoSQL($idDispositivo){
	$conexion = ConectarDB();
	$sql ="SELECT *
	FROM Dispositivo
  WHERE idDispositivo=$idDispositivo
  LIMIT 1";
	$result = mysqli_query($conexion, $sql);

	// $resultadoDatosRetornar = mysqli_fetch_all($resultadoDatos,MYSQLI_ASSOC);
	$data = [];
	while ($row = $result->fetch_assoc()) {
		$row=array_map('utf8_encode', $row);
		$row['estado'] = (bool)$row['estado'];
    $row['idDispositivo']= (int)$row['idDispositivo'] ;
		$row['GPIO']= (int)$row['GPIO'] ;
    $data = $row;
	}

	mysqli_close($conexion);
	return $data;
 }
?>
