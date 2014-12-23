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
      .when '/deck/:deckId',
        templateUrl: 'views/deck.html'
        controller: 'DeckCtrl'
      .when '/deck/:deckId/study',
        templateUrl: 'views/deckstudy.html'
        controller: 'DeckstudyCtrl'
      .when '/deck/:deckId/manage',
        templateUrl: 'views/deckmanage.html'
        controller: 'DeckmanageCtrl'
      .when '/deck/:deckId/create',
        templateUrl: 'views/deckcreate.html'
        controller: 'DeckcreateCtrl'
      .when '/decks/new',
        templateUrl: 'views/decknew.html'
        controller: 'DeckNewCtrl'
      .when '/search',
        templateUrl: 'views/search.html'
        controller: 'SearchCtrl'
      .otherwise
        redirectTo: '/'
