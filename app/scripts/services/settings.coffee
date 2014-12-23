'use strict'

###*
 # @ngdoc service
 # @name cabraApp.settings
 # @description
 # # settings
 # Service in the cabraApp.
###
angular.module('cabraApp')
  .service 'settings', ($rootScope, localStorageService)->
    # AngularJS will instantiate a singleton by calling "new" on this function
    $rootScope.settings = localStorageService.get('settings') ? {}

    $rootScope.$watch 'settings', () ->
        localStorageService.set 'settings', $rootScope.settings
    , true

    return $rootScope.settings
