*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Resource    ../../../shared/setup_teardown.robot
Library     ../../../python/Utils.py


*** Test Cases ***
Enter in home page and copy the execition history table
    Commun login
    ${text_table}    Extract the data from history table
    Log To Console    ${text_table}
    Create a file    ${text_table}


*** Keywords ***
Extract the data from history table
    ${table}    Get Text    xpath=//*[@id="app"]/div/div/div/div/div[2]/div/div/div/div[2]/div/div[4]/div/h4
    # Just a test with a text, after I'll do whith my real objective.
    RETURN    ${table}

Create a file
    [Arguments]    ${text_table}
    Create File    path=./tabela.txt    content=${text_table}
