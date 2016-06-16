var domoticaApp = angular.module('domoticaApp',['ngRoute','ui.materialize']);

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
