Feature: Add an Author
  In order have a list of authors
  As an admin
  I want to add an author to the app

  
  Scenario: Successful addition of author
    Given I am on the authors page
    When I follow "add a new author"
      And I fill in "First name" with "Hi"
      And I fill in "Last name" with "There"
      And I fill in "Remarks" with "..."
      And I select date "May 29, 1999" from "Birthday"
      And I press "Create Author"
    Then I should see "There, Hi"
    
  Scenario: I forgot to fill the author's first name  
    Given I am on the authors page
    When I follow "add a new author"
      And I fill in "Last name" with "There"
      And I fill in "Remarks" with "..."
      And I press "Create Author"
    Then I should see "First name can't be blank"
    
  Scenario: I forgot to fill in the author's last name  
    Given I am on the authors page
    When I follow "add a new author"
      And I fill in "First name" with "Hi"
      And I fill in "Remarks" with "..."
      And I press "Create Author"
    Then I should see "Last name can't be blank"  
    
  Scenario: I forgot to fill in both the author's first name and last name  
    Given I am on the authors page
    When I follow "add a new author"
      And I fill in the following:
        | First name |              |
        | Last name  |              |
        | Remarks    | ...          |
      And I select date "May 29, 1999" from "Birthday"
      And I press "Create Author"
    Then I should see "2 errors encountered"
