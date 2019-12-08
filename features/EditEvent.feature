Feature: Edit an Event

Scenario: Sucessfully edits an event

Given I am logged in
Given I am on the Event "20" show page
When I click "Edit Details and Attendance" button
Then I am redirected to Event "20" edit page
And I add "more details" to details
When I click submit
Then I confirm
And I  am redirected  to Event "20" show page

Scenario: Unsucessfully edits an event

Given I am logged in
Given I am on the Event "20" show page
When I click "Edit Details and Attendance" button
Then I am redirected to Event "20" edit page
And I add "" to details
When I click submit
Then I confirm
And I  am redirected to Event "20" show page