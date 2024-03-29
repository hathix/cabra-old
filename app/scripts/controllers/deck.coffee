'use strict'

###*
 # @ngdoc function
 # @name cabraApp.controller:DeckCtrl
 # @description
 # # DeckCtrl
 # Controller of the cabraApp
###
angular.module('cabraApp')
  .controller 'DeckCtrl', ($scope, decks, helpers, $routeParams) ->
      $scope.deck = helpers.getDeckById $routeParams.deckId

      # Handling interface; TODO refactor into directive
      # Editing deck metadata
      $scope.editing = false
      $scope.isEditing = -> $scope.editing
      $scope.setEditing = (editing) -> $scope.editing = editing
      $scope.saveDeck = ->
          $scope.setEditing false

      $scope.subpages = {
          "Manage": {
              url: "manage",
              icon: "list",
              showIfEmpty: false
          },
          "Create": {
              url: "create",
              icon: "plus",
              showIfEmpty: true
          },
          "Study": {
              url: "study",
              icon: "lightbulb-o",
              showIfEmpty: false
          }
      }
