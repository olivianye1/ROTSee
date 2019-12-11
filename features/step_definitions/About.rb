Given(/^I am on the home page$/) do
  visit root_path
end

When(/^I click on about us button$/) do
  click_link("About ROTSee")
end

Then(/^I am redirected to about us page$/) do
  assert_equal page.current_path, '/about'
end

Then(/^I am not redirected to about us page$/) do
  assert_equal page.current_path, '/login'
end