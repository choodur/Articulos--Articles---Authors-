@javascript
Feature: Delete an author
  In order to remove unwanted authors in the app
  As an admin
  I want to delete an author from the database
  
  Scenario: Successfully deletes an author
    Given authors exist
    When I follow "Timony, Test"
      And I follow "Delete"
      And I confirm deletion
    Then I should not see "Timony, Test"
  
  Scenario: Did not continue to delete to author
    Given authors exist
    When I follow "Timony, Test"
      And I follow "Delete"
      And I do not confirm deletion
    Then I should still see "Timony, Test"
