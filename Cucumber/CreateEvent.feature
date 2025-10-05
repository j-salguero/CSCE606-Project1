Feature: User can create new events
Scenario: Add an event
	Given I am on my events index page
	When I press "New activity event" button
	Then I should see the event form modal
	When I fill in "Due date" with the day it needs to be finished
	And I Select the "User" as myself
	And I select the "Activity" as "Gym"
	And I set the "Description" as "this is the description"
	And I click the "Create" button
	Then I should see the event be on my events index page