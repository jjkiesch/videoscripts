'use strict'

###*
 # @ngdoc function
 # @name videoscriptsApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the videoscriptsApp
###
angular.module('videoscriptsApp')
  .controller 'AboutCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
