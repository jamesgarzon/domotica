<?php
require_once('../SQL/actualizarGPIOSQL.php');
$data = json_decode(file_get_contents('php://input'), true);
$disponible = (bool)$data['disponible'];
$idPin = $data['idPin'];

$respuestaActualizacion = actualizarDispositivoSQL($idPin,$disponible);
echo json_encode($respuestaActualizacion);

?>
