Given("Eu acesso a homepage") do
    visit ("http://www.wikipedia.org")
  end
  
  When("Eu preencho o campo de busca com {string}") do |string|
    fill_in 'searchInput', with: string
  end
  
  When("Eu clico no botao Buscar") do
    find(:xpath, "//button[@type='submit']").click
      #click_on 'Go'
    
  end
  
  Then("Eu vejo os resultados da busca desejada") do
    expect(page).to have_content "Cucumber"
  end