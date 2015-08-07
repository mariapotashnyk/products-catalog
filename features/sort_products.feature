Feature: Sort products

  In order to sort products in catalog
  A user
  Should click on table headers

  Scenario: Sort catalog by name and price in direct and reverse order

    Given I will go to main page
    Then I should see "0.99 USD"
    When I click to reverse sort order by "Price"
    Then I should see "99.99 USD"
    When I click to reverse sort order by "Price"
    Then I should see "0.99 USD"
    When I click to reverse sort order by "Name"
    Then I should see link "Product 99"
    When I click to reverse sort order by "Name"
    Then I should see link "Product 0"
    When I click to reverse sort order by "Name"
    Then I should see link "Product 99"