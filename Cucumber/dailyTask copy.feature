Feature: User can manage their daily to do list
Scenario: Add a task
	Given I am on my tasks page
	When I press "Add new task"
	Then I should be on the Create task page
	When I fill in "Title" with "Thing to Do"
	When I fill in "Description" with "Thing to Do Details"
	And I drag and drop the task into place
	Then I should be on my task page
	And I should see the new task
	When I click the "edit" button on the task
	Then I can change the "Title" and "Description"
	When I click the "finished" button on the task
	Then The task gets put into the "finished" bin