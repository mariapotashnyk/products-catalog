Feature: Product

  In order to see product
  A user
  Should go to product page

  Scenario: Go to product page

    Given I will go to main page
    When I click link "Product 17"
    Then I should see "Product 17"
    And I should see "Best product 17 for everyone!"
    And I should see "17.99 USD"
    And I should not see "Product 16"

  @allow-rescue
  Scenario: Go to non-existing product page

    Given I will go to product page with id "non-existing-product-name"
    Then I should see "Sorry, but an error occurred: Not Found"
    And I should not see "404"