Feature: User can edit their account
Scenario: Edit account
	Given I am on Users index page
	When I Select the "Show this user" link underneath the user I want to edit
	And I Select click the "Edit" button	
	Then I see the Editing User moddal
	When I update the "Name"
	And I update the "Email" 
	And I click the "Create" button
	Then I see updated info when I look at a list of users