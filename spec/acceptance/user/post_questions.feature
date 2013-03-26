Feature: User posts questions
  
  As a user
  I want to post a question
  So that I can have others answer it

  @pending
  Scenario: Post a question
    Given I already have an account
    When I visit '/'
    And I click the 'login' link
    And I log in via facebook 
    And I click the 'Ask a style question' button
    And I create a question titled 'Where can I find boots in London'
    And I click the 'Create Question' button
    Then I should see my question 'Where can I find boots in London'
    And I should see my image posted with my question

  @pending
  Scenario: Post a question with tags
    When I post question 'Does this match' with tag 'dots' and 'stripes'
    Then I should see my tags 'dots' and 'stripes' posted with my question
