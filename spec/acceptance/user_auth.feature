Feature: Provide a authentication service to user so that they can login to the site and logout

  Background:
    Given There are the following users:
      | Email           | Name      | Password |
      | jack@2alien.com | Jack Q    | abcd1234 |
      | allul@gmail.com | Allul Liu | a1234bcd |
      | paul@gmail.com  | Paul Qiu  | pppw23q  |

  @interface
  Scenario: User login success
    Given I am a valid user
      And I am not logged in
     When I go to the login page
      And I sign in
     Then I should be signed in
     When I return next time
     Then I should be already signed in
