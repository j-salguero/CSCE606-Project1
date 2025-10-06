Feature: User has their events automatically processed at the end of the week
Scenario: Completed event
	Given I have a completed event at the end of the week
	When I start a new week
	Then I have all of my completed events automatically archived
Scenario: Not Completed event
	Given I have an uncompleted event at the end of the week
	When I start a new week
	Then I have all of my uncompleted events coppied over to the first day of the next week