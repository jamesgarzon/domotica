domoticaApp.controller('dispositivosCtrl', dispositivosController);

function dispositivosController($scope, $http, Dispositivo, Registro, GPIO) {
	var vm = this;
	vm.cambiarEstadoDispositivo = cambiarEstadoDispositivo;
	vm.listarDispositivos = listarDispositivos;
	vm.listarGPIOs = listarGPIOs;
	vm.registrarDispositivo = registrarDispositivo;
	vm.ubicaciones = [
		{ nombre:'BAÑO', codigo:'bano'},
		{ nombre:'COCINA', codigo:'cocina'},
		{ nombre:'DORMITORIO', codigo:'dormitorio'},
		{ nombre:'JARDÍN', codigo:'jardin'},
		{ nombre:'SALA PRINCIPAL', codigo:'sala-principal'}
]
	listarDispositivos();
	listarGPIOs();

	function listarGPIOs() {
		GPIO.listar()
		.then(function (data) {
			vm.GPIOs = data;
		})
		.catch(function (err) {
			Materialize.toast('Problemas cargando los GPIOs', 5000) // 4000 is the duration of the toast
		})
	}


	function listarDispositivos() {
		Dispositivo.listar()
		.then(function (data) {
			vm.dispositivos = data;
		})
		.catch(function (err) {
			Materialize.toast('Problemas cargando los dispositivos', 5000) // 4000 is the duration of the toast
		})
	}

	function cambiarEstadoDispositivo(dispositivo) {

		Dispositivo.cambiarEstadoDispositivo(dispositivo.estado, dispositivo.GPIO)
		.then(function (data) {
			Materialize.toast('Cambio de estado exitoso', 5000) // 4000 is the duration of the toast
		})
		.catch(function (err) {
			Materialize.toast('Problemas cambiando el estado del dispositivo', 5000) // 4000 is the duration of the toast
		})

		var data = JSON.stringify({estado:dispositivo.estado});
		$http.post('services/cambiarEstadoLed.php',data,function(data) {
			console.log("Respuesta: "+ data);
		});

		var accion = '';
		if (dispositivo.estado) {
			accion = 'encendió';
		}else {
			accion = 'apagó';
		}

		Dispositivo.actualizarDispositivo(dispositivo)
		.then(function (data) {
			Materialize.toast('Se actualizó el dispositivo exitosamente', 5000) // 4000 is the duration of the toast
		})
		.catch(function (err) {
			Materialize.toast('Problemas actualizando el dispositivo', 5000) // 4000 is the duration of the toast
		})
		var registro = {
			usuario:'james.garzon',
			descripcion: 'Se '+ accion + ' ' + dispositivo.nombre + ' de '+ dispositivo.ubicacion
		}
		Registro.insertar(registro)
		.then(function (data) {
			Materialize.toast('Se registró el seguimiento exitosamente', 5000) // 4000 is the duration of the toast
		})
		.catch(function (err) {
			Materialize.toast('Problemas cargando insertando el seguimiento', 5000) // 4000 is the duration of the toast
		})
	}

	function registrarDispositivo(dispositivo) {
		dispositivo.ubicacion = dispositivo.ubicacion.codigo;
		var GPIOAActualizar = {
			idPin : dispositivo.GPIO,
			disponible : false
		 }
		Dispositivo.registrar(dispositivo)
		.then(function (data) {
			Materialize.toast('Se ha registrado el dispositivo exitosamente', 5000) // 4000 is the duration of the toast
  		$('#modalRegistrarDispositivo').closeModal();
			GPIO.actualizar(GPIOAActualizar)
			listarDispositivos();
		})
		.catch(function (err) {
			Materialize.toast('Problemas registrando el dispositivo', 5000) // 4000 is the duration of the toast
		})
	}


}
