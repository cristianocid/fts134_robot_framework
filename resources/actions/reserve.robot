*** Settings ***
Documentation   Mapeamento das acoes da pagina reserve.php

*** Keywords ***
Selecionar primeiro Voo
    click button                class = btn.btn-small

Selecionar o voo numero "${num}"
    click button                css = tr:nth-child(${num}) .btn

Conferir o destino da semana
    click link                  link = destination of the week!