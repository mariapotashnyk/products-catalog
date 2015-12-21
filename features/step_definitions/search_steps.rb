When(/^I fill in the search input with text "(.*?)"$/) do |search_query|
  fill_in "search_input", with: search_query
end

When /^I click on "(.*?)"$/ do |selector|
  find(selector).click
end