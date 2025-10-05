Feature: User can delete their account
Scenario: Delete user
	Given I am on Users index page
	When I Select the "Show this user" link underneath the user I want to delete
	And I Select click the "Delete" button
	Then The User is deleted from the list of users