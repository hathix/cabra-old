'use strict'

###*
 # @ngdoc service
 # @name cabraApp.decks
 # @description
 # # decks
 # Service in the cabraApp.
###
angular.module('cabraApp')
  .service 'decks', ($rootScope, localStorageService)->
    # AngularJS will instantiate a singleton by calling "new" on this function
    $rootScope.decks = localStorageService.get('decks') ? {}

    $rootScope.$watch 'decks', () ->
        localStorageService.set 'decks', $rootScope.decks
    , true

    return $rootScope.decks
