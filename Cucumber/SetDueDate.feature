Feature: User can set the due date for an event.
Scenario: Add set a due date for your event
	Given I am on the form modal of an event
	When I fill in "Due date" with the day it needs to be finished
	And I press the "Create" button
	Then I see that event in the right place on the events index page calendar based on it's due date