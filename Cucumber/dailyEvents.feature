Feature: User can delete events
Scenario: Delete an event
	Given I am on my events page
	Then I see a table that shows all my events for the week
	And I see the column that represents the current day of the week is highlighted