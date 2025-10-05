Feature: User choses who is allowed to see their events
Scenario: Share Events
	Given I am on the users index page
	When I click on "show this user" 
	Then I see the user's modal
	When I click on "Share with this user"
	Then I have given permission for this user to see my events
	And My events will appear on that users events index in a special color
