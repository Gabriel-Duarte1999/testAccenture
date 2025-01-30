*** Settings ***
Resource    ../main.robot

*** Keywords ***

Abrir o site demoqa
    Open Browser                        url=${site}    browser=Chrome
    Maximize Browser Window
    Sleep    3s

Fechar navegador
    Close Browser