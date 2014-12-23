'use strict'

###*
 # @ngdoc function
 # @name cabraApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the cabraApp
###
angular.module('cabraApp')
  .controller 'MainCtrl',($scope, settings, decks) ->
    $scope.settings = settings
    $scope.$on 'settings.update', ->
        $scope.settings = settings

    $scope.decks = decks
    $scope.$on 'decks.update', ->
        $scope.decks = decks
