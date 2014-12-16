Feature: Judge sees the gradesheet page
Scenario: Gradesheet loads correctly
	Given I am on the Projects page
	When I click a project link
	Then I should see the questions
	And I should see a submit button
	And I should see the project location and project name