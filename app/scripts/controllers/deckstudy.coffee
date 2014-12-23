'use strict'

###*
 # @ngdoc function
 # @name cabraApp.controller:DeckstudyCtrl
 # @description
 # # DeckstudyCtrl
 # Controller of the cabraApp
###
angular.module('cabraApp')
  .controller 'DeckstudyCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
