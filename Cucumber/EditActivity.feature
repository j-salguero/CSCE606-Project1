Feature: User can edit activities
Scenario: Edit account
	Given I am on activities index page
	When I Select the "Show this activity" link underneath the activity I want to edit
	And I Select click the "Edit" button	
	Then I see the Editing Activity modal
	When I edit the "Acitivyname"
	And I edit the description
	And I edit the "Activitytype"
	And I click the "Create" button
	Then I should see the updated activity when I get a list of activities