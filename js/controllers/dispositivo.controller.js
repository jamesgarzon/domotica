domoticaApp.controller('dispositivoCtrl', dispositivoController);

function dispositivoController($scope, $http, Dispositivo, Registro, GPIO, $routeParams, $location) {
	var vm = this;
	vm.ubicaciones = [
		{ nombre:'BAÑO', codigo:'bano'},
		{ nombre:'COCINA', codigo:'cocina'},
		{ nombre:'DORMITORIO', codigo:'dormitorio'},
		{ nombre:'JARDÍN', codigo:'jardin'},
		{ nombre:'SALA PRINCIPAL', codigo:'sala-principal'}
	];
	vm.obtenerDispositivo = obtenerDispositivo;
	vm.actualizarDispositivo = actualizarDispositivo;
	vm.listarGPIOs = listarGPIOs;
	vm.eliminarDispositivo = eliminarDispositivo;
	// vm.actualizarDispositivo = actualizarDispositivo;


	listarGPIOs();

	function listarGPIOs() {
		GPIO.listar()
		.then(function (data) {
			vm.GPIOs = data;
			obtenerDispositivo();
		})
		.catch(function (err) {
			Materialize.toast('Problemas cargando los GPIOs', 5000) // 4000 is the duration of the toast
		})
	}


	function obtenerDispositivo() {
		Dispositivo.obtenerDispositivo($routeParams.idDispositivo)
		.then(function (data) {
			vm.dispositivo = data;
			vm.dispositivo.GPIOOriginal = vm.dispositivo.GPIO;
			console.log(vm.dispositivo.ubicacion);
			for (var i = 0; i < vm.ubicaciones.length; i++) {
				if (vm.ubicaciones[i].codigo == vm.dispositivo.ubicacion) {
					// console.log(vm.ubicaciones[i].codigo);
					vm.dispositivo.ubicacion = vm.ubicaciones[i];
					// break;
				}
			}
			console.log(vm.dispositivo.ubicacion);
			vm.GPIOs.push(vm.dispositivo.GPIO);
		})
		.catch(function (err) {
			Materialize.toast('Problemas cargando los dispositivos'+err, 5000) // 4000 is the duration of the toast
		})
	}

	function actualizarDispositivo(dispositivo) {
		dispositivo.ubicacion = dispositivo.ubicacion.codigo;
		var GPIOAActualizar1 = {
			idPin : dispositivo.GPIOOriginal,
			disponible : true
		 }
		 var GPIOAActualizar2 = {
 			idPin : dispositivo.GPIO,
 			disponible : false
 		 }
		Dispositivo.actualizarDispositivo(dispositivo)
		.then(function (data) {
			Materialize.toast('Se ha actualizado el dispositivo exitosamente', 5000) // 4000 is the duration of the toast
  		$('#modalRegistrarDispositivo').closeModal();
			GPIO.actualizar(GPIOAActualizar1);
			GPIO.actualizar(GPIOAActualizar2);
			obtenerDispositivo();
		})
		.catch(function (err) {
			Materialize.toast('Problemas registrando el dispositivo', 5000) // 4000 is the duration of the toast
		})
	}

	function eliminarDispositivo(dispositivo) {
		var GPIOAActualizar = {
			idPin : dispositivo.GPIO,
			disponible : true
		 }
		Dispositivo.eliminar(dispositivo.idDispositivo)
		.then(function (data) {
			Materialize.toast('Dispositivo eliminado correctamente', 5000) // 4000 is the duration of the toast
			$location.path('/dispositivos');

			GPIO.actualizar(GPIOAActualizar);
		})
		.catch(function (err) {
			Materialize.toast('Problemas eliminando el dispositivo <br>'+ err, 5000) // 4000 is the duration of the toast
		});
	}


}
