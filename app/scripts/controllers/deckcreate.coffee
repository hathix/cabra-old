'use strict'

###*
 # @ngdoc function
 # @name cabraApp.controller:DeckcreateCtrl
 # @description
 # # DeckcreateCtrl
 # Controller of the cabraApp
###
angular.module('cabraApp')
  .controller 'DeckcreateCtrl', ($scope, helpers, $routeParams) ->
      $scope.deck = helpers.getDeckById $routeParams.deckId
