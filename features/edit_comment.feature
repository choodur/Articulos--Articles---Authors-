@javascript

Feature: Edit a Comment
  In order to make sure the comments are relevant to the article
  As a user
  I want to edit any comments I have made

  Scenario: Successfully edit a comment
    Given that articles already exist
      And I am on the articles page
      And the article already has comment/s
    When I follow "Titulos"
      And I follow "edit-comment-3"
      And I fill in the following:
        | Email | test@abc.com     |
        | Body  | .....empty.....  |
      And I press "Update Comment"
    Then I should see ".....empty....."

  Scenario: I left the email empty while editing a comment
    Given that articles already exist
      And I am on the articles page
      And the article already has comment/s
    When I follow "Titulos"
      And I follow "edit-comment-2"
      And I fill in the following:
        | Email |                  |
        | Body  | .....empty.....  |
      And I press "Update Comment"
    Then I should see "Email can't be blank."
  
  Scenario: I left the body empty while editing a comment
    Given that articles already exist
      And I am on the articles page
      And the article already has comment/s
    When I follow "Titulos"
      And I follow "edit-comment-1"
      And I fill in the following:
        | Email |  test@abc.com |
        | Body  |               |
      And I press "Update Comment"
    Then I should see "Body can't be blank."
    
  Scenario: I inputted an invalid email while editing a comment
    Given that articles already exist
      And I am on the articles page
      And the article already has comment/s
    When I follow "Titulos"
      And I follow "edit-comment-1"
      And I fill in the following:
        | Email |  test@test                |
        | Body  |  ...there be comments...  |
      And I press "Update Comment"
    Then I should see "Email is invalid."
 
  Scenario: I left both the email and body empty while editing a comment
    Given that articles already exist
      And I am on the articles page
      And the article already has comment/s
    When I follow "Titulos"
      And I follow "edit-comment-3"
      And I fill in the following:
        | Email |  |
        | Body  |  |
      And I press "Update Comment"
    Then I should see "Email can't be blank. Body I can't be blank."
  
  Scenario: I inputted an invalid email and left the body empty while editing a comment
    Given that articles already exist
      And I am on the articles page
      And the article already has comment/s
    When I follow "Titulos"
      And I follow "edit-comment-1"
      And I fill in the following:
        | Email |  test@test  |
        | Body  |             |
      And I press "Update Comment"
    Then I should see "Email is invalid. Body can't be blank."
