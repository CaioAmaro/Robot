*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Cenário 1: Abrir página
    Dado usuario que acessa a pagina 
    E informo o login e senha no sistema
    E clico no botao para acessar o sistema
    E Desejo incluir produtos no carrinho
    E Abra o Carrinho
    E Faca Checkout
    E Informa os dados par entrega
    E finaliza a Compra

*** Keywords ***
Dado usuario que acessa a pagina
    Open Browser    https://www.saucedemo.com/    firefox

E informo o login e senha no sistema
    Input Text     id:user-name       standard_user
    Input Text     id:password        secret_sauce

E clico no botao para acessar o sistema
    Click Button    id:login-button

E Desejo incluir produtos no carrinho
    Click Button    id:add-to-cart-sauce-labs-backpack
    Click Button    id:add-to-cart-sauce-labs-bike-light
    Click Button    id:add-to-cart-sauce-labs-bolt-t-shirt

E Abra o Carrinho
    Click Element   id:shopping_cart_container

E Faca Checkout
    Click Button    id:checkout
E Informa os dados par entrega
    Input Text    id:first-name   Caio
    Input Text    id:last-name    Amaro
    Input Text    id:postal-code   12345

E finaliza a Compra
    Click Button  id:continue
    Click Button  id:finish
