*** Settings ***
Resource    ../main.robot
Library    XML

*** Keywords ***

Acessa a tela Alerts, Frames and Windows
    Click Element    //*[@id="app"]/div/div/div[2]/div/div[3]/div/div[3]
    Sleep    2s

Acessa o menu Browser Windows
    ${locator1}=  Set Variable    //ul[@class='menu-list']/li//span[text()='Browser Windows']/ancestor::li
    Wait Until Element Is Visible  ${locator1}   timeout=10s
    Click Element  ${locator1}
    Sleep    3s

Handle New Window And Validate
    [Arguments]   ${expected_text}

    Click Element   //*[@id="windowButton"]
    ${original_handles}=   Get Window Handles
    ${new_window}=  Wait Until Keyword Succeeds   10s   1s     Get New Window Handle     ${original_handles}
    Switch Window   ${new_window}

    Wait Until Element Is Visible   xpath=//*[@id="sampleHeading"]  timeout=10s
    Wait Until Element Contains   xpath=//*[@id="sampleHeading"]    ${expected_text}   timeout=10s
    Element Should Contain     xpath=//*[@id="sampleHeading"]  ${expected_text}

    Switch Window    ${original_handles[0]}


Get New Window Handle
    [Arguments]   ${original_handles}
    ${new_handles}=    Get Window Handles
    ${new_window}=    Remove Duplicates     ${new_handles}
    [Return]    ${new_window[0]}