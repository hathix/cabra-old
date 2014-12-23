'use strict'

###*
 # @ngdoc function
 # @name cabraApp.controller:SettingsCtrl
 # @description
 # # SettingsCtrl
 # Controller of the cabraApp
###
angular.module('cabraApp')
  .controller 'SettingsCtrl', ($scope, settings) ->
    $scope.settings = settings
    $scope.$on 'settings.update', ->
        $scope.settings = settings
