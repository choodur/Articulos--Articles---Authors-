@javascript

Feature: Delete an article
  In order to remove unwanted articles in the app
  As an admin
  I want to delete an article from the database
  
  Scenario: Successfully deletes an article
    Given that articles already exist
      And I am on the articles page
    When I follow "Titulos"
      And I follow "Delete"
      And I confirm deletion
    Then I should not see "Titulos"
  
  Scenario: Did not continue to delete to article
    Given that articles already exist
      And I am on the articles page
    When I follow "Titulos"
      And I follow "Delete"
      And I do not confirm deletion
    Then I should still see "Titulos"
