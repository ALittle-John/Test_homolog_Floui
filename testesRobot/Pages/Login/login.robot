*** Settings ***
Library         SeleniumLibrary
Resource        ../../shared/setup_teardown.robot
Library         ../../python/Utils.py

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
    ${EMAIL}    Get Var From Env File    EMAIL
    ${PASSWORD}    Get Var From Env File    SENHA
    Input Text    ${CAMPO_EMAIL}    ${EMAIL}
    Input Password    ${CAMPO_SENHA}    ${PASSWORD}

Click on Enter button
    Click Button    id:submitButton
