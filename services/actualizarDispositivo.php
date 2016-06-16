<?php
require_once('../SQL/actualizarDispositivoSQL.php');
$data = json_decode(file_get_contents('php://input'), true);
$estado = (bool)$data['estado'];
$idDispositivo = $data['idDispositivo'];

$respuestaActualizacion = actualizarDispositivoSQL($idDispositivo,$estado);
echo json_encode($respuestaActualizacion);

?>
