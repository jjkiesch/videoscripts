'use strict'

###*
 # @ngdoc function
 # @name videoscriptsApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the videoscriptsApp
###
angular.module('videoscriptsApp')
  .controller 'MainCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
