Feature: When a Visitor Visits the Page Show a List of Articles
    As a visitor,
    When I visit the landing page of the application
    I would like to see a list of all articles
    

    Scenario: View list of articles on the landing page 
        When I visit the site
        Then I should see "A breaking news item"
        And I should see "Some really breaking action"