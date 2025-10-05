Feature: User can easily see what events they have to complete today
Scenario: Events that have their due date set to today
	Given I am on my events page
	Then I see a table that shows all my events for the week
	And I see the column that represents the current day of the week is highlighted