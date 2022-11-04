*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${URL}                https://amazon.com.br/
${BROWSER}            chrome

*** Test Cases ***


*** Keywords ***
acessar home page do site Amazon.com.br
    Open Browser    ${URL}    ${BROWSER}
    Set Browser Implicit Wait    30
    Maximize Browser Window
    Wait Until Element Is Visible    xpath://span[@class='hm-icon-label']

#digitar o nome de produto "tonalizante raposinha" no campo de pesquisa
    #Click Element        xpath://input[contains(@type,'text')]
    #Input Text           xpath://input[contains(@type,'text')]        tonalizante raposinha
# clicar no botão de pesquisa
    #Click Button         xpath://input[contains(@type,'submit')] 
# verificar o resultado da pesquisa se está listando o produto pesquisado

fechar Browser
    Close Browser