Feature: User can create new activities to assign to their events
Scenario: Create a new activity
	Given I am on my events index page
	When I press "New Database Activity" button
	Then I should see the New Activity page
	When I fill in "Acitivyname" with "New Activity Name"
	And I fill the description with "New ACtivity Description"
	And I select the "Activitytype" as "Other"
	And I click the "Create" button
	Then I should see the activity when I get a list of activities