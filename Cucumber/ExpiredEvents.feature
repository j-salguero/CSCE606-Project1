Feature: User is notified that an event has passed it's due date without completion
Scenario: Over-Due event
	Given I am on Events index page
	When I have an Event that's due-date is before the current date and is list as not completed
	Then I see a notification on the banner telling me I have over due tasks
	And I see that links to those tasks on the weekly calendar highlighted in red