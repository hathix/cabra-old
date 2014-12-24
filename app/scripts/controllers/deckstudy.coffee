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
    $scope.Shown = {
        FRONT_ONLY: 0,
        FRONT_AND_BACK: 1
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
        KNOWN: 3
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
        $scope.setIndex $scope.index + change
    # Call this instead of changing index directly; this loads in a card
    $scope.setIndex = (index) ->
        $scope.index = index
        $scope.endSession() if $scope.index >= $scope.session.length
        # reset card
        $scope.shown = $scope.Shown.FRONT_ONLY

    # checking index
    $scope.isFirstCard = () -> $scope.index == 0
    $scope.isLastCard = () -> $scope.index == $scope.session?.length - 1

    # changing what's shown
    $scope.showBack = ->
        $scope.shown = $scope.Shown.FRONT_AND_BACK
    # checking what side of the card is shown
    $scope.isFrontShown = ->
        $scope.shown == $scope.Shown.FRONT_ONLY || $scope.shown == $scope.Shown.FRONT_AND_BACK
    $scope.isBackShown = ->
        $scope.shown == $scope.Shown.FRONT_AND_BACK


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
        # set index
        $scope.setIndex 0

    # Finishes the studying session and begins session review
    $scope.endSession = () ->
        # figure out how many cards got each result
        # this will be something like { "3": numKnown, "1": numUnknown } (numbers correspond to the enum)
        $scope.resultGroup = _.countBy _.pluck($scope.session, 'result')

        $scope.stage = $scope.Stages.REVIEW

    # Returns the number of items in the session with the given result
    # e.g. getNumResults(Results.KNOWN)
    $scope.getNumResults = (result) ->
        if $scope.resultGroup
            $scope.resultGroup[result + ""] ? 0
        else null
        # TODO maybe this is faster b/c it has less pre-processing (but then more processing must be done later)
        # _.filter($scope.session, (item) -> item.result == result).length

    # Returns the fraction of items in the session with the given result (as a decimal)
    $scope.getFractionResults = (result) ->
        if $scope.session?
            $scope.getNumResults(result) / $scope.session.length
        else 0
    # Returns the percent (0-100) of items in the session with the given result
    $scope.getPercentResults = (result) ->
        $scope.getFractionResults(result) * 100

    # Returns the current session item (contains the card and the result)
    $scope.getCurrentItem = () ->
        if $scope.index? then $scope.session[$scope.index] else null

    # Call it when a result is given for the card
    $scope.studyCard = (result) ->
        $scope.getCurrentItem().result = result
        $scope.changeIndex 1

    # misc
    $scope.upOneLevel = () -> helpers.upOneLevel()
