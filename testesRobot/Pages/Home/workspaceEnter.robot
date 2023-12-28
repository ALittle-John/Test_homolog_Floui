*** Settings ***
Library     SeleniumLibrary
Resource    ../../shared/setup_teardown.robot


*** Test Cases ***
Enter in the Workspace
    Commun login
    Click on Workspace
    Click on Button access

    Sleep    5s


*** Keywords ***
Click on Workspace
    Click Element    id:workspaceNavbarButton

Click on Button access
    Wait Until Element Is Visible    css:button.accessWorkspace
    Click Element    css:button.accessWorkspace
