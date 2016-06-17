<?php
header("Content-Type: text/html;charset=utf-8");
require_once('../SQL/registrarDispositivoSQL.php');

$data = json_decode(file_get_contents('php://input'), true);

$idDispositivo = utf8_decode($data['idDispositivo']);
$nombre = utf8_decode($data['nombre']);
$ubicacion = utf8_decode($data['ubicacion']);
$GPIO = utf8_decode($data['GPIO']);
$descripcion = utf8_decode($data['descripcion']);
$resputaRegistro = insertarRegistroSQL($idDispositivo, $nombre, $ubicacion, $GPIO, $descripcion);
echo json_encode($resputaRegistro);

?>
