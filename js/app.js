var domoticaApp = angular.module('domoticaApp',['ngRoute']);

domoticaApp.config(function($routeProvider){
  $routeProvider
  .when("/", {
      templateUrl: "views/home.html",
      controller: "homeCtrl",
      controllerAs: "vm"
    }
  )
  .when("/dispositivos", {
      templateUrl: "views/dispositivos.html",
      controller: "dispositivosCtrl",
      controllerAs: "vm"
    }
  );
})
