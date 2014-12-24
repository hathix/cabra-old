'use strict'

describe 'Directive: createCard', ->

  # load the directive's module
  beforeEach module 'cabraApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<create-card></create-card>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the createCard directive'
