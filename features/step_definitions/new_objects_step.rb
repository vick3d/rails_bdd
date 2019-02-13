


Given("the following articles exists in our database") do |table|
    table.hashes.each do |article|
            Article.create!(article)
    end        
  end
  
  Then("I should see Learning Rails {int}") do |int|
    pending # Write code here that turns the phrase above into concrete actions
  end
  