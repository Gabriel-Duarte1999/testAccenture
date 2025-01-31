*** Settings ***
Resource    ../main.robot
Test Setup    Abrir o site demoqa
Test Teardown    Fechar navegador

*** Test Cases ***

Acesssando a tela criando, editando e excluindo o registro
    Acessar a tela de Elements
    Clica em Web Tables
    Cria um novo Registro
    Edita o registro criado
    Exclui o registro criado