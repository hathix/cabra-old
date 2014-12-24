'use strict'

describe 'Service: helpers', ->

  # load the service's module
  beforeEach module 'cabraApp'

  # instantiate service
  helpers = {}
  beforeEach inject (_helpers_) ->
    helpers = _helpers_

  it 'should do something', ->
    expect(!!helpers).toBe true
