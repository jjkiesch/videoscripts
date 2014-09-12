'use strict'

###*
 # @ngdoc overview
 # @name videoscriptsApp
 # @description
 # # videoscriptsApp
 #
 # Main module of the application.
###
angular
  .module('videoscriptsApp', [
    'ngAnimate',
    'ngCookies',
    'ngRoute',
    'ngSanitize'
  ])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
      .when '/scripts/:scriptId',
        templateUrl: 'views/script.html'
        controller: 'ScriptCtrl'
      .otherwise
        redirectTo: '/'
