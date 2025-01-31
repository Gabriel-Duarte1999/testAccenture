*** Settings ***
Resource    ../main.robot
Library    XML

*** Keywords ***

Acessa a tela de Interações
    Click Element    //*[@id="app"]/div/div/div[2]/div/div[5]/div/div[3]
    Sleep    2s

Acessa o menu de Sortables
    ${menu1}=  Set Variable    //ul[@class='menu-list']/li//span[text()='Sortable']/ancestor::li
    Wait Until Element Is Visible    ${menu1}  timeout=10s
    Click Element    ${menu1}
    Sleep    3s

Ordenando de forma decrescente via Drag and Drop os elementos
    Drag And Drop    //*[@id="demo-tabpane-list"]/div/div[1]    //*[@id="demo-tabpane-list"]/div/div[6]
    Sleep    2s
    Click Element    //*[@id="sortableContainer"]/h1
    Sleep    2s
    Drag And Drop    //*[@id="demo-tabpane-list"]/div/div[1]    //*[@id="demo-tabpane-list"]/div/div[5]
    Sleep    2s
    Click Element    //*[@id="sortableContainer"]/h1
    Sleep    2s
    Drag And Drop    //*[@id="demo-tabpane-list"]/div/div[1]    //*[@id="demo-tabpane-list"]/div/div[4]
    Click Element    //*[@id="sortableContainer"]/h1
    Sleep    2s
    Drag And Drop    //*[@id="demo-tabpane-list"]/div/div[1]    //*[@id="demo-tabpane-list"]/div/div[3]
    Click Element    //*[@id="sortableContainer"]/h1
    Sleep    2s
    Drag And Drop    //*[@id="demo-tabpane-list"]/div/div[1]    //*[@id="demo-tabpane-list"]/div/div[2]
    Click Element    //*[@id="sortableContainer"]/h1
    Sleep    4s