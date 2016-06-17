<?php

function ConectarDB(){

	$conexion = mysqli_connect("localhost","root","root","domotica") or die("Error " . mysqli_error($conexion));
	// mysql_query("SET NAMES 'utf8'");
	// mysql_set_charset('utf8', $conexion);
		return $conexion;
}

?>
