*** Settings ***
Documentation    Fluxo de compra da T-Shirt
Resource        ../../resources/base_app.robot

Test Setup      Abrir o app
Test Teardown   Fechar o app

*** Test Cases ***
Comprar camiseta preta com estampa de raio
    Selecionar o produto "Sauce Lab Bolt T-Shirt"
    Validar nome do produto, preco e quantidade inicial     ${nome_produto}     ${preco}    ${quantidade_inicial}
    Aumentar a quantidade do produto para 2
    Adicionar o produto no carrinho
    Ir para o carrinho de compras
    Verificar informacoes do produto no carrinho    ${nome_produto}     ${preco_unitario}   ${quantidade}   ${quantidade_items}   ${preco_total}



