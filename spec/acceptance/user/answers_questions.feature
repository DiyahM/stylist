Feature: User answers questions
  As a user
  I want to answer questions
  to help others

  Background:
    Given I am logged in 
    And there is a question titled "Does this match with my dress?"
    And I visit '/questions'

  Scenario: User answers a question
    When I click the "Show" button for question "Does this match with my dress?"
    And I answer with "No. It doesn't match"
    Then I should see my answer "No. It doesn't match"
