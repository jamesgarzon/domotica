<?php
require_once('../SQL/listarDispositivosSQL.php');

$ListaDispositivos = ListarDispositivosSQL();
echo json_encode($ListaDispositivos);

?>
