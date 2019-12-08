Given (/^I am logged in$/) do
  assert page.has_link("Cadets")
end

Given (/^I am on the Event "20" show page$/) do 
  visit '/events/20'
end

When (/^I click "Edit Details and Attendance" button/) do
  click_button("Edit Details and Attendance")
end

Then (/^I am redirected to Event "20" edit page$/) do
  assert_equal '/events/edit/20', current_path
end

Then (/^I add "(.*)" to details$/) do |details|
  fill_in "details", :with => details
end

When (/^I click submit/) do
  click_button("Submit")
end

Then (/^I confirm$/) do
  Selenium.ChooseOkOnNextConfirmation();
end

Then (/^I am redirected to Event "20" show page$/) do
  assert_equal '/events/20', current_path
end 