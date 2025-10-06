Feature: User can assign what kind of activity an event is from the list of activities.
Scenario: Assign an activity
	Given I am on the form modal of an event
	When I select an "Activity" from the drop down list
	And I click the "Create" button
	Then I see the event is titled as that activity on the Events Index page.