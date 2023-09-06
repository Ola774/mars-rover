
# Mars Rovers Automation Test

## Problem Description

A squad of robotic rovers is to be landed by NASA on a plateau on Mars. This plateau, which is curiously rectangular, must be navigated by the rovers so that their onboard cameras can get a complete view of the surrounding terrain to send back to Earth.

A rover's position and location are represented by a combination of x and y coordinates and a letter representing one of the four cardinal compass points. The plateau is divided into a grid to simplify navigation.

In order to control a rover, NASA sends a simple string of letters. The possible letters are 'L', 'R', and 'M'. 'L' and 'R' make the rover spin 90 degrees left or right, respectively, without moving from its current spot. 'M' means move forward one grid point while maintaining the same heading.

## Project Structure

The project structure for this automation test is as follows:

- `src/main/java/mars/rover/Rover.java`: The Rover class implementation.
- `src/test/java/mars/rover/RoverSteps.java`: The Cucumber BDD steps for testing the Rover class.
- `pom.xml`: The Maven POM file with dependencies.

## Setup and Dependencies

To run the automation tests, make sure you have the following dependencies installed:

- Java
- Maven

### Dependencies

The following dependencies are included in the `pom.xml` file:

- Cucumber Java: Used for writing BDD tests.
- JUnit: A testing framework.

## Running the Tests

You can run the automation tests by executing the following Maven command:

```bash
mvn test
```

This command will trigger the Cucumber tests defined in the `rover.app.features/rover.feature` file.

## Test Scenarios

The automation tests cover the following scenarios:

1. Initializing a new rover with a specific direction and position.
2. Initializing a new rover with a different direction and position.
3. Moving the rover forward in different directions (North, East, South, West).

## Test Data

The test data used for the scenarios can be found in the Cucumber feature file `src/test/resources/rover.app.features/rover.feature`.

## Test Results

The expected test results are provided in the `reports/cucumber/cucmberTestReport-html/index.html` file, this is automatically generated using cucumber reporter.

## Author

* Kanmi  Fola
