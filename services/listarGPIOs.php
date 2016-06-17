<?php
require_once('../SQL/listarGPIOsSQL.php');

$ListaGPIOs = listarGPIOsSQL();
echo json_encode($ListaGPIOs);

?>
