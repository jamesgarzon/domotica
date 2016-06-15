<html>

	<head>

		<title>Web LED</title>

		

		 

		

	</head>

		

		<body>

		

				<!-- Botones encender y apagar -->

					<form action="" method="post">

						<br>

						<br>

						<div  align="center">

						<!-- Lo importante de aquí es el name que debe ser el mismo que en el php, la opcion value sirve para mostrar el nombre -->

							<input type="submit" name="encender"  value="encender" align="center" size="18">

							<input type="submit" name="apagar" value="apagar"  align="center">

						</div>

						<br>

					</form>

					

					<!-- PHP Donde si se pula el boton encender cuyo name es encender, se ejecuta el script que se encuentra en el directorio indicado -->

					<?php





						if (isset($_POST['encender'])) {

						

							exec("sudo python /var/www/html/domotica/encender.py");
						
							

						}

						if (isset($_POST['apagar'])) {



                                                        exec("sudo python /var/www/html/domotica/apagar.py");



                                                }


							

					?>

				

				

				

	</body>

<html>
