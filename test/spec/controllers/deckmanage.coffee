'use strict'

describe 'Controller: DeckmanageCtrl', ->

  # load the controller's module
  beforeEach module 'cabraApp'

  DeckmanageCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    DeckmanageCtrl = $controller 'DeckmanageCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
