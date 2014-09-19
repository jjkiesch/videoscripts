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
      output: '='

  .controller 'ScriptCtrl', ($scope, $routeParams, $http, $interpolate) ->
    dataUrl = "data/#{$routeParams.scriptId}.json"
    $scope.currentStep = 0
    $scope.notFinished = true

    $http.get dataUrl
      .success (data) ->
        $scope.steps = data

    $scope.checkFinished = ->
      return $scope.notFinished

    $scope.hasPrev = (index) ->
      return index != 0

    $scope.hasNext = (index) ->
      return (index+1) != $scope.steps.length

    $scope.stepPrev = (index) ->
      $scope.steps[index].output = angular.element(".step-#{index} .template").text()
      $scope.currentStep--

    $scope.stepNext = (index) ->
      $scope.steps[index].output = angular.element(".step-#{index} .template").text()
      $scope.currentStep++

    $scope.checkCurrent = (index) ->
      return index == $scope.currentStep

    $scope.finishScript = (index) ->
      $scope.steps[index].output = angular.element(".step-#{index} .template").text()
      $scope.notFinished = false
      $scope.fullScript = ''
      for step in $scope.steps
        $scope.fullScript += step.output + '\n\n'