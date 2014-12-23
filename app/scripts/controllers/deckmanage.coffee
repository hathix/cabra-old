'use strict'

###*
 # @ngdoc function
 # @name cabraApp.controller:DeckmanageCtrl
 # @description
 # # DeckmanageCtrl
 # Controller of the cabraApp
###
angular.module('cabraApp')
  .controller 'DeckmanageCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
