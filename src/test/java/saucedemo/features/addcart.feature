Feature: Add to Cart Sauce Demo Website

  Scenario Outline: Add Product to Cart
    Given Sauce demo login page
    When Input in field username "<username>"
    And Input in field password "<password>"
    And Click login button
    Then User in products page
    And Click one product
    Then User in product page
    And Click add to cart
    And Click cart icon
    Then The product is in cart page
    And Close the page
    Examples:
      | username      | password    |
      | standard_user | secret_sauce|


  Scenario Outline: Remove Product from Cart
    Given Sauce demo login page
    When Input in field username "<username>"
    And Input in field password "<password>"
    And Click login button
    Then User in products page
    And Click one product
    Then User in product page
    And Click add to cart
    And Click cart icon
    Then The product is in cart page
    And Click button remove
#    Then The product is removed from cart page
    And Close the page
    Examples:
      | username      | password    |
      | standard_user | secret_sauce|