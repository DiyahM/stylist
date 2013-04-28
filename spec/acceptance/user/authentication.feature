Feature: User Authentication
  
  Scenario: Create an account
    As a user
    I want a user account
    So that I can have my activity associated to me

    When I visit '/'
    And I click the 'Sign up' link
    And I log in via facebook
    Then I should return to '/users/1/edit'
    Then I should see the 'Sign Out' link
  
  @pending
  Scenario: After login return to origin
    As a user
    I want to return to my origin page after login
    So I can continue from where I left

    Given I am not already logged in
    When I visit '/questions'
    And I click the 'Login' link
    And I log in via facebook
    Then I should return to '/questions'
