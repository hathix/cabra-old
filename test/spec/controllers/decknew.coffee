'use strict'

describe 'Controller: DecknewCtrl', ->

  # load the controller's module
  beforeEach module 'cabraApp'

  DecknewCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    DecknewCtrl = $controller 'DecknewCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
