Feature:  User logs in
  
Scenario: Successful login
Given I am on the home page
When I click on login button
Then I am redirected to login page
When I sign in as "kdorsey3" with password "password"
Then I am redirected to home page
And There is "View All Cadets" button
And "Cadets" link is in navigation bar
And "Events" link is in navigation bar
And "Profile" link is in navigation bar
And logout button is in navigation bar
And there is "View All Events" button
  
Scenario: Unsuccessful login
Given I am on the home page
When I click on login button
Then I am redirected to login page
When I sign in as "" with password ""
Then I am not redirected to home page


