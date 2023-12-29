*** Settings ***
Library     SeleniumLibrary
Resource    ../../shared/setup_teardown.robot


*** Variables ***
${INPUT_SEARCH}     id:searchFlowInput
${NAME_FLOW}        João - Manual com logger


*** Test Cases ***
Search and enter in some Flow
    Run in to homolog home page
    To type the Flow name
    Click on the enter key
    Enter in the Flow


*** Keywords ***
To type the Flow name
    Wait Until Element Is Visible    ${INPUT_SEARCH}
    Input Text    ${INPUT_SEARCH}    ${NAME_FLOW}
    Sleep    3s

Click on the enter key
    Press Keys    ${INPUT_SEARCH}    RETURN
    Sleep    3s

Enter in the Flow
    Click Element    tag:strong
    # Como é uma pesquisa específica, não á um outro fluxo com o mesmo nome e nenhuma outra tag strong.
    Sleep    3s
