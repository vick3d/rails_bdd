Feature: When a Visitor Visits the Page Show a List of Articles
    As a visitor,
    When I visit the landing page of the application
    I would like to see a list of all articles
    

    Scenario: View list of articles on the landing page 
        Given the following articles exists in our database
            | title                 | content                           |
            | A breaking news item  | Some really breaking action       |
            | Learning Rails 5      | Build awesome rails applications  | 
        When I visit the "landing" page
        Then I should see "A breaking news item"
        And I should see "Some really breaking action"
        And I should see "Learning Rails 5"
        And I should see "Build awesome rails applications"