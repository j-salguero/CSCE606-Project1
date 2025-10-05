Feature: User can add a short description of what kind of activity an event is.
Scenario: Add a description to your event
	Given I am on the form modal of an event
	When I add a brief, specific description in the description section
	Then I see that description any time I inspect the event