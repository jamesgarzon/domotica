<?php
header("Content-Type: text/html;charset=utf-8");
require('ConexionDB.php');
function listarRegistrosSQL(){
	$conexion = ConectarDB();
	$sql ="SELECT *
	FROM Registro";
	$result = mysqli_query($conexion, $sql);

	// $resultadoDatosRetornar = mysqli_fetch_all($resultadoDatos,MYSQLI_ASSOC);
	$data = [];
	while ($row = $result->fetch_assoc()) {
		$row=array_map('utf8_encode', $row);
		// $row['estado'] = (bool)$row['estado'];
		$data[]= $row;
    // $data[] = $row;
	}
	mysqli_close($conexion);
	return $data;
 }
?>
