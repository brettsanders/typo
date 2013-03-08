Feature: An admin can merge articles
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to merge articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: An admin merge two articles
    Given I am on the new article page
    Then I should see "New article"
    And I should see button "Merge Articles"
    When I fill in "merge_with" with "001"
    And I press "Merge Articles"
    Then I should be on the new article page
    And I should see "Title can't be blank"

# Feature: Merge Articles
#   As a blog admin
#   I want to merge similar articles
#   In order to add value for readers

#   Background:
#     Given the blog is set up
#     And I am logged into the admin panel

  # Scenario: A non-admin cannot merge articles
  #   Given I am on the edit article page

  # Scenario: New article contains text of both merged articles

  # Scenario: Merged article has one author

  # Scenario: New article contains comments of both merged articles

  # Scenario: Title of new article from one article

  # Scenario: Form field contains id #merge_with for autograder
