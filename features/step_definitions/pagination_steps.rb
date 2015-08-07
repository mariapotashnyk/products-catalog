When(/^I go back$/) do
  page.evaluate_script('window.history.back()')
end