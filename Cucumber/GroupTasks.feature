Feature: User can manage their to do list tasks on a calendar
Scenario: Add a task
	Given I am on my tasks page
	When I press "Add new task board"
	Then I should be on the Create board page
	When I fill in "Name" with "new board"
	When I fill in "Members" with users
	And press "Create"
	Then a new tab is added to my tasks page titled "new board"
	When I click on the "new board" tab
	Then The "new board" task board is displayed.
	And All users listed in "members" can see this tab & board, and tasks listed there in