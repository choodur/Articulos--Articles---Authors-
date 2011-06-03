Feature: Add a Comment to an Article
  In order to get feedback from other users concerning an article
  As a user
  I want to add a comment to an article

  Scenario: Successful addition of comment
    Given that articles already exist
      And I am on the articles page
    When I follow "Titulos"
      And I follow "add a comment"
      And I fill in the following:
        | Email | titulo@titles.com  |
        | Body  | ....tl;dr...       |
      And I press "Create Comment"
    Then I should see "titulo@titles.com ....tl;dr..."
  
  Scenario: I left the email field empty
    Given that articles already exist
      And I am on the articles page
    When I follow "Titulos"
      And I follow "add a comment"
      And I fill in the following:
        | Email |                    |
        | Body  | ....tl;dr...       |
      And I press "Create Comment"
    Then I should see "Email can't be blank."
    
  Scenario: I left the body of the comment empty
    Given that articles already exist
      And I am on the articles page
    When I follow "Titulos"
      And I follow "add a comment"
      And I fill in the following:
        | Email | test@qwerty.com |
        | Body  |                 |
      And I press "Create Comment"
    Then I should see "Body can't be blank."
  
  Scenario: I submitted an invalid email address but filled in the body
    Given that articles already exist
      And I am on the articles page
    When I follow "Titulos"
      And I follow "add a comment"
      And I fill in the following:
        | Email | emailadd?              |
        | Body  | let's see what happens |
      And I press "Create Comment"
    Then I should see "Email is invalid."

  Scenario: I submitted an invalid email address and an empty comment body
    Given that articles already exist
      And I am on the articles page
    When I follow "Titulos"
      And I follow "add a comment"
      And I fill in the following:
        | Email | emailadd? |
        | Body  |           |
      And I press "Create Comment"
    Then I should see "Email is invalid. Body can't be blank."
 
  Scenario: I submitted an empty email and comment body
    Given that articles already exist
      And I am on the articles page
    When I follow "Titulos"
      And I follow "add a comment"
      And I fill in the following:
        | Email | |
        | Body  | |
      And I press "Create Comment"
    Then I should see "Email can't be blank. Body can't be blank."
   
  
