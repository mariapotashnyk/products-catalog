Feature: Search

  In order to search a product
  A user
  Should type product name to search input

  Scenario: Search product

    Given I will go to main page
    When I fill in the search input with text "5"
    Then I should see link "Product 5"
    And I should see link "Product 15"
    And I should see link "Product 25"
    And I should see link "Product 35"
    And I should see link "Product 45"
    When I click link "Product 35"
    When I click on ".navbar"
    Then I should not see "Product 15"
    When I click link "Products catalog"
    Then I should not see "Product 35"