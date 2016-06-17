<?php
header("Content-Type: text/html;charset=utf-8");

require_once('../SQL/insertarRegistroSQL.php');
$data = json_decode(file_get_contents('php://input'), true);
$descripcion = utf8_decode($data['descripcion']);
$usuario =  utf8_decode($data['usuario']);
$resputaRegistro = insertarRegistroSQL($descripcion, $usuario);
echo json_encode($resputaRegistro);

?>
