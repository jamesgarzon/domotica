domoticaApp.controller('dispositivosCtrl', function($scope, $http) {

	$scope.cambiarEstadoLed = function() {
		var data = JSON.stringify({estado:$scope.estado})
		$http.post('services/cambiarEstadoLed.php?estado',data,function(data) {
			console.log("Respuesta: "+ data);
		});
	};
});
