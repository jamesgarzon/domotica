<?php 

//$command = escapeshellcmd('/var/www/html/domotica/encender.py');
//$output = shell_exec($command);
//echo $output;
//phpinfo();

//exec("python /var/www/html/domotica/encender.py");
exec('sudo python3 encender.py 2>&1', $output);
print_r($output); 
//						echo($comando);

?>
