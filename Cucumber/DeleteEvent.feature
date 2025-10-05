Feature: User can create new events
Scenario: Add an event
	Given I am on my events index page
	When I click on one of my listed events
	And I click on the "Delete" button
	Then I should the event should be removed from the database and events index page