<?php
header("Content-Type: text/html;charset=utf-8");

require_once('../SQL/eliminarDispositivoSQL.php');
$data = json_decode(file_get_contents('php://input'), true);
$idDispositivo = (int)$data['idDispositivo'];
$respuestaEliminacion = eliminarDispositivoSQL($idDispositivo);
echo json_encode($respuestaEliminacion);

?>
