*** Settings ***
Resource    ../main.robot
Test Setup    Abrir o site demoqa
Test Teardown    Fechar navegador

*** Test Cases ***

Acessa o menu de janelas, abre uma nova janela, valida o conteúdo dela e em seguida Fechar
    Acessa a tela Alerts, Frames and Windows
    Acessa o menu Browser Windows
    Valida a nova janela    $expected_text
    Sleep    10s
    Trata a nova janela    $original_handles