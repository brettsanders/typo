Feature: A non-admin cannot merge articles
  Background:
    Given the blog is set up
    And I am logged into the user panel

  Scenario: A non-admin cannot merge two articles
    Given I am on the new article page
    And I am not an admin
    Then I should see "New article"
    But I should not see the button "Merge With This Article"

