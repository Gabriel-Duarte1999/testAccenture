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
    Preenche telefone aleatório
    Seleciona data do calendário
    Escolhe um hobbie aleatoriamente
    Faz o upload do arquivo
    Preenche um endereço aleatoriamente
    Preenche o Estado
    Preenche a Cidade
    Submete o formulário
    Valida se um popup foi exibido
    #não foi possível fechar o popup por conta dde um modal que sobe junto e não permite clicar nos elementos abaixo