'use strict'

###*
 # @ngdoc function
 # @name cabraApp.controller:DeckmanageCtrl
 # @description
 # # DeckmanageCtrl
 # Controller of the cabraApp
###
angular.module('cabraApp')
  .controller 'DeckmanageCtrl', ($scope, helpers, $routeParams) ->
      $scope.deck = helpers.getDeckById $routeParams.deckId

      $scope.deleteCard = (card) ->
          $scope.deck.cards = _.without $scope.deck.cards, card
