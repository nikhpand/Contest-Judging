Feature: Admin views the 'Create a new contest' page
Scenario: The new contest page loads correctly
	Given I am on the Contests page
	When I click "New Contest"
	Then I should see a text field for name
	And I should see a text field for location
	And I should see a text field for date
	