*** Settings ***
Documentation    Tela do carrinho de compras
Library          AppiumLibrary

*** Variables ***
${nome_produto}         Sauce Lab Bolt T-Shirt
${preco_unitario}       $ 15.99
${quantidade}           10
${quantidade_items}     10 Items
${preco_total}          $ 159.90

*** Keywords ***
Ir para o carrinho de compras
    Click Element   id=com.saucelabs.mydemoapp.android:id/cartTV

Verificar informacoes do produto no carrinho
    [Arguments]     ${nome_produto}     ${preco_unitario}   ${quantidade}   ${quantidade_items}   ${preco_total}
    Element Should Contain Text     id=com.saucelabs.mydemoapp.android:id/productTV    My Cart
    Element Should Contain Text     id=com.saucelabs.mydemoapp.android:id/titleTV       ${nome_produto}
    Element Should Contain Text     id=com.saucelabs.mydemoapp.android:id/priceTV       ${preco_unitario}
    Element Should Contain Text     id=com.saucelabs.mydemoapp.android:id/noTV          ${quantidade}
    Element Should Contain Text     id=com.saucelabs.mydemoapp.android:id/itemsTV       ${quantidade_items}
    Element Should Contain Text     id=com.saucelabs.mydemoapp.android:id/totalPriceTV  ${preco_total}

