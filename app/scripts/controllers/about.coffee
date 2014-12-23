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
    $scope.date = Date.now()
    $scope.version = "2.0.0 beta"
    $scope.links = {
        "GitHub": {
            url: "https://github.com/hathix/cabra",
            icon: "github"
        },
        "Android": {
            url: "https://play.google.com/store/apps/details?id=com.hathix.android.chevre",
            icon: "android"
        },
        "Web": {
            url: "http://app.getcabra.com",
            icon: "globe"
        }
    }
