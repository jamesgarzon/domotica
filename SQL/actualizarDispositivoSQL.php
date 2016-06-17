<?php
require('ConexionDB.php');
function actualizarDispositivoSQL($idDispositivo, $estado, $nombre, $ubicacion, $GPIO, $descripcion){
  $conexion = ConectarDB();
  // $dispositivo
  $sql ="UPDATE Dispositivo SET  estado='$estado', idDispositivo=$idDispositivo, nombre ='$nombre', ubicacion='$ubicacion', GPIO=$GPIO, descripcion='$descripcion'  WHERE idDispositivo='$idDispositivo'";
  $result = mysqli_query($conexion, $sql);
  mysqli_close($conexion);
  return $result;
}
?>
