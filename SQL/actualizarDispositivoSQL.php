<?php
require('ConexionDB.php');
function actualizarDispositivoSQL($idDispositivo, $estado){
  $conexion = ConectarDB();
  // $dispositivo
  $sql ="UPDATE Dispositivo SET  estado='$estado' WHERE idDispositivo='$idDispositivo'";
  $result = mysqli_query($conexion, $sql);
  mysqli_close($conexion);
  return $result;
}
?>
