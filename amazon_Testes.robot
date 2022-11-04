*** Settings ***
Library     SeleniumLibrary 
Resource    amazon_Resources.robot
Resource    amazon_resources2.robot
Documentation    Essa suite teste o site da Amazon.com.br
...              quando faz setup e Teardown precisa chamar uma Keyword para cada
...              pois é o que vai fazer a função práticar a ação
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Variables ***
*** Test Cases ***
Caso de teste 01 - acesso ao menu "busca"
    [Documentation]    Esse teste verifica o menu eletronicos do site da Amazon.com.br
    ...                se precisar de mais documentação e continua escrevendo
    ...                e verifica a categoria computadores e informatica
    [Tags]             MENUS    CATEGORIAS
     acessar a home page do site

     entrar campo de pesquisa e digitar

     abrir produto e adicionar ao carrinho
     
     Adicionar o produto "volante Xbox Series S" no carrinho 
     
     Verificar se o produto "volante Xbox Series S" foi adicionado com sucesso
     
     #Remover o produto "volante Xbox Series S" do carrinho 
     
     #Verificar se o carrinho fica vazio
    
#Caso de teste 02 - Pesquisa de um produto
    #[documentation]    esse teste verifica a busca de um produto
    #[Tags]    BUSCAR_PRODUTOS    LISTA_BUSCA
    #acessar home page do site Amazon.com.br
    # digitar o nome de produto "tonalizante raposinha" no campo de pesquisa
    # clicar no botão de pesquisa
    # verificar o resultado da pesquisa se está listando o produto pesquisado



*** Keywords ***
