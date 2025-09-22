Feature: User can manage their to do list tasks on a calendar
Scenario: Add a task
	Given I am on my tasks page
	When I press "Add new task"
	Then I should be on the Create task page
	When I fill in "Title" with "Thing to Do"
	When I fill in "Description" with "Thing to Do Details"
	When I fill in the "due date" with a valid date
	And I drag and drop the task into place
	Then I should be on my task page
	And I should see the new task
	When The date is far away from the "due date" (let's say 1 week)
	Then My task page sorts the task into a seperate area
	When The date gets closer to the task's "due date"
	Then My task page gives an alert reminder to me
	When I click the "finished" button on the task
	Then The task gets put into the "finished" bin