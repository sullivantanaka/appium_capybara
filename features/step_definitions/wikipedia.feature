Feature: Busca de artigos na Wikipedia

   Como um visitante da Wikipedia
   Eu quero buscar artigos no idioma desejado
   E acessar os artigos encontrados

Scenario: Busca simples
Given Eu acesso a homepage
When Eu preencho o campo de busca com "Cucumber"
And Eu clico no botao Buscar
Then Eu vejo os resultados da busca desejada