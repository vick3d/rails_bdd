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
            And I click on "Show" in "A breaking news item"

        Scenario: Visitor can add comment
            Given I fill in "Commenter" with "Viktor"
            And I fill in "Email" with "user@gmail.com"
            And I fill in "Body" with "This doesn't feel good"
            And I click "Create Comment" button
            Then I should see "Viktor"
            And I should see "This doesn't feel good"
            And I should see "user@gmail.com"

        Scenario: Visitor adds comment without email
            Given I fill in "Commenter" with "Viktor"
            And I fill in "Body" with "This doesn't feel good"
            And I click "Create Comment" button
            Then I should see "Viktor"
            And I should see "This doesn't feel good"


        Scenario: Visitor adds comment with badly formatted email
            Given I fill in "Commenter" with "Viktor"
            And I fill in "Email" with "user@gmail"
            And I fill in "Body" with "This doesn't feel good"
            And I click "Create Comment" button
            And I should see "Email adress is not valid"

        
        