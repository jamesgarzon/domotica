domoticaApp.controller('registrosCtrl', registrosController);

function registrosController($scope, Registro) {
	var vm = this;
	vm.listarDispositivos = listarDispositivos;

	listarDispositivos();

	function listarDispositivos() {
		Registro.listar()
		.then(function (data) {
			vm.registros = data;
      vm.registros.forEach(function (registro) {
        registro.fecha = new Date(registro.fecha);
      });
		})
		.catch(function (err) {
			Materialize.toast('Problemas cargando los registros'+ err, 5000) // 4000 is the duration of the toast
		})
	}

}
