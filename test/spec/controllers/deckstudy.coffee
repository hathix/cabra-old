'use strict'

describe 'Controller: DeckstudyCtrl', ->

  # load the controller's module
  beforeEach module 'cabraApp'

  DeckstudyCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    DeckstudyCtrl = $controller 'DeckstudyCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
