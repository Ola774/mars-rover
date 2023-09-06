Feature: Rover Initialization and Movement

  Scenario Outline: Initialize a new rover with <initialX>, <initialY>, and <facing>
    Given a new rover
    When I set the rover's position to <initialX>, <initialY> facing "<facing>"
    Then the rover's position should be <initialX>, <initialY> and it should be facing "<facing>"
    Examples:
      | initialX | initialY | facing |
      | 1        | 2        | N      |
      | 3        | 3        | S      |
      | 0        | 0        | E      |
      | 2        | 2        | W      |


  Scenario Outline: Move the rover forward in a <direction> direction
    Given a new rover
    When I set the rover's position to <initialX>, <initialY> facing "<facing>"
    And I send the command "<commands>"
    Then the rover's position should be <expectedX>, <expectedY> and it should be facing "<expectedFacing>"
    Examples:
      | direction | initialX | initialY | facing | commands | expectedX | expectedY | expectedFacing |
      | North     | 1        | 2        | N      | M        | 1         | 3         | N              |
      | East      | 3        | 3        | E      | M        | 4         | 3         | E              |
      | South     | 1        | 2        | S      | M        | 1         | 1         | S              |
      | West      | 1        | 2        | W      | M        | 0         | 2         | W              |


  Scenario: Move the rover as per the given problem scenario
    Given a new rover
    When I set the rover's position to 55, 12 facing "N"
    And I send the command "LMLMLMLMM"
    Then the rover's position should be 55, 13 and it should be facing "N"

