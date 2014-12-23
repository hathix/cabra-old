'use strict'

###*
 # @ngdoc function
 # @name cabraApp.controller:SearchCtrl
 # @description
 # # SearchCtrl
 # Controller of the cabraApp
###
angular.module('cabraApp')
  .controller 'SearchCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
