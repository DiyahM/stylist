Feature: User posts questions
  
  As a user
  I want to post a question
  So that I can have others answer it

  Scenario: Post a question
    Given I already have an account
    When I visit the homepage
    And I click the 'login' link
    And I log in via facebook 
    And I click the 'Ask a style question' button
    And I create a question titled 'Where can I find boots in London'
    Then I should see my question 'Where can I find boots in London'
    And I should see my image posted with my question

