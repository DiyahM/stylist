Feature: User can vote on answers
  As a user
  I want to vote up or down an answer
  To help the asker chose the right answer
  
  As a user
  I only want logged in users to vote up answers
  So I know visitors are not skewing the results

  As a user
  I want a user votes to be limited for a question
  So I know the results are not skewed

  Background:
    Given I am logged in
    Given I am viewing question "Does this match with my dress?" with a reply "no"

  @pending
  Scenario: User votes up an answer
    When I click the vote up button for reply "no"
    Then reply "no" should have "1" points

  @pending
  Scenario: Users votes are limited to 3 per question
    When I cleck the vote up button for reply "no" "4" times
    Then reply "no" should have "3" points

  Scenario: Only logged in users can vote on answers
    Given I am not already logged in
    When I click the "Show" button for question "Does this match with my dress?"
    Then I should see "login to vote"
