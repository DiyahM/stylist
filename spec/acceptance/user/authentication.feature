Feature: User Authentication
  
  Scenario: Create an account
    As a user
    I want a user account
    So that I can see activity related to only me

    When I visit the homepage
    And I click the 'login' link
    And I log in via facebook
    Then I should see the 'Sign Out' link

