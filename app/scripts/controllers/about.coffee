'use strict'

###*
 # @ngdoc function
 # @name cabraApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the cabraApp
###
angular.module('cabraApp')
  .controller 'AboutCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
