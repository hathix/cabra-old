'use strict'

###*
 # @ngdoc function
 # @name cabraApp.controller:DeckCtrl
 # @description
 # # DeckCtrl
 # Controller of the cabraApp
###
angular.module('cabraApp')
  .controller 'DeckCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
