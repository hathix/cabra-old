'use strict'

###*
 # @ngdoc function
 # @name cabraApp.controller:NavCtrl
 # @description
 # # NavCtrl
 # Controller of the cabraApp
 # Handles the navigation bar
###
angular.module('cabraApp')
  .controller 'NavCtrl', ($scope, localStorageService) ->
      # Go back in history (i.e. to the previous page)
      $scope.back = ->
          history.go -1

      $scope.clear = ->
          localStorageService.clearAll()
          window.location.reload()
