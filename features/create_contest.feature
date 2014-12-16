Feature: Admin creates a new contest
Scenario: The new contest is created successfully
	Given I am on the new contest page
	When I fill the text fields
	And I click the "Create" button
	Then I should see "Successfull"
