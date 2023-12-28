*** Settings ***
Library         SeleniumLibrary
Resource        ../../shared/setup_teardown.robot

Test Setup      Open browser and search the homolog website


*** Variables ***
${CAMPO_EMAIL}      id:emailInput
${CAMPO_SENHA}      id:passwordInput


*** Test Cases ***
Do the login
    Complete the inputs
    Click on Enter button

    Sleep    5s


*** Keywords ***
Complete the inputs
    Input Text    ${CAMPO_EMAIL}    # email
    Input Password    ${CAMPO_SENHA}    # senha

Click on Enter button
    Click Button    id:submitButton
