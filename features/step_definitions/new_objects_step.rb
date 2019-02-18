


  Given("the following articles exists in our database") do |table|
    table.hashes.each do |article|
            Article.create!(article)
    end        
  end 


  Given("I visit the {string} page") do |site|
    case site
    when "landing"
      visit root_path
    else
      return false
    end
  end
  
  When("I click {string} link") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When("I fill in {string} with {string}") do |string, string2|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When("I click {string} button") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  

  
  
  