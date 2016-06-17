domoticaApp.controller('registrarDispositivoCtrl', registrarDispositivoController);

function registrarDispositivoController($scope, $http, Dispositivo, Registro, GPIO) {
	var vm = this;
	vm.listarGPIOs = listarGPIOs;

	function listarGPIOs() {
		GPIO.listar()
		.then(function (data) {
			vm.GPIOs = data;
		})
		.catch(function (err) {
			Materialize.toast('Problemas cargando los GPIOs', 5000) // 4000 is the duration of the toast
		})
	}

	listarGPIOs();


}
