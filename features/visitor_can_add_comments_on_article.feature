Feature: Visitor can comment on article

        As a Visitor
        In order to express my opinions
        I would like to make comments on articles


        Background: 
            Given the following articles exists in our database
            | title                 | content                           |
            | A breaking news item  | Some really breaking action       |
            | Learning Rails 5      | Build awesome rails applications  | 
            And I visit the "Article" page
            Then I should see "A breaking news item"
            And I should see "Learning Rails 5"

        Scenario: Visitor can add comment
            When I click on "Show" in "A breaking news item"
            And I fill in "Commenter" with "Viktor"
            And I fill in "Body" with "This doesn't feel good"
            And I click "Create Comment" button
            Then I should see "Viktor"
            And I should see "This doesn't feel good"
        