*** Settings ***
Resource    ../main.robot
Library    XML

*** Keywords ***

Acessa a tela de Widgets
    Click Element    //*[@id="app"]/div/div/div[2]/div/div[4]/div/div[3]
    Sleep    2s

Acessa o menu de Barra de progresso
    Click Element    //ul[@class='menu-list']/li//span[text()='Progress Bar']/ancestor::li
    Sleep    2s

Clica na barra de progresso e para antes dos 25% e checa se parou abaixo
    Click Element    //*[@id="startStopButton"]
    Sleep    2s
    Click Element    //*[@id="startStopButton"]
    Sleep    4s
    ${progress_value}=  Get Element Attribute  xpath=//div[@role='progressbar']  aria-valuenow
    Log  Current Progress: ${progress_value}
    Should Be True  ${progress_value} < 25
    Sleep    2s
    Click Element    //*[@id="startStopButton"]
    Sleep    10s
    Click Element    //*[@id="resetButton"]
    Sleep    3s
    
