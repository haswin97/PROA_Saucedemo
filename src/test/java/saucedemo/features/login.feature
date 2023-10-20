Feature: Login Page Sauce Demo Website

  Scenario Outline: Success Login
    Given Sauce demo login page
    When Input in field username "<username>"
    And Input in field password "<password>"
    And Click login button
    Then User in products page
    And Close the page
    Examples:
      | username      | password    |
      | standard_user | secret_sauce|


  Scenario Outline: Failed Login
    Given Sauce demo login page
    When Input in field username "<username>"
    And Input in field password "<password>"
    And Click login button
    Then User get error message
    And Close the page
    Examples:
      | username    | password    |
      | expert_user | secret_sauce|