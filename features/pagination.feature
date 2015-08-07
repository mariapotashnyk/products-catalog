Feature: Sort products

  In order to navigate by pages
  A user
  Should click on links in pagination widget

  Scenario: Navigate using pagination

    Given I will go to main page
    Then I should see link "Product 0"
    When I go to page "3"
    Then I should see link "Product 59"
    When I go to page "5"
    Then I should see link "Product 99"
    When I go to page "first"
    Then I should see link "Product 0"
    When I go to page "next"
    Then I should see link "Product 39"
    When I go to page "last"
    Then I should see link "Product 99"
    When I go to page "prev"
    Then I should see link "Product 79"

  Scenario: Angular must remember and restore page when go to product page and then back

    Given I will go to main page
    When I go to page "3"
    And I click link "Product 59"
    Then I should see "Product 59"
    And I should not see "Product 58"
    When I go back
    Then I should see link "Product 59"
    Then I should see link "Product 58"