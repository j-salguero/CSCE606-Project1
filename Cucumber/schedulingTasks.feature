Feature: User can manage their repeating tasks with the to do list
Scenario: Add a task
	Given I am on my tasks page
	When I press "Add new task"
	Then I should be on the Create task page
	When I fill in "Title" with "Thing to Do"
	When I fill in "Description" with "Thing to Do Details"
	When I fill in the "due date" with a valid date
	When I set the "repeat" of a task as "daily", "weekly", "monthly" or "anually"
	And I drag and drop the task into place
	Then I should be on my task page
	And I should see the new task
	When The date gets closer to the task's "due date"
	Then My task page gives an alert reminder to me
	When I click the "finished" button on the task
	Then The task gets put into the "finished" bin
	Then A new task gets generated with the next "due date" based on the "repeat" rules