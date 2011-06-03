Feature: Add an Article
  In order have a list of articles
  As an admin
  I want to add an article to the app
 
  Scenario: Successful addition of article
    Given that authors already exist
      And I am on the articles page
    When I follow "Add new article"
      And I select "Timony, Test" from "article_author_id"
      And I fill in the following:
        | Title | Titulo              |
        | Body  | Loremus Ipsumus...  |
      And I select "Draft" from "Status"
      And I press "Create Article"
    Then I should see "Titulo Status: draft"
   
  Scenario: Successful addition of article with status as posted
    Given that authors already exist 
      And I am on the articles page
    When I follow "Add new article"
      And I select "Timony, Test" from "article_author_id"
      And I fill in the following:
        | Title | Titulo              |
        | Body  | Loremus Ipsumus...  |
      And I select "Posted" from "Status"
      And I press "Create Article"
    Then I should see "Titulo Status: posted Date Posted:"
  
  Scenario: I forgot to fill in an article's title
    Given that authors already exist
      And I am on the articles page
    When I follow "Add new article"
      And I select "Timony, Test" from "article_author_id"
      And I fill in the following:
        | Title |                     |
        | Body  | Loremus Ipsumus...  |
      And I press "Create Article"
    Then I should see "Title can't be blank"Body can't be blank
   
  Scenario: I forgot to fill in an article's body
    Given that authors already exist
      And I am on the articles page
    When I follow "Add new article"
      And I select "Timony, Test" from "article_author_id"
      And I fill in the following:
        | Title | Titulos |
        | Body  |         |
      And I press "Create Article"
    Then I should see "Body can't be blank"
    
  Scenario: I forgot to fill in both an article's title and body
    Given that authors already exist
      And I am on the articles page
    When I follow "Add new article"
      And I select "Timony, Test" from "article_author_id"
      And I fill in the following:
        | Title | |
        | Body  | |
      And I press "Create Article"
    Then I should see "2 errors prohibited this article from being saved"
