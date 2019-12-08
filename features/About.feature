Feature: About Us Page

Scenario: Successful About Us Page Visit
Given I am on the home page
When I click on about us button
Then I am redirected to about us page

Scenario: Unsuccessful About Us Page Visit
Given I am on the home page
When I click on login button
Then I am not redirected to about us page