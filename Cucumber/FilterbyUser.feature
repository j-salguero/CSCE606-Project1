Feature: User can easily filter events by user
Scenario: Filter events by today's due date Events that have their due date set to today
	Given I am on my events page
    When I select "Joe Smith" from the "User" filter
    And I click "Apply Filters"
    Then I see a table that shows all events for the week assigned to "Joe Smith"