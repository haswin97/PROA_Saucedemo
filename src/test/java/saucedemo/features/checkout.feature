Feature: Checkout Product from Cart Sauce Demo Website

  Scenario Outline: Checkout Product with Complete User Information
    Given Sauce demo login page
    When Input in field username "<username>"
    And Input in field password "<password>"
    And Click login button
    Then User in products page
    And Click one product
    And Click add to cart
    And Click cart icon
    Then The product is in cart page
    And Click checkout button
    Then User in information page
    And Input in field firstname "<first_name>"
    And Input in field lastname "<last_name>"
    And Input in field postalcode "<postal_code>"
    And Click continue
    Then User in checkout overview page
    And Click Finish
    Then User in checkout complete page
    And Close the page
    Examples:
      | username      | password    | first_name | last_name | postal_code |
      | standard_user | secret_sauce| smith      | sadboy    | 13210       |


  Scenario Outline: Checkout Product with Missing Postal Code
    Given Sauce demo login page
    When Input in field username "<username>"
    And Input in field password "<password>"
    And Click login button
    Then User in products page
    And Click one product
    And Click add to cart
    And Click cart icon
    Then The product is in cart page
    And Click checkout button
    Then User in information page
    And Input in field firstname "<first_name>"
    And Input in field lastname "<last_name>"
    And Click continue
    Then User get postal error message
    And Close the page
    Examples:
      | username      | password    | first_name | last_name
      | standard_user | secret_sauce| smith      | sadboy
