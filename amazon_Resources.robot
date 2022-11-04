*** Settings ***
Library    SeleniumLibrary
Resource    amazon_Testes.robot

*** Variables ***
${URL}         https://amazon.com.br/
${BROWSER}     chrome
  

*** Keywords ***
Abrir o navegador
    Open Browser     ${URL}    ${BROWSER}
    Set Browser Implicit Wait       30
    Maximize Browser Window


acessar a home page do site
    Wait Until Element Is Visible            xpath://input[contains(@type,'submit')]

entrar campo de pesquisa e digitar
     Click Element                       xpath://input[contains(@type,'text')]
     Input Text                          xpath://input[contains(@type,'text')]    Volante Xbox series S
     Click Button                        xpath://input[contains(@type,'submit')]                

abrir produto e adicionar ao carrinho
    Click Element                        xpath://img[@data-image-index='4']                        
Adicionar o produto "volante Xbox Series S" no carrinho 
    Click Button                         xpath://input[@value='Adicionar ao carrinho']
Verificar se o produto "Volante Xbox Series S" foi adicionado com sucesso
    Wait Until Element Is Visible        xpath://a[@href='/gp/cart/view.html?ref_=sw_gtc']
    Click Element                        xpath://a[@href='/gp/cart/view.html?ref_=sw_gtc']
#Remover o produto "Volante Xbox Series S" do carrinho 
#    Wait Until Element Is Visible         xpath://h1[contains(.,'Carrinho de compras')]
 #   Click Button                          xpath://input[contains(@name,'submit.delete.Ccec4dbe4-806d-4c95-badf-21190a5b3ab4')]

#Verificar se o carrinho fica vazio
 #   Wait Until Element Is Visible          xpath://h1[@class='a-spacing-mini a-spacing-top-base']

Fechar o navegador
    Close Browser

