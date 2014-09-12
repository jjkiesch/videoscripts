'use strict'

###*
 # @ngdoc function
 # @name videoscriptsApp.controller:ScriptCtrl
 # @description
 # # ScriptCtrl
 # Controller of the videoscriptsApp
###
angular.module('videoscriptsApp')
  .directive 'stepSection', ($compile) ->
    restrict: 'A'
    replace: true
    link: (scope, element, attrs) ->
      element.html("<p>#{scope.step.section}</p>")
      $compile(element.contents()) scope
    scope:
      val: '='
      step: '='
    

  .controller 'ScriptCtrl', ($scope, $routeParams, $http, $interpolate) ->
    dataUrl = "data/#{$routeParams.scriptId}.json"

    $http.get dataUrl
      .success (data) ->
        $scope.steps = data
