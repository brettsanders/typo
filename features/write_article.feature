Feature: Write Articles
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add articles to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully write articles
    Given I am on the new article page
    When I fill in "article_title" with "Foobar"
    And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    And I press "Publish"
    Then I should be on the admin content page
    When I go to the home page
    Then I should see "Foobar"
    When I follow "Foobar"
    Then I should see "Lorem Ipsum"

  # Scenario: A non-admin cannot merge articles
  #   Given I am not an admin
  #   Then I cannot log into the admin panel

  # Scenario: New article contains text of both merged articles

  # Scenario: Merged article has one author

  # Scenario: New article contains comments of both merged articles

  # Scenario: Title of new article from one article

  # Scenario: Form field contains id #merge_with for autograder