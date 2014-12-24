'use strict'

###*
 # @ngdoc function
 # @name cabraApp.controller:DecknewCtrl
 # @description
 # # DecknewCtrl
 # Controller of the cabraApp
###
angular.module('cabraApp')
  .controller 'DeckNewCtrl', ($scope, decks) ->
      $scope.decks = decks
      $scope.$on 'decks.update', ->
          $scope.decks = decks

      $scope.deck = {}
      $scope.addDeck = ->
          # Add other important fields
          # Dynamically generate a deck ID
          $scope.deck.id = "d" + Date.now() + ""
          $scope.deck.cards = []

          # Add to the list
          $scope.decks.list.push $scope.deck
          $scope.deck = {}
