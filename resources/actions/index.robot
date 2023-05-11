*** Settings ***
Documentation   Mapeamento das acoes da pagina index.php

# DSL = Domain Specific Language
*** Keywords ***
Selecionar origem e destino do voo
    [Arguments]     ${origem}   ${destino}

    select from list by label   id = fromPort   ${origem}
    select from list by label   id = toPort     ${destino}
    click button                class = btn.btn-primary

Clicar em Home
    click link                  link = home

Conferir o destino da semana
    click link                  link = destination of the week!