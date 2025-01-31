*** Settings ***
Resource    ../main.robot
Test Setup    Abrir o site demoqa
Test Teardown    Fechar navegador

*** Test Cases ***

Acessando a tela e ordenando em ordem decrescente os números
    Acessa a tela de Interações
    Acessa o menu de Sortables
    Ordenando de forma decrescente via Drag and Drop os elementos