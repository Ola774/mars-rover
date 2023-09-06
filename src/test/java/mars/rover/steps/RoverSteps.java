package mars.rover.steps;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;
import mars.rover.Rover;
import org.junit.Assert;


public class RoverSteps {
    private Rover rover;

    @Given("a new rover$")
    public void aNewRover()  throws Throwable {
        rover = new Rover();
    }

    @When("I set the rover's position to {int}, {int} facing {string}")
    public void iSetRoverPosition(int x, int y, String facing) {
        int direction;
        switch (facing) {
            case "N":
                direction = Rover.N;
                break;
            case "E":
                direction = Rover.E;
                break;
            case "S":
                direction = Rover.S;
                break;
            case "W":
                direction = Rover.W;
                break;
            default:
                throw new IllegalArgumentException("Invalid facing direction");
        }
        rover.setPosition(x, y, direction);
    }

    @When("I send the command {string}")
    public void iSendTheCommand(String command) {
        rover.process(command);
    }

    @Then("the rover's position should be {int}, {int} and it should be facing {string}")
    public void roverPositionShouldBe(int expectedX, int expectedY, String expectedFacing) {
        rover.printPosition();
        Assert.assertEquals(expectedX, (int) rover.x);
        Assert.assertEquals(expectedY, (int) rover.y);
        Assert.assertEquals(expectedFacing, rover.getFacingAsString(rover.facing));
    }

}
