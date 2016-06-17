<?php
require_once('../SQL/actualizarDispositivoSQL.php');
$data = json_decode(file_get_contents('php://input'), true);

$estado = (bool)$data['estado'];
$idDispositivo = (int)$data['idDispositivo'];
$nombre = utf8_decode($data['nombre']);
$ubicacion = utf8_decode($data['ubicacion']);
$GPIO = (int)$data['GPIO'];
$descripcion = utf8_decode($data['descripcion']);

$respuestaActualizacion = actualizarDispositivoSQL($idDispositivo, $estado, $nombre, $ubicacion, $GPIO, $descripcion);
echo json_encode($respuestaActualizacion);

?>
