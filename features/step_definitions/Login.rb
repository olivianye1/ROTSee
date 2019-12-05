def log_in(username,password)
  visit '/login'
  fill_in "username", :with => username
  fill_in "password", :with => password
  click_button "Login"
end

Given(/^I am on the home page$/) do
  visit root_path
end

When(/^I click on login button$/) do
  click_link("Login")
end

Then(/^I am redirected to login page$/) do
  assert_equal page.current_path, '/login'
end

When(/^I sign in as "(\w+)" with password "(\w+)"$/) do |username, password|
  log_in(username,password)
end

Then(/^I am redirected to home page$/) do
  assert_equal current_path, root_path

end

Then(/^"Cadets" link is in navigation bar$/) do
  assert page.has_css?("a .nav-item")
end

Then(/^There is "View All Cadets" button$/) do
  assert page.has_css?("nav div")
end
