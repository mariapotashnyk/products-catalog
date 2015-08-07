Given(/^I will go to main page$/) do
  visit root_path
end

Given(/^I will go to product page with id "(.*?)"$/) do |id|
  visit "#{root_path}#{id}"
end

When(/^I go to page "(.*?)"$/) do |page_number|
  click_link(page_number)
end

When(/^I click link "(.*?)"$/) do |link_text|
  click_link(link_text)
end

Then(/^I should see "(.*?)"$/) do |expected_text|
  assert page.has_content?(expected_text)
end

Then(/^I should see link "(.*?)"$/) do |name|
  assert page.has_link?(name)
end

Then(/^I should not see "(.*?)"$/) do |unexpected_text|
  assert page.has_no_content?(unexpected_text)
end
