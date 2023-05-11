*** Settings ***
Documentation   Mapeamento das acoes da pagina reserve.php

*** Keywords ***
Preencher nome "${nome}"
    input text                      id = inputName  ${nome}

Preencher endereco "${endereco}"
    input text                      id = address  ${endereco}

Preencher cidade "${cidade}"
    input text                      id = city  ${cidade}

Preencher estado "${uf}"
    input text                      id = state  ${uf}

Preencher CEP "${cep}"
    input text                      id = zipCode  ${cep}

Selecionar bandeira "${bandeira}"
    select from list by label       id = cardType   ${bandeira}

Preencher mes de validade do cartao "${mes}"
    input text                      id = creditCardMonth  ${mes}

Preencher nome no cartao "${titular}"
    input text                      id = nameOnCard  ${titular}

Clicar em Lembrar de Mim
    checkbox should be selected     id = rememberMe
