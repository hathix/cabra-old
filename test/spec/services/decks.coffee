'use strict'

describe 'Service: decks', ->

  # load the service's module
  beforeEach module 'cabraApp'

  # instantiate service
  decks = {}
  beforeEach inject (_decks_) ->
    decks = _decks_

  it 'should do something', ->
    expect(!!decks).toBe true
