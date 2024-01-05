*** Settings ***
Library     SeleniumLibrary
Library     ../../testesRobot/python/Utils.py


*** Variables ***
${LINK}                 https://app.homolog.floui.io/login
${NAME_FLOW_g}          ${EMPTY}
${SEARCH_FLOW}          id:searchFlowInput
${DEBUGGER_BUTTON}      id:toggleDebuggerButton


*** Keywords ***
Open browser and search the homolog website    # teste para o login
    Open Browser    ${LINK}    browser=Chrome
    Maximize Browser Window

# Sim eu poderia colocar os 2 juntos, mas no momento de testar separado preciso destas keywords também separadas.

Commun login
    ${EMAIL}    Get Var From Env File    EMAIL
    ${PASSWORD}    Get Var From Env File    SENHA
    Open browser and search the homolog website
    Input Text    id:emailInput    ${EMAIL}
    Input Password    id:passwordInput    ${PASSWORD}
    Click Button    id:submitButton
    Sleep    5s

Access workspace
    Click Element    id:workspaceNavbarButton
    Wait Until Element Is Visible    css:button.accessWorkspace
    Click Element    css:button.accessWorkspace

Run in to workspace
    Commun login
    Access workspace

Set Global Name Flow
    [Arguments]    ${value}    # Esta linha define que a keyword aceita um argumento chamado ${value}.
    Set Global Variable    ${NAME_FLOW_g}    ${value}
    # A keyword interna do Robot Framework chamada Set Global Variable é usada para
    # atribuir um valor à variável global ${NAME_FLOW_g}. O ${value} passado como argumento é usado para definir o novo valor da variável.

Structure to enter in some specific flow
    Wait Until Element Is Visible    ${SEARCH_FLOW}
    Input Text    ${SEARCH_FLOW}    ${NAME_FLOW_g}
    Sleep    3s
    Press Keys    ${SEARCH_FLOW}    RETURN
    Sleep    3s
    Click Element    tag:strong
    Sleep    3s

Exec some specific Flow
    Wait Until Element Is Visible    ${DEBUGGER_BUTTON}
    Click Button    ${DEBUGGER_BUTTON}
    Click Button    id:executeButton
    Sleep    5s
