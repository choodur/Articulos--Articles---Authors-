Feature: Edit an Author
  In order to have up to date information about the authors in the app
  As an admin
  I want to update an author's information in the database

  Scenario: Successfully edit an author's profile
    Given authors exist
    When I follow "Timony, Test"
      And I follow "Edit"
      And I fill in "First name" with "Best"
      And I press "Update Author"
    Then I should see "Timony, Best"
    
  Scenario: I left the First name blank while editing an author's profile
    Given authors exist
    When I follow "Timony, Test"
      And I follow "Edit"
      And I fill in "First name" with ""
      And I press "Update Author"
    Then I should see "First name can't be blank"
    
  Scenario: I left the Last name blank while editing an author's profile
    Given authors exist
    When I follow "Timony, Test"
      And I follow "Edit"
      And I fill in "Last name" with ""
      And I press "Update Author"
    Then I should see "Last name can't be blank"

  Scenario: I left both the First name and Last name blank while editing an author's profile
    Given authors exist
    When I follow "Timony, Test"
      And I follow "Edit"
      And I fill in "First name" with ""
      And I fill in "Last name" with ""
      And I press "Update Author"
    Then I should see "2 errors were encountered"
      And I should see "First name can't be blank. Last Name can't be blank."
    
  
