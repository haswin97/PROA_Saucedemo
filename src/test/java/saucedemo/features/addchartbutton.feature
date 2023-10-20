Feature: Add to Cart Button Test in Products Page

  Scenario Outline: Add to Cart Button
    Given Sauce demo login page
    When Input in field username "<username>"
    And Input in field password "<password>"
    And Click login button
    Then User in products page
    And Click add to cart
    Then Button change to remove
    And Close the page
    Examples:
      | username      | password    |
      | standard_user | secret_sauce|


  Scenario Outline: Remove Product Button
    Given Sauce demo login page
    When Input in field username "<username>"
    And Input in field password "<password>"
    And Click login button
    Then User in products page
    And Click add to cart
    Then Button change to remove
    And Click button remove
    Then Button change to add to cart
    And Close the page
    Examples:
      | username      | password    |
      | standard_user | secret_sauce|