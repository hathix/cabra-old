'use strict'

###*
 # @ngdoc function
 # @name cabraApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the cabraApp
###
angular.module('cabraApp')
  .controller 'MainCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
