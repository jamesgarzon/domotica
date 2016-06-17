<?php
require('ConexionDB.php');
function actualizarDispositivoSQL($idPin, $disponible){
  $conexion = ConectarDB();
  // $dispositivo
  $sql ="UPDATE GPIO SET  disponible='$disponible' WHERE idPin='$idPin'";
  $result = mysqli_query($conexion, $sql);
  mysqli_close($conexion);
  return $result;
}
?>
