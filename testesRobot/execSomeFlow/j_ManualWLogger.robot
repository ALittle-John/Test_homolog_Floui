*** Settings ***
Library     SeleniumLibrary
Resource    ../../testesRobot/shared/setup_teardown.robot
Library     ../../testesRobot/python/Utils.py


*** Variables ***
${Node_ID}      xg64mxa4f


*** Test Cases ***
Exec João - Manual com logger
    Run in to homolog home page
    Set Global Name Flow    João - Manual com logger
    Structure to enter in some specific flow
    Open the live debugger
    Exec the flow
    Show the details    ${Node_ID}


*** Keywords ***
Open the live debugger
    Wait Until Element Is Visible    id:toggleDebuggerButton
    Click Button    id:toggleDebuggerButton
    Sleep    2s

Exec the flow
    Click Button    id:executeButton

Show the details
    [Arguments]    ${log_id}    ${index}=0

    ${x_path_index}    Evaluate    ${index} + ${1}
    ${log_locator}    Set Variable
    ...    xpath=(//li[@data-node-uid="${log_id}"])[${x_path_index}]//div[@class="log-message"]

    Wait Until Element Is Visible    ${log_locator}

    ${copy_log_locator}    Set Variable    ${log_locator}//a[contains(@class, "copy")]
    Click Element    ${copy_log_locator}

    ${log}    Get From Clipboard

    RETURN    ${log}
