*** Settings ***
Resource    ../main.robot
Resource    ../pages_structure/fill_form_randomly_structure.robot
Test Setup    Abrir o site demoqa
Test Teardown    Fechar navegador

*** Test Cases ***

Escolhendo a opção Forms na página inicial
    Acessa a tela de formulários
    Clica em Practice Form
    Preenche o nome e sobrenome aleatoriamente
    Preenche o e-mail aleatoriamente
    Escolhe um gênero aleatoriamente
