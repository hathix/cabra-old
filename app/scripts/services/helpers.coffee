'use strict'

###*
 # @ngdoc service
 # @name cabraApp.helpers
 # @description
 # # helpers
 # Service in the cabraApp.
 # Helper/utility functions.
###
angular.module('cabraApp')
  .service 'helpers', (decks) ->
    # AngularJS will instantiate a singleton by calling "new" on this function
    {
        # Finds the deck with the given id.
        getDeckById: (id) ->
            _.find decks.list, (deck) ->
                deck.id == id
    }
