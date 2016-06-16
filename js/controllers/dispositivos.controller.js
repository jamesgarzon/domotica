domoticaApp.controller('dispositivosCtrl', dispositivosController);

function dispositivosController($scope, $http, Dispositivo, Registro) {
	var vm = this;
	vm.cambiarEstadoDispositivo = cambiarEstadoDispositivo;
	vm.listarDispositivos = listarDispositivos;

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

		var data = JSON.stringify({estado:$scope.estado});
		$http.post('services/cambiarEstadoLed.php?estado',data,function(data) {
			console.log("Respuesta: "+ data);
		});

		var accion = '';
		if (dispositivo.estado) {
			accion = 'encendió';
		}else {
			accion = 'apagó';
		}

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

	listarDispositivos();


}
