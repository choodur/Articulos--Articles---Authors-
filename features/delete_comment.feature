@javascript

Feature: Delete a comment
  In order to remove unwanted comments for an article
  As a user
  I want to delete a comment

  Scenario: Successfully deletes a comment
    Given that articles already exist
      And I am on the articles page
       And the article already has comment/s
    When I follow "Titulos"
      And I follow "delete-comment-1"
      And I confirm deletion
    Then I should not see "Nice one."
  
  Scenario: Did not continue to delete to comment
    Given that articles already exist
      And I am on the articles page
       And the article already has comment/s
    When I follow "Titulos"
      And I follow "delete-comment-3"
      And I do not confirm deletion
    Then I should still see "Really? I found it reasonable."
