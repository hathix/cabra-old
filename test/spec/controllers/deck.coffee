'use strict'

describe 'Controller: DeckCtrl', ->

  # load the controller's module
  beforeEach module 'cabraApp'

  DeckCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    DeckCtrl = $controller 'DeckCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
