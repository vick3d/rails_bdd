Feature: Visitor can comment on article

        As a Visitor
        In order to express my opinions
        I would like to make comments on articles


        Background: 
            Given the following articles exists in our database
            | title                 | content                           |
            | A breaking news item  | Some really breaking action       |
            | Learning Rails 5      | Build awesome rails applications  | 
            And I am on the "Articles" page

        Scenario: Visitor can add comment
            When I click on "Show" for "A breaking news item"
            And fill in "Commenter" with "Viktor"
            And fill in "Body" with "This doesn't feel good"
            And I click on "Create comment"
            Then I should see "a comment"
        