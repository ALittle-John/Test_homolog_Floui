*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Resource    ../../../shared/setup_teardown.robot


*** Test Cases ***
Enter in home page and copy the history table
    Commun login
    ${text_table}    Extract the data from history table
    Create a file    ${text_table}


*** Keywords ***
Extract the data from history table
    ${table}    Get Text    tag:table
    RETURN    ${table}

Create a file
    [Arguments]    ${text_table}
    Create File    path=./tabela.txt    content=${text_table}
