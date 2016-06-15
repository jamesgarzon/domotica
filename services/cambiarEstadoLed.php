<?php 
	$data = json_decode(file_get_contents('php://input'), true);
	//print_r($data);
	
	echo $data["estado"];
	if ($data["estado"]) { 
		exec("sudo python /var/www/html/domotica/encender.py");
	}else{
		exec("sudo python /var/www/html/domotica/apagar.py");
	}

 ?>