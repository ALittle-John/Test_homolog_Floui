*** Settings ***
Library     SeleniumLibrary
Resource    ../../testesRobot/shared/setup_teardown.robot


*** Test Cases ***
Exec João - Manual com logger
    Run in to homolog home page
    Set Global Name Flow    João - Manual com logger
    Structure to enter in some specific flow
    Open the live debugger
    Exec the flow
    Show the details


*** Keywords ***
Open the live debugger
    Wait Until Element Is Visible    id:toggleDebuggerButton
    Click Button    id:toggleDebuggerButton
    Sleep    2s

Exec the flow
    Click Button    id:executeButton

Show the details
    Click Element    //*[@id="debugger-logs"]/div/ol/li[2]/div[2]/a[2]
    Sleep    2s
