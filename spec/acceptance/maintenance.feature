Feature: Provide a simple page to info user that the site under maintenance

  Background:
    Given The site is under maintenance

  @interface
  Scenario: Display maintenance information
    When I visit the main page
    Then I am redirected to the maintenance page
     And I see the maintenance message
    When I visit any page
    Then I am redirected to the maintenance page
     And I see the maintenance message
