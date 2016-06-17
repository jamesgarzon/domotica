<?php
require_once('../SQL/obtenerDispositivoSQL.php');
$dispositivo = obtenerDispositivoSQL($_GET["idDispositivo"]);
echo json_encode($dispositivo);

?>
