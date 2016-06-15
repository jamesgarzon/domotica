<?php

function ConectarDB(){

	$conexion = mysqli_connect("localhost","root","root","domotica") or die("Error " . mysqli_error($conexion));
    return $conexion;
}

?>
