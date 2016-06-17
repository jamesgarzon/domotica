<?php
require('ConexionDB.php');
function insertarRegistroSQL($idDispositivo, $nombre, $ubicacion, $GPIO, $descripcion){
	$conexion = ConectarDB();
	$sql ="INSERT INTO Dispositivo (idDispositivo, nombre, ubicacion, GPIO, descripcion, estado)
  VALUES ($idDispositivo,'$nombre','$ubicacion',$GPIO, '$descripcion', false)";
	$result = mysqli_query($conexion, $sql);
	mysqli_close($conexion);
	return $result;
 }
?>
