When("I visit the site") do
    visit "/"
  end
  
  Then("I should see {string}") do |content|
    expect(page).to have_content content
  end