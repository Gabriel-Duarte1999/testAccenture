*** Settings ***
Resource    ../main.robot
Library    XML

*** Keywords ***

Acessa a tela de formulários
    Click Element    //*[@id="app"]/div/div/div[2]/div/div[2]
    Sleep    2s

Clica em Practice Form
    Click Element    //*[@id="app"]/div/div/div/div[1]/div/div/div[2]/div/ul
    Sleep    2s

Preenche o nome e sobrenome aleatoriamente
    ${nomeAleatorio}    FakerLibrary.Random Letters
    ${sobrenomeAleatorio}    FakerLibrary.Random Letters
    
    Input Text    //*[@id="firstName"]    ${nomeAleatorio}
    Input Text    //*[@id="lastName"]    ${sobrenomeAleatorio}
    Sleep    2s

Preenche o e-mail aleatoriamente
    ${emailAleatorio}    Email
    Input Text    //*[@id="userEmail"]    ${emailAleatorio}
    Sleep    2s

Escolhe um gênero aleatoriamente
    ${options} =    Create List    //*[@id="genterWrapper"]/div[2]/div[1]    //*[@id="genterWrapper"]/div[2]/div[2]    //*[@id="genterWrapper"]/div[2]/div[3]
    ${list_length}=  Get Length   ${options}
    ${random_index}=   Evaluate  random.randint(0, ${list_length}-1)  modules=random
    ${random_option} =   Get From List  ${options}  ${random_index}
    
    Click Element    ${random_option}
    Sleep    2s
