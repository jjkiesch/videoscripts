'use strict'

describe 'Controller: ScriptCtrl', ->

  # load the controller's module
  beforeEach module 'videoscriptsApp'

  ScriptCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ScriptCtrl = $controller 'ScriptCtrl', {
      $scope: scope
    }
