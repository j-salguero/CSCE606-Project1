Feature: User can repeat activity as multiple events throughout the week
Scenario: Repeat same activity as multiple events
	Given I am on my events index page
	When I click on one of my listed events
	Then I click on the "Edit" button
	Then I should see the event form modal
    When I check "Repeat activity"
	When I fill in "Due date" with the day it needs to be finished
    Then I can click more than one day on the calendar
	And I Select the "User" as myself
	And I select the "Activity" as "Gym"
	And I set the "Description" as "this is the description"
	And I click the "Create" button
	Then I should see the event be on my events index page under multiple days