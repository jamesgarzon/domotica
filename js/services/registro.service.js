'use strict';

domoticaApp.factory('Registro',function($http, $route, $q){

var servicio = {};

// Servicio para listar productos
servicio.insertar = function (registro) {
	var defered = $q.defer();
	var promise = defered.promise;
	var data = JSON.stringify(registro);
	$http.post('services/insertarRegistro.php',data)
			.success(function(data) {
					defered.resolve(data);
			})
			.error(function(err) {
					defered.reject(err);
			});

	return promise;
};

// Servicio para listar productos
servicio.listar = function () {
	var defered = $q.defer();
	var promise = defered.promise;
	$http.get('services/listarRegistros.php')
			.success(function(data) {
					defered.resolve(data);
			})
			.error(function(err) {
					defered.reject(err);
			});

	return promise;
};
//
// // Servicio para crear un nuevo productos
// // parametro productoACrear => objeto estudiante que se va a actualizar
// servicio.crear = function (productoACrear) {
// 	var defered = $q.defer();
// 	var promise = defered.promise;
// 	$http.post('/api/productos', productoACrear)
// 			.success(function(data) {
// 					defered.resolve(data);
// 			})
// 			.error(function(err) {
// 					defered.reject(err);
// 			});
//
// 	return promise;
// };
//
// servicio.actualizar = function (estudianteAActualizar) {
// 	var defered = $q.defer();
// 	var promise = defered.promise;
// 	$http.put('/api/productos/'+estudianteAActualizar._id, estudianteAActualizar)
// 			.success(function(data) {
// 					defered.resolve(data);
// 			})
// 			.error(function(err) {
// 					defered.reject(err);
// 			});
//
// 	return promise;
// };
//
//
// servicio.obtenerProducto = function (codigoProducto) {
// 	var defered = $q.defer();
// 	var promise = defered.promise;
// 	$http.get('/api/productos/codigo/'+ codigoProducto)
// 			.success(function(data) {
// 					defered.resolve(data);
// 			})
// 			.error(function(err) {
// 					defered.reject(err);
// 			});
//
// 	return promise;
// };
//
// servicio.eliminar = function (idProducto) {
// 	var defered = $q.defer();
// 	var promise = defered.promise;
// 	$http.delete('/api/productos/'+ idProducto)
// 			.success(function(data) {
// 					defered.resolve(data);
// 			})
// 			.error(function(err) {
// 					defered.reject(err);
// 			});
//
// 	return promise;
// };



 return servicio;

 });
