*** Settings ***
Resource    ../main.robot
Library    XML

*** Keywords ***

Acessar a tela de Elements
    Click Element    //*[@id="app"]/div/div/div[2]/div/div[1]/div/div[3]
    Sleep    2s

Clica em Web Tables
    Click Element    //*[@id="item-3"]
    Sleep    3s

Cria um novo Registro
    ${firstName}    FakerLibrary.First Name
    ${lastName}     FakerLibrary.Last Name
    ${email}        FakerLibrary.Email
    ${idade1}       FakerLibrary.Random Digit Not Null
    ${idade2}       FakerLibrary.Random Digit Not Null


    Click Button    //*[@id="addNewRecordButton"]
    Sleep    2s
    Input Text    //*[@id="firstName"]    ${firstName}
    Input Text    //*[@id="lastName"]    ${lastName}
    Sleep    2s
    Input Text    //*[@id="userEmail"]    ${email}
    Sleep    2s
    Input Text    //*[@id="age"]    ${idade1}${idade2}
    Sleep    2s
    Input Text    //*[@id="salary"]    11000
    Sleep    2s
    Input Text    //*[@id="department"]    QA
    Sleep    2s
    Click Element    //*[@id="submit"]
    Sleep    2s

Edita o registro criado
    ${firstName}    FakerLibrary.First Name
    ${lastName}     FakerLibrary.Last Name
    ${email}        FakerLibrary.Email
    ${idade1}       FakerLibrary.Random Digit Not Null
    ${idade2}       FakerLibrary.Random Digit Not Null

    Click Element    //*[@id="edit-record-4"]
    Sleep    2s
    Input Text    //*[@id="firstName"]    ${firstName}
    Input Text    //*[@id="lastName"]    ${lastName}
    Sleep    2s
    Input Text    //*[@id="userEmail"]    ${email}
    Sleep    2s
    Input Text    //*[@id="age"]    ${idade1}${idade2}
    Sleep    2s
    Input Text    //*[@id="salary"]    25000
    Sleep    2s
    Input Text    //*[@id="department"]    Director
    Sleep    2s
    Click Element    //*[@id="submit"]
    Sleep    3s

Exclui o registro criado
    Click Element    //*[@id="delete-record-4"]
    Sleep    3s
    