<?php
require('ConexionDB.php');
function insertarRegistroSQL($descripcion, $usuario){
	$conexion = ConectarDB();
  $fechaActual = date("Y/m/d h:i:sa");
	$sql ="INSERT INTO Registro (descripcion,usuario,fecha)
  VALUES ('$descripcion','$usuario','$fechaActual')";
	$result = mysqli_query($conexion, $sql);
	mysqli_close($conexion);
	return $result;
 }
?>
