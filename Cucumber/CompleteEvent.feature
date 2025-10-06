Feature: User can toggle an event between completed and uncompleted.

Scenario: Set an event to complete
	Given I am on the form modal of an event
	When I set the "completed" flag to true
	And I press the "Create" button
	Then I see that event in the "completed" section of the index page calendar

Scenario: Set an event to uncomplete
	Given I am on the form modal of an event
	When I set the "completed" flag to false
	And I press the "Create" button
	Then I see that event in the "to do" section of the index page calendar