@javascript
Feature: Edit an Article
  In order to have up to date information about the articles in the app
  As an admin
  I want to update an article's information in the database

  Scenario: Successfully edit an article
    Given that articles already exist
      And I am on the articles page
    When I follow "Titulos"
      And I follow "Edit"
      And I fill in the following:
        | Title | Titula          |
        | Body  | .....empty....  |
      And I press "Update Article"
    Then I should see "Titula"
     
  Scenario: I left the title empty while editing an article
    Given that articles already exist
      And I am on the articles page
    When I follow "Titulos"
      And I follow "Edit"
      And I fill in the following:
        | Title |                 |
        | Body  | .....empty....  |
      And I press "Update Article"
    Then I should see "Title can't be blank"
    
  Scenario: I left the body of the article empty while editing
    Given that articles already exist
      And I am on the articles page
    When I follow "Titulos"
      And I follow "Edit"
      And I fill in the following:
        | Title |  Le Titulos |
        | Body  |             |
      And I press "Update Article"
    Then I should see "Body can't be blank"
         
  Scenario: I left both the title and the body of the article empty while editing
    Given that articles already exist
      And I am on the articles page
    When I follow "Titulos"
      And I follow "Edit"
      And I fill in the following:
        | Title | |
        | Body  | |
      And I press "Update Article"
    Then I should see "2 errors prohibited this article from being saved"
