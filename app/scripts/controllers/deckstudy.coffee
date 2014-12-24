'use strict'

###*
 # @ngdoc function
 # @name cabraApp.controller:DeckstudyCtrl
 # @description
 # # DeckstudyCtrl
 # Controller of the cabraApp
###
angular.module('cabraApp')
  .controller 'DeckstudyCtrl', ($scope, helpers, $routeParams) ->
    $scope.deck = helpers.getDeckById $routeParams.deckId

    # initialize session
    # constants
    $scope.Stages = {
      SETUP: 0,
      STUDYING: 1,
      REVIEW: 2
    }
    $scope.Modes = {
      DEFAULT: 0,
      ALL_CARDS: 1,
      CERTAIN_BOXES: 2
    }
    $scope.Results = {
        NOT_STUDIED: 0,
        UNKNOWN: 1,
        SORT_OF: 2,
        KNOWN: 3,
        SKIPPED: 4
    }

    $scope.stage = $scope.Stages.SETUP
    $scope.settings ?= {
      mode: $scope.Modes.DEFAULT
    }


    # functions

    # Returns true if we're at the given stage
    # e.g. $scope.isStage($scope.Stages.SETUP)
    $scope.isStage = (stage) ->
      $scope.stage == stage
    # Changes the index of the card to show. +1 to go right, -1 to go left.
    $scope.changeIndex = (change) ->
        $scope.index += change
        $scope.endSession() if $scope.index >= $scope.session.length
    # checking index
    $scope.isFirstCard = () -> $scope.index == 0
    $scope.isLastCard = () -> $scope.index == $scope.session?.length - 1

    $scope.upOneLevel = () -> helpers.upOneLevel()

    # Finishes changing settings and begins actual study portion
    $scope.finishSetup = () ->
        $scope.stage = $scope.Stages.STUDYING

        # pick cards
        cards = $scope.deck.cards # TODO filter these
        # put into array of [{card, result}]
        $scope.session = ({
            card: card,
            result: $scope.Results.NOT_STUDIED
        } for card in cards)
        $scope.session = _.shuffle $scope.session
        # inde
        $scope.index = 0

    # Finishes the studying session and begins session review
    $scope.endSession = () ->
        $scope.stage = $scope.Stages.REVIEW
