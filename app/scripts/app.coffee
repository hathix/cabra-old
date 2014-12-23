'use strict'

###*
 # @ngdoc overview
 # @name cabraApp
 # @description
 # # cabraApp
 #
 # Main module of the application.
###
angular
  .module('cabraApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch',
    'LocalStorageModule'
  ])
  .config(['localStorageServiceProvider', (provider) ->
      provider.setPrefix 'ca'
     ])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
      .when '/settings',
        templateUrl: 'views/settings.html'
        controller: 'SettingsCtrl'
      .when '/deck',
        templateUrl: 'views/deck.html'
        controller: 'DeckCtrl'
      .when '/deck/study',
        templateUrl: 'views/deckstudy.html'
        controller: 'DeckstudyCtrl'
      .when '/deck/manage',
        templateUrl: 'views/deckmanage.html'
        controller: 'DeckmanageCtrl'
      .when '/deck/create',
        templateUrl: 'views/deckcreate.html'
        controller: 'DeckcreateCtrl'
      .when '/deck/new',
        templateUrl: 'views/decknew.html'
        controller: 'DecknewCtrl'
      .otherwise
        redirectTo: '/'
