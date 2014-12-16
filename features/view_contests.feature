Feature: Admin views the Contests page
Scenario: Contests page loads correctly
	Given I am on the home page
	When I login as admin
	And I click "Contests"
	Then I should see a list of contests
	And I should see "New Contest"
