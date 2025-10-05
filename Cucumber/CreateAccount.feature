Feature: User can make a new user account
Scenario: Create a new user
	Given I am on the index page
	When I click "New User"
	Then I am taken to the new user creation page
	When I set the "Name" to "Joe Schmoe"
	And I set the "Email" to "JSchmoe@email.com"
	And I click the "Create" button
	Then I see "Joe Schmoe" any time I look at a list of users