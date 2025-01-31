*** Settings ***
Resource    ../main.robot
Test Setup    Abrir o site demoqa
Test Teardown    Fechar navegador

*** Test Cases ***

Acessando a tela de Widgets e Parando a barra de progresso antes dos 25%
    Acessa a tela de Widgets
    Acessa o menu de Barra de progresso
    Clica na barra de progresso e para antes dos 25% e checa se parou abaixo

