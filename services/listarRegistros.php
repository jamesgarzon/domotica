<?php
require_once('../SQL/listarRegistrosSQL.php');

$ListaRegistros = listarRegistrosSQL();
echo json_encode($ListaRegistros);

?>
