
Feature: Create/Edit Categories
  As a blog administrator
  In order to properly organize articles
  I want to be able to create and edit categories

Background: categories to be edited and created

  Scenario: Admin should have ability to create categories
    Given the blog is set up
    And I am logged into the admin panel
    And I follow "Categories"
    And I fill in "category_name" with "Politics"
    And I fill in "category_keywords" with "Election President"
    And I fill in "category_description" with "Article on our election"
    And I press "Save"
    Then I should see "Category was successfully saved"

  Scenario: Admin should have ability to edit categories
    Given the blog is set up
    And I am logged into the admin panel
    And I follow "Categories"
    And I follow "General"
    And I fill in "category_name" with "New General"
    And I fill in "category_keywords" with "gen"
    And I fill in "category_description" with "New general articles"
    And I press "Save"
    Then I should see "Category was successfully saved"
