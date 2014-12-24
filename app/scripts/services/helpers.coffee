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
        ,
        # Moves back one step in the browser's history
        back: () ->
            history.go -1
        ,
        # Goes up one level in the virtual history (/a/b => /a/)
        upOneLevel: () ->
            url = window.location.href
            if url.substr(-1) == "/" then url = url.substr 0, url.length - 2
            url = url.split "/"
            url.pop()
            window.location.href = url.join "/"
    }
