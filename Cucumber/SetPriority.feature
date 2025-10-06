Feature: User can set the priority for completing an event.
Scenario: Set urgen priority for an event
	Given I am on the form modal of an event
	When I set the "Urgent" flag to true
    And I set the "completed" flag to false
	And I press the "Create" button
	Then I see that event in the "To Do" section of the index page calendar
    And I see that the event is labeled as "Urgent Priority" on the Events Index page.