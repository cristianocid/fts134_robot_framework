*** Settings ***
Documentation    Tela do produto
Library          AppiumLibrary

*** Variables ***
${nome_produto}         Sauce Lab Bolt T-Shirt
${preco}                $ 15.99
${quantidade_inicial}    1

*** Keywords ***
Validar nome do produto, preco e quantidade inicial
    [Arguments]     ${nome_produto}     ${preco}    ${quantidade_inicial}
    Element Should Contain Text    id=com.saucelabs.mydemoapp.android:id/productTV  ${nome_produto}
    Element Should Contain Text    id=com.saucelabs.mydemoapp.android:id/priceTV    ${preco}
    Swipe    490    1978    511    1384
    Element Should Contain Text    id=com.saucelabs.mydemoapp.android:id/noTV       ${quantidade_inicial}

Aumentar a quantidade do produto para 2
    Click Element    accessibility_id=Increase item quantity

Adicionar o produto no carrinho
    Click Element    accessibility_id=Tap to add product to cart