'use strict'

###*
 # @ngdoc function
 # @name cabraApp.controller:SettingsCtrl
 # @description
 # # SettingsCtrl
 # Controller of the cabraApp
###
angular.module('cabraApp')
  .controller 'SettingsCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
