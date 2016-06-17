<?php
require('ConexionDB.php');
function eliminarDispositivoSQL($idDispositivo){
  $conexion = ConectarDB();
  // $dispositivo
  $sql ="DELETE FROM Dispositivo WHERE idDispositivo=$idDispositivo";
  $result = mysqli_query($conexion, $sql);
  mysqli_close($conexion);
  return $result;
}
?>
