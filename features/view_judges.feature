Feature: Admin views Judges page
Scenario: Judges page loads correctly
	Given I am on the home page
	When I login as admin
	And I click "Judges"
	Then I should see a list of judges