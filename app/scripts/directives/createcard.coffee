'use strict'

###*
 # @ngdoc directive
 # @name cabraApp.directive:createCard
 # @description
 # # createCard
###
angular.module('cabraApp')
  .directive('createCard', ->
    restrict: 'E',
    templateUrl: '../views/create-card.html',
    controllerAs: 'createCtrl'
    controller: ($scope) ->
      $scope.card = {}
      $scope.finishCard = ->
          # Dynamically generate a card ID
          $scope.card.id = "c" + Date.now()

          # Add to the list
          $scope.deck.cards ?= []
          $scope.deck.cards.push $scope.card
          $scope.card = {}
  )
