*** Settings ***
Library    SeleniumLibrary
Variables   ../Resources/Demoblaze_locators.yaml

*** Variables ***
${DEMOBLAZE_URL}        https://www.saucedemo.com/
${BROWSER}              gc

*** Keywords ***
Open Browser With Google Chrome
    Open Browser    url=${DEMOBLAZE_URL}     browser=${BROWSER}
    Maximize Browser Window

Input Data Standar User Login
    Input Text    ${UserName}    standard_user
    Input Text    ${Password}    secret_sauce

Input Data locked Out User Login
    Input Text    ${UserName}    locked_out_user
    Input Text    ${Password}    secret_sauce

Input Data Problem User Login
    Input Text    ${UserName}    problem_user
    Input Text    ${Password}    secret_sauce

Input Data Performance Glitch User Login
    Input Text    ${UserName}    performance_glitch_user
    Input Text    ${Password}    secret_sauce

Input Wrong Username Login
    Input Text    ${UserName}    standard_use
    Input Text    ${Password}    secret_sauce

Input Wrong Password Login
    Input Text    ${UserName}    standard_user
    Input Text    ${Password}    secret_sauc
Click Login Button
    Click Element    ${TombolLoginHomePage}


Click Burger Menu
    Click Element    ${BurgerMenu}
Click Logout
    Wait Until Element Is Visible    ${LogoutButton}
    Click Element                    ${LogoutButton}

Error Should be visible
    Element Should Contain    //*[@id="login_button_container"]/div/form/div[3]/h3        Epic sadface: Sorry, this user has been locked out.

Error Login Should be visible
    Element Should Contain    //*[@id="login_button_container"]/div/form/div[3]/h3        Epic sadface: Username and password do not match any user in this service

Close Google Chrome Browser
    Close Browser