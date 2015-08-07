Feature: Catalog

  In order to see catalog
  A user
  Should go to main page

  Scenario: Go to main page

    Given I will go to main page
    Then I should see link "Products catalog"

  Scenario: See at least one product on main page

    Given I will go to main page
    Then I should see link "Product 10"
    Then I should see "Best product 10 for everyone!"
    And I should see "10.99 USD"
