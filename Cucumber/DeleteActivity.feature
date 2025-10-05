Feature: User can delete activity types
Scenario: Delete activity
	Given I am on Activites index page
	When I Select the "Show this activity" link underneath the user I want to delete
	And I Select click the "Delete" button
	Then The activity is deleted from the list of activities