Feature: User can assign an event to a different user
Scenario: Change the User assignment of your event
	Given I am on the form modal of an event
	When I Select the "User" as "Bob"
	And I Select click the "Create" button
	Then I see that assigned user any time I inspect the event