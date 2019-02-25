


  Given("the following articles exists in our database") do |table|
    table.hashes.each do |article|
            Article.create!(article)
    end        
  end 


  Given("I visit the {string} page") do |site|
    case site
    when "landing"
      visit root_path
    when "Article"
      visit articles_path
    else
      return false
    end
  end
  
  When("I click {string} link") do |link|
    case link
    when "New Article"
      visit new_article_path
    else
      return false
    end   
    end
  
  When("I fill in {string} with {string}") do |field, value|
    fill_in field, with: value
  end
  
  When("I click {string} button") do |button|
    click_button button  
  end
  

  
  
  